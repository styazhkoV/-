# Техническое задание: Модуль «CRM Лиды B2C» (v3.1)

## 1. Описание модуля

Модуль предназначен для автоматизации розничных продаж (B2C) через каналы **Online Shop** и  **Telesales** . Система обеспечивает бесшовную передачу лида между подразделениями, контроль юридической верификации (Биометрия/ЭЦП) и интеграцию с финансовым контуром SAP и биллингом Nexign.

**Технологический стек:**

* **Backend:** Java (Spring Boot), микросервисная архитектура.
* **Frontend:** React (SPA).
* **БД:** PostgreSQL (Схема `client`, все ID — `bigint`).
* **Интеграции:** SAP (ERP), Nexign (Billing), Astrum (Scoring), MinIO (S3).

---

## 2. Статусная модель и разграничение прав

Для управления доступом используется поле `current_department_id` (Telesales = 1, Online Shop = 2).

### 2.1. Логика Handover (Передача лида)

```plantuml
@startsalt
{
  {T
    <b>Событие (Триггер)</b> | <b>Condition (Условие)</b> | <b>Dept ID (До -> После)</b> | <b>Статус Operator ID</b> | <b>Доступ Telesales</b> | <b>Доступ Online Shop</b>
    Выбор метода оплаты | Способ = "Полная стоимость" | 1  ->  2 | Reset + Round Robin* | Read-Only | Full Access
    Контрактное оформление | Скоринг = SUCCESS && Биометрия = SUCCESS | 1  ->  2 | Reset + Round Robin* | Read-Only | Full Access
    Изменение корзины | Сумма увеличилась (в Telesales) | 1  ->  1 | Без изменений | Full Access | No Access
    Отказ на этапе верификации | Статус = CLOSED_LOST | 1  ->  1 | Без изменений | Full Access | No Access
  }
}
@endsalt
```

### Техническое описание логики

Данная таблица описывает поведение микросервиса `sapa-crm-kcell-client` при обработке перехода.

```plantuml
@startuml
title Механизм переключения прав и назначение ответственных

actor "Сотрудник Telesales" as T
actor "Сотрудник Online Shop" as O

rectangle "Frontend" {
    T --> (Редактирование лида) : только если department_id=1
}

rectangle "Keycloak" {
    (Редактирование лида) --> (Проверка токена)
}

rectangle "Система CRM" {
    (Проверка токена) --> (Handover Event) : смена Dept ID
    (Handover Event) --> (Блокировка PATCH) : для Telesales
}

rectangle "Назначение ответственного" {
    (Handover Event) --> (operator_id = null)
    (operator_id = null) --> (Поиск липкого оператора)
    (Поиск липкого оператора) --> O : если найден
    (Поиск липкого оператора) --> (Round Robin) : если не найден
    (Round Robin) --> O : назначение нового оператора
}

rectangle "Исключения" {
    T --> (Read-Only доступ) : просмотр карточки и истории
    O --> (Re-Scoring) : при изменении заказа
}

note right of (Read-Only доступ)
  Telesales может видеть карточку и активности,
  но не изменять корзину, комментарии или статусы.
end note

note right of (Re-Scoring)
  Online Shop инициирует повторный скоринг,
  без возврата лида в Telesales.
end note

@enduml

```

**1. Механизм переключения прав:**

* **Dept ID:** Ключевой переключатель. При значении `1` (Telesales) Frontend разрешает редактирование полей лида только пользователям с соответствующим `department_id` в токене Keycloak.
* **Handover Event:** Смена ID департамента инициирует событие в системе, которое блокирует `PATCH` методы для сотрудников первого уровня.

**2. Управление ответственными (*Round Robin):**

* При переходе в Online Shop текущий `operator_id` (сотрудник Telesales) заменяется на `null`.
* Система выполняет поиск «Липкого оператора» (Sticky Lead). Если в департаменте Online Shop есть сотрудник, ранее работавший с этим клиентом, лид назначается на него.
* Если «липкий» оператор не найден или недоступен, запускается стандартный алгоритм **Round Robin** среди доступных (Online) сотрудников нового департамента.

**3. Исключения:**

* **Read-Only:** Сотрудник Telesales сохраняет возможность просмотра карточки и истории активностей для отслеживания конверсии, но не может изменять состав корзины, комментарии или статусы.
* **Re-Scoring:** Если лид уже передан в Online Shop, но клиент решил изменить состав заказа, что привело к увеличению суммы, оператор Online Shop обязан инициировать процедуру скоринга повторно, не возвращая лид в Telesales.

### 2.2. Основные статусы лида

1. **NEW:** Новый лид, ожидает распределения.
2. **IN_PROGRESS:** В работе у оператора.
3. **VERIFICATION:** Прохождение биометрии/скоринга (ссылка активна  **15 минут** ).
4. **AWAITING_PAYMENT:** Ожидание предоплаты в Nexign (лимит  **72 часа** ).
5. **AWAITING_PICKUP:** Наряд передан в SAP, ожидание выдачи в Store.
6. **CLOSED_WON:** Сделка завершена (товар выдан/доставлен).
7. **CLOSED_LOST:** Отказ (с указанием причины).

---

## 3. Сквозной маппинг полей (БД)

| **Элемент UI**  | **Таблица** | **Поле**        | **Тип** | **Логика / Ограничение**           |
| ---------------------------- | ------------------------ | ------------------------- | ---------------- | --------------------------------------------------------- |
| **Системные** | `leads_b2c`            | `current_department_id` | `bigint`       | Владелец этапа (1 или 2)                  |
|                              | `leads_b2c`            | `operator_id`           | `bigint`       | Текущий ответственный                 |
|                              | `leads_b2c`            | `assigned_at`           | `timestamp`    | Время закрепления за опер.          |
| **Профиль**     | `clients`              | `bin_iin`               | `varchar(12)`  | Мастер-ключ клиента                      |
|                              | `clients_b2c`          | `last_name`             | `varchar`      | Персональные данные                     |
|                              | `clients_b2c`          | `phone`                 | `varchar`      | Маска +77XXXXXXXXX                                   |
| **Сделка**       | `lead_items`           | `product_id`            | `bigint`       | Справочник Nexign                               |
|                              | `leads_b2c`            | `total_amount`          | `numeric`      | Пересчет при изменении корзины |
|                              | `leads_b2c`            | `is_sla_breached`       | `boolean`      | Флаг нарушения (15 мин)                   |

---

## 4. Описание методов API

### 4.1. Взаимодействие с лидами

* **POST `/api/v1/leads/b2c`** — Создание лида (Сайт/Импорт/Ручное).
* **PATCH `/api/v1/leads/b2c/{id}/scoring`** — Запуск скоринга в Astrum. Для не-абонентов обязателен вызов `POST /otp/send`.
* **PATCH `/api/v1/leads/b2c/{id}/handover`** — Смена департамента-владельца.

### 4.2. Интеграция SAP (Pickup)

* **POST `/api/v1/integration/sap/order`** — Создание наряда на самовывоз.
* **POST `/api/v1/integration/sap/callback`** — Прием статуса `COMPLETED` от SAP. Автоматически переводит лид в `CLOSED_WON`.

---

## 5. Бизнес-логика и автоматизация

### 5.1. Алгоритм «Липкого» распределения (Sticky Lead)

```plantuml
@startuml
title Алгоритм Sticky Lead (Закрепление оператора)

start
:Поступление нового лида (IIN/BIN);
:Поиск последнего лида в схеме **client** по данному IIN;

if (Лид найден?) then (да)
  :Получение **operator_id**;
  :Запрос в схему **users** для проверки статуса;
  if (Сотрудник активен и НЕ в отпуске?) then (да)
    :Назначить лид на текущего оператора;
    :Обновить **assigned_at**;
    stop
  else (нет)
    :Переход к Round Robin;
  endif
else (нет)
  :Переход к Round Robin;
endif

partition "Round Robin" {
  :Выборка сотрудников Online;
  :Сортировка по **last_assigned_at** (ASC);
  :Назначение лида на первого в списке;
}

:Фиксация **operator_id** и **assigned_at**;
stop
@enduml
```

Перед запуском Round Robin система выполняет проверку:

1. Поиск последнего `operator_id` для данного `bin_iin`.
2. **Валидация:** Если сотрудник активен (`is_active = true`) и не в отпуске (`on_vacation = false`), лид назначается на него.
3. **Fallback:** Если менеджер недоступен, лид уходит в общий Round Robin между сотрудниками со статусом `Online`.

### 5.2. SLA Watchdog (15 минут)

```plantuml
@startuml
title Процесс SLA Watchdog (15 мин)

participant "Task Service\n(Scheduled Job)" as TS
participant "Database\n(client.leads_b2c)" as DB
participant "Notification\nService" as NS
participant "Supervisor UI\n(React)" as UI

loop Каждую 1 минуту
    TS -> DB: Query leads where status='NEW' \nAND is_sla_breached=false
    DB --> TS: List of leads
  
    loop Для каждого лида
        alt now() - assigned_at > 15 минут
            TS -> DB: UPDATE leads SET is_sla_breached=true
            TS -> NS: Trigger SLA Alert (lead_id)
            NS -> UI: WebSocket: Push Alert (Lead ID, Operator Name)
        else В рамках SLA
            TS -> TS: Пропустить
        end
    end
end
@enduml
```

Фоновый процесс мониторит лиды в статусе `NEW`. Если `now() - assigned_at > 15 минут`, система:

* Устанавливает `is_sla_breached = true`.
* Отправляет WebSocket-алерт Супервайзеру.
* Логирует нарушение в историю лида.

### 5.3. TTL Ожидания оплаты (72 часа)

```plantuml
@startuml
title Алгоритм TTL Ожидания оплаты (72 часа)

start
:Запуск Job (раз в час);
:Выборка лидов в статусе **AWAITING_PAYMENT**;

if (Бренд = "Samsung" И предоплата = 0%?) then (да)
  :Игнорировать (передать на ручной контроль Бэк-офиса);
  stop
else (нет)
  if (now() - created_at > 72 часа?) then (да)
    :Смена статуса на **CLOSED_LOST**;
    :Установка причины: **TTL_EXPIRED**;
    :Логирование события в аудит;
    :Уведомление оператора через Notification Service;
  else (нет)
    :Оставить в текущем статусе;
  endif
endif

stop
@enduml
```

Spring Scheduled Job запускается каждый час и обрабатывает лиды в статусе `AWAITING_PAYMENT`:

* **Условие:** Прошло > 72 часов с момента создания заказа.
* **Исключение:** Лиды с продукцией **Samsung** и условием «0% предоплаты» не закрываются автоматически (требуют проверки Бэк-офисом).
* **Результат:** Перевод в `CLOSED_LOST`, причина `TTL_EXPIRED`.

### 5.4. Логистика и Бэк-офис

```plantuml
@startuml
title Процесс Логистики и Бэк-офиса

actor "Курьер" as Courier
participant "MinIO\n(S3)" as MinIO
participant "SapaCRM\n(Back-office UI)" as CRM
participant "Nexign\n(Billing)" as Nexign
participant "SAP\n(ERP)" as SAP

== Курьерская доставка ==
Courier -> MinIO: Загрузка фото документов (ID, Договор)
MinIO -> CRM: Ссылка на артефакты
CRM -> CRM: Лид попадает в очередь Бэк-офиса

note right: Сотрудник Бэк-офиса проверяет фото

CRM -> Nexign: PATCH /charge (Списание средств)
Nexign --> CRM: 200 OK (Оплачено)
CRM -> DB: Смена статуса на **CLOSED_WON**

== Самовывоз (Pickup) ==
CRM -> SAP: POST /orders (Создание наряда)
... Клиент забирает товар в Store ...
SAP -> CRM: Callback: /sap/callback (Status: COMPLETED)
CRM -> DB: Смена статуса на **CLOSED_WON**

@enduml
```

* **Курьерская доставка:** После загрузки фото документов курьером в MinIO, сотрудник Бэк-офиса через интерфейс подтверждает корректность данных, что инициирует финальное списание в биллинге и закрытие лида.
* **Корректировка:** При увеличении суммы заказа в Online Shop оператор обязан повторно запустить процедуру скоринга Astrum.
