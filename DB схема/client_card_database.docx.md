# **Документация базы данных \-- Модуль "Карточка клиента"**

**Схемы:** client, import, users

**Нормальная форма:** 3НФ

[**https://dbdiagram.io/d/KCELL-699bd4adbd82f5fce2779376**](https://dbdiagram.io/d/KCELL-699bd4adbd82f5fce2779376)

## **Оглавление**

[**Документация базы данных \-- Модуль "Карточка клиента"	1**](#heading=)

[Оглавление	1](#heading=)

[Обзор	4](#heading=)

[Основные возможности	4](#heading=)

[Статистика	4](#heading=)

[ER-диаграмма (группы таблиц)	4](#heading=)

[1\. Пользователи и роли (схема users)	4](#heading=)

[1.1. users.users \-- Пользователи системы	5](#heading=)

[1.2. users.role \-- Роли (42 роли)	5](#heading=)

[1.3. users.role\_subordination \-- Иерархия ролей	6](#heading=)

[1.4. users.role\_permissions \-- Права ролей (CRUD на API)	6](#heading=)

[1.5. users.organizational\_units \-- Организационные единицы (14 подразделений)	6](#heading=)

[1.6. client.employees \-- Legacy-таблица сотрудников	7](#heading=)

[2\. Клиенты	7](#heading=)

[2.1. client.clients \-- Базовая сущность клиента	7](#heading=)

[2.2. client.clients\_b2b \-- Расширение B2B	8](#heading=)

[2.3. client.clients\_b2c \-- Расширение B2C	9](#heading=)

[2.4. client.client\_contact \-- Контактная информация клиента	10](#heading=)

[2.5. client.client\_id\_documents \-- Документы, удостоверяющие личность	11](#heading=)

[2.6. client.client\_addresses \-- Адреса клиентов	11](#heading=)

[2.7. client.client\_phone\_numbers \-- Действующие номера клиентов	12](#heading=)

[2.8. client.client\_restrictions \-- Ограничения по клиентам	12](#heading=)

[2.9. client.subsidiaries \-- Дочерние компании (B2B)	12](#heading=)

[3\. Контактные лица	13](#heading=)

[3.1. client.contacts \-- Контактные лица клиента	13](#heading=)

[3.2. client.contact\_contact \-- Контактная информация контактного лица	14](#heading=)

[3.3. client.contact\_id\_documents \-- Паспортные данные контактного лица	14](#heading=)

[3.4. client.contact\_careers \-- Карьера контактного лица	15](#heading=)

[3.5. client.contact\_addresses \-- Адреса контактного лица	15](#heading=)

[3.6. client.authorized\_persons \-- Доверенные лица	15](#heading=)

[4\. Финансы	16](#heading=)

[4.1. client.bank\_details \-- Банковские реквизиты	16](#heading=)

[4.2. client.billing\_accounts \-- Лицевые счета	17](#heading=)

[5\. Продукты и услуги	17](#heading=)

[5.1. client.products\_services \-- Справочник продуктов и услуг	17](#heading=)

[5.2. client.client\_products \-- Действующие продукты клиента	17](#heading=)

[5.3. client.special\_tariff\_plans \-- Специальные тарифные планы	18](#heading=)

[6\. Договоры	18](#heading=)

[6.1. client.contracts \-- Договоры клиента	18](#heading=)

[6.2. client.contract\_products \-- Продукты в рамках договора	19](#heading=)

[6.3. client.related\_contracts \-- Связанные договоры	20](#heading=)

[6.4. client.contract\_templates \-- Шаблоны договоров	20](#heading=)

[6.5. client.contract\_documents \-- Вложения к договору	21](#heading=)

[7\. Документы	21](#heading=)

[7.1. client.documents \-- Архив документов клиента	21](#heading=)

[7.2. client.powers\_of\_attorney \-- Доверенности	22](#heading=)

[7.3. client.poa\_change\_history \-- История изменений доверенности	22](#heading=)

[7.4. client.upload\_history \-- История загрузок	23](#heading=)

[8\. CRM	23](#heading=)

[8.1. client.activities \-- Активности по клиенту	23](#heading=)

[8.2. client.tickets \-- Тикеты (интеграция с SAO)	24](#heading=)

[8.3. client.client\_requirements \-- Требования клиента	24](#heading=)

[8.4. client.client\_requirement\_attachments \-- Вложения к требованиям	24](#heading=)

[10\. Кампании и обработка	25](#heading=)

[10.1. client.campaign \-- Кампании	25](#heading=)

[10.2. client.campaign\_task \-- Задачи кампании	25](#heading=)

[10.3. client.campaign\_task\_history \-- История задач кампании	26](#heading=)

[10.4. client.campaign\_sort\_fields \-- Поля сортировки кампании	28](#heading=)

[10.5. client.schedule\_campaign \-- Расписание кампании	28](#heading=)

[10.6. client.schedule\_campaign\_days\_of\_week \-- Дни недели расписания	28](#heading=)

[10.7. client.schedule\_campaign\_robot \-- Роботы расписания кампании	29](#heading=)

[10.8. client.schedule\_campaign\_settings \-- Настройки расписания кампании	29](#heading=)

[10.9. client.schedule\_campaign\_user \-- Пользователи расписания кампании	29](#heading=)

[10.10. client.segment \-- Сегменты	30](#heading=)

[10.11. client.skill\_group \-- Группы навыков	30](#heading=)

[10.12. client.skill\_group\_users \-- Пользователи группы навыков	30](#heading=)

[10.13. client.managers\_user \-- Менеджеры (пользователи)	31](#heading=)

[10.14. client.call\_result \-- Результаты звонков	31](#heading=)

[10.15. client.communicate\_result \-- Результаты коммуникаций	32](#heading=)

[10.16. client.processing\_results \-- Результаты обработки	33](#heading=)

[10.17. client.result\_managers \-- Результаты менеджеров	34](#heading=)

[10.18. client.priority\_collection \-- Приоритеты коллекции	34](#heading=)

[11\. Справочники	35](#heading=)

[Структура справочника (пример: ref\_client\_types)	35](#heading=)

[12\. Схема import	36](#heading=)

[12.1. import.import\_sessions \-- Сессии импорта	36](#heading=)

[12.2. import.import\_batches \-- Батчи импорта	37](#heading=)

[12.3. import.import\_errors \-- Ошибки импорта	38](#heading=)

[12.4. import.import\_snapshots \-- Снапшоты импорта	38](#heading=)

[12.5. import.field\_mappings \-- Маппинг полей	39](#heading=)

[12.6. import.aliases \-- Алиасы	39](#heading=)

[12.7. import.synonyms \-- Синонимы	39](#heading=)

[Приложение: Сводная таблица связей (FK)	39](#heading=)

## **Обзор**

База данных модуля "Карточка клиента" предназначена для хранения и управления полной информацией о клиентах компании (АО "Кселл"). Поддерживаются два типа клиентов: **B2B** (юридические лица) и **B2C** (физические лица), каждый из которых расширяет базовую сущность clients через связь 1:1.

### **Основные возможности**

* Ведение карточек клиентов B2B и B2C  
* Управление контактными и доверенными лицами  
* Единая таблица контактной информации клиента (телефоны, email, мессенджеры)  
* Учет договоров с иерархией (родительский/дочерний)  
* Лицевые счета и банковские реквизиты  
* Продукты, услуги и специальные тарифные планы  
* Архив документов и доверенности  
* Ограничения, требования и активности  
* Интеграция с системой тикетов SAO  
* Банковские продукты (кредитная история, история контрактов, графики платежей)  
* Кампании, задачи, расписания, сегменты и группы навыков  
* Импорт данных (сессии, батчи, ошибки, снапшоты, маппинги)

### **Статистика**

| Показатель | Значение |
| :---- | :---- |
| Всего таблиц | 92 |
| Основные таблицы (client) | 67 |
| Справочники (client.ref\_\*) | 25 |
| Таблицы импорта (import) | 7 |
| Количество FK-связей | 127 |

## **ER-диаграмма (группы таблиц)**

## **1\. Пользователи и роли (схема users)**

FK-колонки таблиц схемы client (acquisition\_employee\_id, retention\_employee\_id, created\_by, uploaded\_by, assigned\_to, responsible\_kcell\_id и др.) ссылаются на users.users.id.

Таблица client.employees сохранена как legacy, но внешние FK других таблиц переключены на users.users.

### **1.1.** users.users **\-- Пользователи системы**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK (sequence) | Уникальный идентификатор |
| fio | varchar(255) |  | ФИО |
| username | varchar(255) | UNIQUE | Логин |
| email | varchar(255) |  | Email |
| phone | varchar(255) |  | Телефон |
| password | varchar(255) |  | Пароль |
| atc\_password | varchar(255) |  | Пароль АТС |
| status | varchar(255) |  | Статус (ACTIVE, ON\_CALL и др.) |
| description | varchar(255) |  | Описание |
| structure | varchar(255) |  | Структура |
| collection | varchar(255) |  | Коллекция |
| module | varchar(255) |  | Модуль |
| keycloak\_id | uuid |  | ID в Keycloak |
| role\_id | bigint | FK \-\> users.role.id | Роль |
| organization\_id | bigint | FK \-\> users.organizational\_units.id | Организационная единица |
| org\_contains\_all\_children | boolean | default: false |  |
| created\_at | timestamptz |  | Дата создания |
| updated\_at | timestamptz |  | Дата обновления |
| deleted\_at | timestamptz |  | Дата удаления (soft delete) |
| created\_by | uuid |  | Кем создано |
| updated\_by | uuid |  | Кем обновлено |

**Связи:**

* role\_id \-\> users.role.id  
* organization\_id \-\> users.organizational\_units.id

### **1.2.** users.role **\-- Роли (42 роли)**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK (sequence) | Уникальный идентификатор |
| code | varchar(255) | UNIQUE | Код роли (ROLE\_ADMIN, KAE\_SME\_USR и др.) |
| description | varchar(255) |  | Описание |
| created\_at | timestamptz |  | Дата создания |
| updated\_at | timestamptz |  | Дата обновления |
| deleted\_at | timestamptz |  | Soft delete |
| created\_by | uuid |  | Кем создано |
| updated\_by | uuid |  | Кем обновлено |

### **1.3.** users.role\_subordination **\-- Иерархия ролей**

Определяет подчинение ролей: parent \-\> child (HEAD \-\> LEAD \-\> USR).

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | uuid | PK | Уникальный идентификатор |
| id\_role\_parent | bigint | FK \-\> users.role.id, NOT NULL | Родительская роль |
| id\_role\_child | bigint | FK \-\> users.role.id, NOT NULL | Дочерняя роль |
| created\_at | timestamptz |  | Дата создания |

### **1.4.** users.role\_permissions **\-- Права ролей (CRUD на API)**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| role\_id | bigint | PK, FK \-\> users.role.id | Роль |
| api\_id | bigint | PK, FK \-\> users.api.id | API-раздел |
| create | boolean |  | Право на создание |
| read | boolean |  | Право на чтение |
| update | boolean |  | Право на обновление |
| delete | boolean |  | Право на удаление |

### **1.5.** users.organizational\_units **\-- Организационные единицы (14 подразделений)**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| code | varchar(20) | NOT NULL | Код (B2B\_KAE, B2C\_CC и др.) |
| name | varchar(200) | NOT NULL | Название |
| level | integer | NOT NULL | Уровень иерархии |
| parent\_id | bigint | FK \-\> self | Родительское подразделение |

### **1.6.** client.employees **\-- Legacy-таблица сотрудников**

Таблица сохранена для обратной совместимости. Внешние FK из других таблиц переключены на users.users.

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| first\_name | varchar(100) |  | Имя |
| last\_name | varchar(100) |  | Фамилия |
| middle\_name | varchar(100) |  | Отчество |
| position | varchar(255) |  | Должность |
| department\_id | bigint | FK \-\> ref\_departments.id | Направление / Отдел |
| supervisor\_id | bigint | FK \-\> employees.id | Начальник (self-reference) |
| is\_active | boolean | default: true | Активен |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |

## **2\. Клиенты**

### **2.1.** client.clients **\-- Базовая сущность клиента**

Общие поля для B2B и B2C клиентов. Тип клиента определяется через client\_type\_id.

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_type\_id | bigint | FK \-\> ref\_client\_types.id | Тип клиента |
| residency\_id | bigint | FK \-\> ref\_residencies.id | Резидентство |
| language\_id | bigint | FK \-\> ref\_languages.id | Язык обслуживания |
| city\_region\_id | bigint | FK \-\> ref\_cities\_regions.id | Город / регион |
| vip\_status\_id | bigint | FK \-\> ref\_vip\_statuses.id | VIP статус |
| code\_word | varchar(100) |  | Кодовое слово |
| credit\_limit\_increase\_allowed | boolean | default: false | Доступ на увеличение кредитного лимита |
| current\_balance | numeric(38,2) |  | Текущий баланс |
| charged\_amount | numeric(38,2) |  | Начислено |
| remaining\_balance | numeric(38,2) |  | Остаток |
| has\_corp\_cabinet | boolean | default: false | Наличие корп. кабинета |
| has\_mobile\_app | boolean | default: false | Наличие мобильного приложения |
| is\_active | boolean | default: true | Активен |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |
| status | varchar(255) |  | Статус |
| bin\_iin | varchar(12) | UNIQUE | БИН/ИИН |

**Связи:**

* client\_type\_id \-\> client.ref\_client\_types.id  
* residency\_id \-\> client.ref\_residencies.id  
* language\_id \-\> client.ref\_languages.id  
* city\_region\_id \-\> client.ref\_cities\_regions.id  
* vip\_status\_id \-\> client.ref\_vip\_statuses.id

### **2.2.** client.clients\_b2b **\-- Расширение B2B**

Дополнительные поля для юридических лиц. Связь **1:1** с clients.

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | UNIQUE, FK \-\> clients.id | Связь 1:1 с базовой карточкой |
| bin\_iin | varchar(12) | UNIQUE | БИН/ИИН |
| company\_name | varchar(300) |  | Компания |
| logo\_url | varchar(500) |  | Логотип компании |
| segment\_id | bigint | FK \-\> ref\_segments.id | Сегмент |
| industry\_id | bigint | FK \-\> ref\_industries.id | Индустрия |
| category\_id | bigint | FK \-\> ref\_client\_categories.id | Категория ABC |
| legal\_form\_id | bigint | FK \-\> ref\_legal\_forms.id | ОПФ |
| department\_id | bigint | FK \-\> ref\_departments.id | Направление / Отдел |
| acquisition\_employee\_id | bigint | FK \-\> users.users.id | Ответственный Acquisition |
| retention\_employee\_id | bigint | FK \-\> users.users.id | Ответственный Retention |
| acquisition\_head\_id | bigint | FK \-\> users.users.id | Руководитель Acquisition |
| retention\_head\_id | bigint | FK \-\> users.users.id | Руководитель Retention |
| payment\_terms | varchar(200) |  | Сроки оплаты |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |
| contact\_person\_full\_name | varchar(255) |  | Контактное лицо |
| contact\_person\_position | varchar(255) |  | Должность контактного лица |
| email | varchar(255) |  | Email |

**Связи:**

* client\_id \-\> client.clients.id  
* segment\_id \-\> client.ref\_segments.id  
* industry\_id \-\> client.ref\_industries.id  
* category\_id \-\> client.ref\_client\_categories.id  
* legal\_form\_id \-\> client.ref\_legal\_forms.id  
* department\_id \-\> client.ref\_departments.id  
* acquisition\_employee\_id \-\> users.users.id  
* retention\_employee\_id \-\> users.users.id  
* acquisition\_head\_id \-\> users.users.id  
* retention\_head\_id \-\> users.users.id

### **2.3.** client.clients\_b2c **\-- Расширение B2C**

Дополнительные поля для физических лиц. Связь **1:1** с clients.

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | UNIQUE, FK \-\> clients.id | Связь 1:1 с базовой карточкой |
| iin | varchar(12) | UNIQUE | ИИН |
| last\_name | varchar(100) |  | Фамилия |
| first\_name | varchar(100) |  | Имя |
| middle\_name | varchar(100) |  | Отчество |
| gender\_id | bigint | FK \-\> ref\_genders.id | Пол |
| date\_of\_birth | date |  | Дата рождения |
| password\_hash | varchar(255) |  | Пароль |
| income\_amount | numeric(18,2) |  | Сумма дохода |
| income\_source\_id | bigint | FK \-\> ref\_income\_sources.id | Источник дохода |
| marital\_status\_id | bigint | FK \-\> ref\_marital\_statuses.id | Семейное положение |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |
| phone\_b2c | varchar(20) |  | Телефон |
| email | varchar(255) |  | Email |
| language | varchar(255) |  | Язык |
| residency | varchar(255) |  | Резидентство |
| secret\_word | varchar(255) |  | Секретное слово |

**Связи:**

* client\_id \-\> client.clients.id  
* gender\_id \-\> client.ref\_genders.id  
* income\_source\_id \-\> client.ref\_income\_sources.id  
* marital\_status\_id \-\> client.ref\_marital\_statuses.id

### **2.4.** client.client\_contact **\-- Контактная информация клиента**

Единая таблица для хранения всех типов контактной информации клиента: телефоны, email, мессенджеры.

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| contact\_type\_id | bigint | FK \-\> ref\_contact\_info\_types.id | Тип контакта |
| value | varchar(300) |  | Значение контакта |
| is\_primary | boolean | default: false | Основной контакт |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |

**Связи:**

* client\_id \-\> client.clients.id  
* contact\_type\_id \-\> client.ref\_contact\_info\_types.id

### **2.5.** client.client\_id\_documents **\-- Документы, удостоверяющие личность**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| document\_type\_id | bigint | FK \-\> ref\_id\_document\_types.id | Тип документа: паспорт, УДЛ |
| document\_number | varchar(50) |  | Номер документа |
| issued\_by | varchar(300) |  | Кем выдан |
| issue\_date | date |  | Дата выдачи |
| expiry\_date | date |  | Срок действия |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |

**Связи:**

* client\_id \-\> client.clients.id  
* document\_type\_id \-\> client.ref\_id\_document\_types.id

### **2.6.** client.client\_addresses **\-- Адреса клиентов**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| address\_type\_id | bigint | FK \-\> ref\_address\_types.id | Юридический, фактический, для корреспонденции |
| city\_region\_id | bigint | FK \-\> ref\_cities\_regions.id | Город/регион |
| full\_address | text |  | Полный адрес |
| postal\_code | varchar(255) |  | Почтовый индекс |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |
| actual\_address | varchar(255) |  | Фактический адрес |
| legal\_address | varchar(255) |  | Юридический адрес |

**Связи:**

* client\_id \-\> client.clients.id  
* address\_type\_id \-\> client.ref\_address\_types.id  
* city\_region\_id \-\> client.ref\_cities\_regions.id

### **2.7.** client.client\_phone\_numbers **\-- Действующие номера клиентов**

Абонентские номера телефонов с привязкой к бренду (Актив / Кселл).

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| phone\_number | varchar(255) |  | Номер телефона |
| brand\_id | bigint | FK \-\> ref\_brands.id | Бренд: Актив / Кселл |
| is\_active | boolean | default: true | Активен |
| created\_at | timestamp | default: now() | Дата создания |

**Связи:**

* client\_id \-\> client.clients.id  
* brand\_id \-\> client.ref\_brands.id

### **2.8.** client.client\_restrictions **\-- Ограничения по клиентам**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| restriction\_type\_id | bigint | FK \-\> ref\_restriction\_types.id | Тип: стоп-лист, конфликты по продуктам, задолженность |
| description | varchar(255) |  | Описание ограничения |
| is\_active | boolean | default: true | Активно |
| start\_date | timestamp | default: now() | Дата начала ограничения |
| end\_date | timestamp |  | Дата окончания ограничения |
| created\_at | timestamp | default: now() | Дата создания |

**Связи:**

* client\_id \-\> client.clients.id  
* restriction\_type\_id \-\> client.ref\_restriction\_types.id

### **2.9.** client.subsidiaries **\-- Дочерние компании (B2B)**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| parent\_client\_id | bigint | FK \-\> clients.id | Родительская компания |
| company\_name | varchar(255) |  | Дочерняя компания |
| bin | varchar(255) |  | БИН |
| city\_region\_id | bigint | FK \-\> ref\_cities\_regions.id | Город |
| created\_at | timestamp | default: now() | Дата создания |

**Связи:**

* parent\_client\_id \-\> client.clients.id  
* city\_region\_id \-\> client.ref\_cities\_regions.id

## **3\. Контактные лица**

### **3.1.** client.contacts **\-- Контактные лица клиента**

Контактные лица с привязкой к клиенту. Поле client\_id указывает компанию, от лица которой действует контактное лицо.

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент-владелец контакта |
| last\_name | varchar(255) |  | Фамилия |
| first\_name | varchar(255) |  | Имя |
| middle\_name | varchar(255) |  | Отчество |
| gender\_id | bigint | FK \-\> ref\_genders.id | Пол |
| position | varchar(255) |  | Должность |
| residency\_id | bigint | FK \-\> ref\_residencies.id | Резидентство |
| code\_word | varchar(255) |  | Кодовое слово |
| verification\_password | varchar(255) |  | Пароль на верификацию |
| client\_type\_id | bigint | FK \-\> ref\_client\_types.id | Тип клиента |
| role\_id | bigint | FK \-\> ref\_contact\_roles.id | Роль контактного лица |
| language\_id | bigint | FK \-\> ref\_languages.id | Язык обслуживания |
| date\_of\_birth | date |  | Дата рождения |
| do\_not\_disturb | boolean | default: false | Не тревожить |
| is\_active | boolean | default: true | Активен |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |

**Связи:**

* client\_id \-\> client.clients.id  
* gender\_id \-\> client.ref\_genders.id  
* residency\_id \-\> client.ref\_residencies.id  
* client\_type\_id \-\> client.ref\_client\_types.id  
* role\_id \-\> client.ref\_contact\_roles.id  
* language\_id \-\> client.ref\_languages.id

### **3.2.** client.contact\_contact **\-- Контактная информация контактного лица**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| contact\_id | bigint | FK \-\> contacts.id | Контактное лицо |
| contact\_type\_id | bigint | FK \-\> ref\_contact\_info\_types.id | Тип контакта |
| value | varchar(300) |  | Значение контакта |
| is\_primary | boolean | default: false | Основной контакт |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |

**Связи:**

* contact\_id \-\> client.contacts.id  
* contact\_type\_id \-\> client.ref\_contact\_info\_types.id

### **3.3.** client.contact\_id\_documents **\-- Паспортные данные контактного лица**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| contact\_id | bigint | FK \-\> contacts.id | Контактное лицо |
| document\_type\_id | bigint | FK \-\> ref\_id\_document\_types.id | Тип документа |
| document\_number | varchar(255) |  | Номер документа |
| issued\_by | varchar(255) |  | Кем выдан |
| expiry\_date | date |  | Срок действия |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |

**Связи:**

* contact\_id \-\> client.contacts.id  
* document\_type\_id \-\> client.ref\_id\_document\_types.id

### **3.4.** client.contact\_careers **\-- Карьера контактного лица**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| contact\_id | bigint | FK \-\> contacts.id | Контактное лицо |
| company\_name | varchar(255) |  | Название компании |
| position | varchar(255) |  | Должность |
| start\_date | date |  | Дата начала |
| end\_date | date |  | Дата окончания |
| is\_current | boolean | default: false | Текущее место работы |
| created\_at | timestamp | default: now() | Дата создания |

**Связи:**

* contact\_id \-\> client.contacts.id

### **3.5.** client.contact\_addresses **\-- Адреса контактного лица**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| contact\_id | bigint | FK \-\> contacts.id | Контактное лицо |
| address\_type\_id | bigint | FK \-\> ref\_address\_types.id | Тип адреса |
| city\_region\_id | bigint | FK \-\> ref\_cities\_regions.id | Город / регион |
| full\_address | text |  | Полный адрес |
| created\_at | timestamp | default: now() | Дата создания |

**Связи:**

* contact\_id \-\> client.contacts.id  
* address\_type\_id \-\> client.ref\_address\_types.id  
* city\_region\_id \-\> client.ref\_cities\_regions.id

### **3.6.** client.authorized\_persons **\-- Доверенные лица**

Лица, имеющие полномочия от лица компании.

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент-владелец |
| last\_name | varchar(100) |  | Фамилия |
| first\_name | varchar(100) |  | Имя |
| middle\_name | varchar(100) |  | Отчество |
| iin | varchar(12) |  | ИИН |
| phone | varchar(20) |  | Телефон |
| authority\_description | varchar(255) |  | Полномочия |
| is\_active | boolean | default: true | Активен |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |
| email | varchar(200) |  | Email уполномоченного лица |
| verification\_password | varchar(255) |  | Пароль для верификации |

**Связи:**

* client\_id \-\> client.clients.id

## **4\. Финансы**

### **4.1.** client.bank\_details **\-- Банковские реквизиты**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| bank\_name | varchar(255) |  | Банк |
| bik | varchar(255) |  | БИК |
| account\_number | varchar(50) |  | Номер счета |
| iban | varchar(255) |  | IBAN |
| is\_primary | boolean | default: false | Основной счет |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |
| account\_owner | varchar(255) |  | Владелец счета |

**Связи:**

* client\_id \-\> client.clients.id

### **4.2.** client.billing\_accounts **\-- Лицевые счета**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| account\_number | varchar(50) | UNIQUE | Номер лицевого счета |
| balance | numeric(38,2) | default: 0 | Баланс |
| debt\_amount | numeric(38,2) | default: 0 | Задолженность |
| credit\_limit | numeric(38,2) | default: 0 | Кредитный лимит |
| remaining\_limit | numeric(38,2) | default: 0 | Остаток лимита |
| credit\_limit\_increase\_allowed | boolean | default: false | Доступ на увеличение лимита |
| is\_active | boolean | default: true | Активен |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |

**Связи:**

* client\_id \-\> client.clients.id

## **5\. Продукты и услуги**

### **5.1.** client.products\_services **\-- Справочник продуктов и услуг**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| name | varchar(255) |  | Наименование продукта/услуги |
| description | varchar(255) |  | Описание |
| product\_type | varchar(255) |  | Тип: продукт, услуга, устройство |
| is\_active | boolean | default: true | Активен |
| created\_at | timestamp | default: now() | Дата создания |

### **5.2.** client.client\_products **\-- Действующие продукты клиента**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| product\_id | bigint | FK \-\> products\_services.id | Продукт |
| activated\_at | timestamp |  | Дата активации |
| deactivated\_at | timestamp |  | Дата деактивации |
| is\_active | boolean | default: true | Активен |
| created\_at | timestamp | default: now() | Дата создания |
| name | varchar(255) |  | Название |

**Связи:**

* client\_id \-\> client.clients.id  
* product\_id \-\> client.products\_services.id

### **5.3.** client.special\_tariff\_plans **\-- Специальные тарифные планы**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| product\_id | bigint | FK \-\> products\_services.id | Доступная услуга/устройство |
| description | text |  | Описание спец. условий |
| is\_active | boolean | default: true | Активен |
| created\_at | timestamp | default: now() | Дата создания |

**Связи:**

* client\_id \-\> client.clients.id  
* product\_id \-\> client.products\_services.id

## **6\. Договоры**

### **6.1.** client.contracts **\-- Договоры клиента**

Договоры с поддержкой иерархии родительский / дочерний.

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| registration\_number | varchar(255) | UNIQUE | Регистрационный номер |
| start\_date | date |  | Дата начала |
| end\_date | date |  | Дата окончания |
| contract\_type\_id | bigint | FK \-\> ref\_contract\_types.id | Тип договора |
| status\_id | bigint | FK \-\> ref\_contract\_statuses.id | Статус |
| responsible\_kcell\_id | bigint | FK \-\> users.users.id | Ответственный Кселл |
| responsible\_contact\_id | bigint | FK \-\> contacts.id | Ответственный клиента |
| billing\_account\_id | bigint | FK \-\> billing\_accounts.id | Лицевой счет |
| balance | numeric(38,2) | default: 0 | Баланс |
| total\_amount | numeric(38,2) | default: 0 | Общая сумма |
| payment\_form\_id | bigint | FK \-\> ref\_payment\_forms.id | Форма оплаты |
| is\_debtor | boolean | default: false | Должник |
| residual\_value | numeric(38,2) |  | Остаточная стоимость |
| currency\_id | bigint | FK \-\> ref\_currencies.id | Валюта |
| parent\_contract\_id | bigint | FK \-\> contracts.id | Родительский договор |
| is\_open\_incomplete | boolean | default: false | Открытый незавершенный |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |
| contract\_number | varchar(255) |  | Номер договора |

**Связи:**

* client\_id \-\> client.clients.id  
* contract\_type\_id \-\> client.ref\_contract\_types.id  
* status\_id \-\> client.ref\_contract\_statuses.id  
* responsible\_kcell\_id \-\> users.users.id  
* responsible\_contact\_id \-\> client.contacts.id  
* billing\_account\_id \-\> client.billing\_accounts.id  
* payment\_form\_id \-\> client.ref\_payment\_forms.id  
* currency\_id \-\> client.ref\_currencies.id  
* parent\_contract\_id \-\> client.contracts.id (самоссылка)

### **6.2.** client.contract\_products **\-- Продукты в рамках договора**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| contract\_id | bigint | FK \-\> contracts.id | Договор |
| product\_id | bigint | FK \-\> products\_services.id | Продукт |
| service\_start\_date | date |  | Дата начала предоставления услуги |
| service\_end\_date | date |  | Дата окончания предоставления услуги |
| quantity | integer | default: 1 | Количество |
| one\_time\_fee | numeric(38,2) | default: 0 | Стоимость ЕП (единовременная плата) |
| monthly\_fee | numeric(38,2) | default: 0 | Стоимость АП (абонентская плата) |
| promotion | varchar(300) |  | Акция |
| discount | numeric(38,2) | default: 0 | Скидка, % |
| total\_amount | numeric(38,2) | default: 0 | Общая сумма |
| created\_at | timestamp | default: now() | Дата создания |

**Связи:**

* contract\_id \-\> client.contracts.id  
* product\_id \-\> client.products\_services.id

### **6.3.** client.related\_contracts **\-- Связанные договоры**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| contract\_id | bigint | FK \-\> contracts.id | Договор |
| related\_contract\_id | bigint | FK \-\> contracts.id | Связанный договор |
| created\_at | timestamp | default: now() | Дата создания |

**Связи:**

* contract\_id \-\> client.contracts.id  
* related\_contract\_id \-\> client.contracts.id

### **6.4.** client.contract\_templates **\-- Шаблоны договоров**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| contract\_type\_id | bigint | FK \-\> ref\_contract\_types.id | Тип договора |
| template\_name | varchar(200) |  | Название шаблона |
| template\_file\_path | varchar(500) |  | Путь к файлу шаблона |
| is\_active | boolean | default: true | Активен |
| created\_at | timestamp | default: now() | Дата создания |

**Связи:**

* contract\_type\_id \-\> client.ref\_contract\_types.id

### **6.5.** client.contract\_documents **\-- Вложения к договору**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| contract\_id | bigint | FK \-\> contracts.id | Договор |
| document\_type\_id | bigint | FK \-\> ref\_document\_types.id | Тип документа |
| file\_name | varchar(500) |  | Имя файла |
| file\_path | varchar(1000) |  | Путь к файлу |
| file\_size | bigint |  | Размер файла, байт |
| uploaded\_by | bigint | FK \-\> users.users.id | Кем загружен |
| uploaded\_at | timestamp | default: now() | Дата загрузки |

**Связи:**

* contract\_id \-\> client.contracts.id  
* document\_type\_id \-\> client.ref\_document\_types.id  
* uploaded\_by \-\> users.users.id

## **7\. Документы**

### **7.1.** client.documents **\-- Архив документов клиента**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| document\_type\_id | bigint | FK \-\> ref\_document\_types.id | Тип документа |
| category | varchar(20) |  | Категория |
| status | varchar(255) | default: 'active' | Статус |
| file\_name | varchar(255) |  | Имя файла |
| file\_path | varchar(255) |  | Путь к файлу |
| file\_size | bigint |  | Размер файла |
| uploaded\_by | bigint | FK \-\> users.users.id | Кем загружен |
| uploaded\_at | timestamp | default: now() | Дата загрузки |
| updated\_at | timestamp | default: now() | Дата обновления |

**Связи:**

* client\_id \-\> client.clients.id  
* document\_type\_id \-\> client.ref\_document\_types.id  
* uploaded\_by \-\> users.users.id

### **7.2.** client.powers\_of\_attorney **\-- Доверенности**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| contact\_id | bigint | FK \-\> contacts.id | Контактное лицо |
| poa\_type\_id | bigint | FK \-\> ref\_poa\_types.id | Вид доверенности |
| document\_type\_id | bigint | FK \-\> ref\_document\_types.id | Тип документа |
| start\_date | date |  | Дата начала |
| end\_date | date |  | Дата окончания |
| status | varchar(255) | default: 'active' | Статус документа |
| file\_name | varchar(255) |  | Имя файла |
| file\_path | varchar(255) |  | Путь к файлу |
| expiry\_notification\_sent | boolean | default: false | Уведомление об истечении |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |
| authorized\_person\_id | bigint | FK \-\> authorized\_persons.id | Уполномоченное лицо |

**Связи:**

* client\_id \-\> client.clients.id  
* contact\_id \-\> client.contacts.id  
* poa\_type\_id \-\> client.ref\_poa\_types.id  
* document\_type\_id \-\> client.ref\_document\_types.id  
* authorized\_person\_id \-\> client.authorized\_persons.id

### **7.3.** client.poa\_change\_history **\-- История изменений доверенности**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| poa\_id | bigint | FK \-\> powers\_of\_attorney.id | Доверенность |
| field\_changed | varchar(255) |  | Измененное поле |
| old\_value | varchar(255) |  | Старое значение |
| new\_value | varchar(255) |  | Новое значение |
| changed\_by | bigint | FK \-\> users.users.id | Кем изменено |
| changed\_at | timestamp | default: now() | Дата изменения |

**Связи:**

* poa\_id \-\> client.powers\_of\_attorney.id  
* changed\_by \-\> users.users.id

### **7.4.** client.upload\_history **\-- История загрузок**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| file\_name | varchar(255) |  | Имя файла |

## **8\. CRM**

### **8.1.** client.activities **\-- Активности по клиенту**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| activity\_type | varchar(255) |  | Тип активности |
| subject | varchar(255) |  | Тема |
| description | text |  | Описание |
| source | varchar(255) |  | Источник |
| source\_id | bigint |  | ID источника |
| created\_by | bigint | FK \-\> users.users.id | Кем создано |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |

**Связи:**

* client\_id \-\> client.clients.id  
* created\_by \-\> users.users.id

### **8.2.** client.tickets **\-- Тикеты (интеграция с SAO)**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| external\_ticket\_id | varchar(255) |  | ID тикета SAO |
| status | varchar(255) |  | Статус |
| subject | varchar(255) |  | Тема |
| description | text |  | Описание |
| assigned\_to | bigint | FK \-\> users.users.id | Назначено на |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |

**Связи:**

* client\_id \-\> client.clients.id  
* assigned\_to \-\> users.users.id

### **8.3.** client.client\_requirements **\-- Требования клиента**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| description | text |  | Текст требования (ручной ввод) |
| created\_by | bigint | FK \-\> users.users.id | Кем создано |
| created\_at | timestamp | default: now() | Дата создания |
| updated\_at | timestamp | default: now() | Дата обновления |

**Связи:**

* client\_id \-\> client.clients.id  
* created\_by \-\> users.users.id

### **8.4.** client.client\_requirement\_attachments **\-- Вложения к требованиям**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| requirement\_id | bigint | FK \-\> client\_requirements.id | Требование |
| file\_name | varchar(255) |  | Имя файла |
| file\_path | varchar(255) |  | Путь к файлу |
| file\_size | bigint |  | Размер файла, байт |
| uploaded\_at | timestamp | default: now() | Дата загрузки |

**Связи:**

* requirement\_id \-\> client.client\_requirements.id

## **10\. Кампании и обработка**

### **10.1.** client.campaign **\-- Кампании**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| collection | varchar(255) |  | Коллекция |
| dep\_id | varchar(255) |  | ID подразделения |
| name | varchar(255) |  | Название |
| segments | jsonb |  | Сегменты |
| srv\_dep\_code | varchar(255) |  | Код сервисного подразделения |
| username | jsonb |  | Пользователи |

### **10.2.** client.campaign\_task **\-- Задачи кампании**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| aim | varchar(100) |  | Цель |
| auto\_closed | boolean |  | Автозакрытие |
| collection | varchar(255) |  | Коллекция |
| comment | varchar(255) |  | Комментарий |
| contract\_number | varchar(255) |  | Номер контракта |
| dep\_id | varchar(255) |  | ID подразделения |
| expiration\_date | timestamptz |  | Дата истечения |
| is\_active | boolean |  | Активна |
| is\_reactivate | boolean |  | Реактивирована |
| is\_worked | boolean |  | Обработана |
| last\_action\_date | timestamptz |  | Дата последнего действия |
| priority | integer |  | Приоритет |
| reactivation\_datetime | timestamptz |  | Дата реактивации |
| srv\_dep\_code | varchar(255) |  | Код сервисного подразделения |
| stage\_of\_task | varchar(255) |  | Этап задачи |
| status | varchar(255) |  | Статус |
| task\_completion\_date | timestamptz |  | Дата завершения |
| task\_number | varchar(255) |  | Номер задачи |
| task\_seq | bigint |  | Последовательность |
| type | varchar(255) |  | Тип |
| user\_name | varchar(255) |  | Имя пользователя |
| client\_id | bigint | NOT NULL, FK \-\> clients.id | Клиент |
| manager\_id | bigint | FK \-\> result\_managers.id | Менеджер |
| schedule\_campaign\_id | bigint | FK \-\> schedule\_campaign.id | Расписание кампании |

**Связи:**

* client\_id \-\> client.clients.id  
* manager\_id \-\> client.result\_managers.id  
* schedule\_campaign\_id \-\> client.schedule\_campaign.id

### **10.3.** client.campaign\_task\_history **\-- История задач кампании**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | uuid | PK | Уникальный идентификатор |
| aim | varchar(100) |  | Цель |
| auto\_closed | boolean |  | Автозакрытие |
| campaign\_task\_id | bigint | NOT NULL | ID задачи кампании |
| changed\_at | timestamptz | NOT NULL | Дата изменения |
| changed\_by | varchar(100) |  | Кем изменено |
| collection | varchar(255) |  | Коллекция |
| comment | varchar(255) |  | Комментарий |
| contract\_number | varchar(255) |  | Номер контракта |
| created\_at | timestamptz |  | Дата создания |
| created\_by | varchar(255) |  | Кем создано |
| deleted\_at | timestamptz |  | Дата удаления |
| dep\_id | varchar(255) |  | ID подразделения |
| expiration\_date | timestamptz |  | Дата истечения |
| is\_active | boolean |  | Активна |
| is\_reactivate | boolean |  | Реактивирована |
| is\_worked | boolean |  | Обработана |
| last\_action\_date | timestamptz |  | Дата последнего действия |
| operation | varchar(10) | NOT NULL | Операция |
| priority | integer |  | Приоритет |
| reactivation\_datetime | timestamptz |  | Дата реактивации |
| srv\_dep\_code | varchar(255) |  | Код сервисного подразделения |
| stage\_of\_task | varchar(255) |  | Этап задачи |
| status | varchar(255) |  | Статус |
| task\_completion\_date | timestamptz |  | Дата завершения |
| task\_number | varchar(255) |  | Номер задачи |
| task\_seq | bigint |  | Последовательность |
| type | varchar(255) |  | Тип |
| updated\_at | timestamptz |  | Дата обновления |
| updated\_by | varchar(255) |  | Кем обновлено |
| user\_name | varchar(255) |  | Имя пользователя |
| client\_id | bigint | FK \-\> clients.id | Клиент |
| manager\_id | bigint | FK \-\> result\_managers.id | Менеджер |
| schedule\_campaign\_id | bigint | FK \-\> schedule\_campaign.id | Расписание кампании |

**Связи:**

* client\_id \-\> client.clients.id  
* manager\_id \-\> client.result\_managers.id  
* schedule\_campaign\_id \-\> client.schedule\_campaign.id

### **10.4.** client.campaign\_sort\_fields **\-- Поля сортировки кампании**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| campaign\_id | bigint | NOT NULL, FK \-\> campaign.id | Кампания |
| field | varchar(255) |  | Поле |
| value | varchar(255) |  | Значение |

**Связи:**

* campaign\_id \-\> client.campaign.id

### **10.5.** client.schedule\_campaign **\-- Расписание кампании**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| assign\_manager\_user\_id | bigint |  | ID назначенного менеджера |
| channel | varchar(255) |  | Канал |
| collection | varchar(255) |  | Коллекция |
| dep\_id | varchar(255) |  | ID подразделения |
| end\_time | timestamptz |  | Время окончания |
| is\_active | boolean |  | Активно |
| last\_activate\_date | timestamptz |  | Дата последней активации |
| name | varchar(255) |  | Название |
| srv\_dep\_code | varchar(255) |  | Код сервисного подразделения |
| start\_time | timestamptz |  | Время начала |

### **10.6.** client.schedule\_campaign\_days\_of\_week **\-- Дни недели расписания**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| schedule\_campaign\_id | bigint | NOT NULL, FK \-\> schedule\_campaign.id | Расписание кампании |
| days\_of\_week | varchar(255) |  | День недели |

**Связи:**

* schedule\_campaign\_id \-\> client.schedule\_campaign.id

### **10.7.** client.schedule\_campaign\_robot **\-- Роботы расписания кампании**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| description | varchar(255) |  | Описание |
| robot\_id | bigint |  | ID робота |
| robot\_name | varchar(255) |  | Имя робота |
| schedule\_campaign\_settings\_id | bigint | FK \-\> schedule\_campaign\_settings.id | Настройки расписания |

**Связи:**

* schedule\_campaign\_settings\_id \-\> client.schedule\_campaign\_settings.id

### **10.8.** client.schedule\_campaign\_settings **\-- Настройки расписания кампании**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| robot\_id | bigint |  | ID робота |
| skill\_group\_id | bigint |  | ID группы навыков |
| user\_id | bigint |  | ID пользователя |
| campaign\_id | bigint | FK \-\> campaign.id | Кампания |
| schedule\_campaign\_id | bigint | UNIQUE, FK \-\> schedule\_campaign.id | Расписание кампании |
| schedule\_campaign\_user\_id | bigint | UNIQUE, FK \-\> schedule\_campaign\_user.id | Пользователь расписания |

**Связи:**

* campaign\_id \-\> client.campaign.id  
* schedule\_campaign\_id \-\> client.schedule\_campaign.id  
* schedule\_campaign\_user\_id \-\> client.schedule\_campaign\_user.id

### **10.9.** client.schedule\_campaign\_user **\-- Пользователи расписания кампании**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| fio | text |  | ФИО |
| skill\_group\_id | bigint |  | ID группы навыков |
| source | varchar(255) |  | Источник |
| user\_id | bigint |  | ID пользователя |
| username | text |  | Имя пользователя |
| schedule\_campaign\_settings\_id | bigint | UNIQUE, FK \-\> schedule\_campaign\_settings.id | Настройки расписания |

**Связи:**

* schedule\_campaign\_settings\_id \-\> client.schedule\_campaign\_settings.id

### **10.10.** client.segment **\-- Сегменты**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| collection | varchar(255) |  | Коллекция |
| conditions | jsonb |  | Условия |
| dep\_id | varchar(255) |  | ID подразделения |
| description | varchar(255) |  | Описание |
| edit\_date | timestamptz |  | Дата редактирования |
| name | varchar(255) |  | Название |

### **10.11.** client.skill\_group **\-- Группы навыков**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| collection | varchar(255) |  | Коллекция |
| dep\_id | varchar(255) |  | ID подразделения |
| name | varchar(255) |  | Название |
| srv\_dep\_code | varchar(255) |  | Код сервисного подразделения |

### **10.12.** client.skill\_group\_users **\-- Пользователи группы навыков**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| skill\_group\_id | bigint | NOT NULL, FK \-\> skill\_group.id | Группа навыков |
| fio | varchar(255) |  | ФИО |
| user\_id | bigint |  | ID пользователя |
| username | varchar(255) |  | Имя пользователя |

**Связи:**

* skill\_group\_id \-\> client.skill\_group.id

### **10.13.** client.managers\_user **\-- Менеджеры (пользователи)**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | uuid | PK | Уникальный идентификатор |
| full\_name | varchar(255) |  | ФИО |
| position | varchar(100) |  | Должность |
| organizational\_unit\_id | bigint |  | ID орг. единицы |
| email | varchar(100) |  | Email |
| phone | varchar(20) |  | Телефон |
| role | varchar(50) |  | Роль |
| status | varchar(30) |  | Статус |
| created\_at | timestamp |  | Дата создания |
| updated\_at | timestamp |  | Дата обновления |
| deleted\_at | timestamp |  | Дата удаления |
| created\_by | varchar(255) |  | Кем создано |
| updated\_by | varchar(255) |  | Кем обновлено |

### **10.14.** client.call\_result **\-- Результаты звонков**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| campaign\_id | bigint |  | ID кампании |
| comment | varchar(255) |  | Комментарий |
| contact\_person | varchar(255) |  | Контактное лицо |
| contact\_type | varchar(255) |  | Тип контакта |
| create\_date | timestamptz |  | Дата создания |
| executed\_campaign\_id | bigint |  | ID выполненной кампании |
| phone\_number | varchar(255) |  | Номер телефона |
| promise\_date | timestamptz |  | Дата обещания |
| reason\_delay | varchar(255) |  | Причина задержки |
| responsible | varchar(255) |  | Ответственный |
| result | varchar(255) |  | Результат |
| client\_id | bigint | FK \-\> clients.id | Клиент |

**Связи:**

* client\_id \-\> client.clients.id

### **10.15.** client.communicate\_result **\-- Результаты коммуникаций**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| appeal | varchar(255) |  | Обращение |
| call\_type | varchar(255) |  | Тип звонка |
| channel | varchar(255) |  | Канал |
| comment | varchar(255) |  | Комментарий |
| contact\_value | varchar(255) |  | Значение контакта |
| create\_date | timestamptz |  | Дата создания |
| created\_at | timestamptz |  | Дата создания записи |
| created\_by | uuid |  | Кем создано |
| date | timestamptz |  | Дата |
| deleted\_at | timestamptz |  | Дата удаления |
| delivered\_at | timestamptz |  | Дата доставки |
| direction | varchar(255) |  | Направление |
| message\_type | varchar(255) |  | Тип сообщения |
| promise\_date | timestamptz |  | Дата обещания |
| receiver\_fio | varchar(255) |  | ФИО получателя |
| responsible | varchar(255) |  | Ответственный |
| result | varchar(255) |  | Результат |
| status | varchar(255) |  | Статус |
| subject | varchar(255) |  | Тема |
| task\_number | varchar(255) |  | Номер задачи |
| topic | varchar(255) |  | Топик |
| updated\_at | timestamptz |  | Дата обновления |
| updated\_by | uuid |  | Кем обновлено |
| user\_id | uuid |  | ID пользователя |
| client\_id | bigint | NOT NULL, FK \-\> clients.id | Клиент |
| contact\_id | bigint |  | ID контакта |
| end\_date | timestamptz |  | Дата окончания |
| start\_date | timestamptz |  | Дата начала |
| client\_contact\_id | bigint | FK \-\> contacts.id | Контактное лицо |
| contract\_id | bigint | FK \-\> contracts.id | Договор |

**Связи:**

* client\_id \-\> client.clients.id  
* client\_contact\_id \-\> client.contacts.id  
* contract\_id \-\> client.contracts.id

### **10.16.** client.processing\_results **\-- Результаты обработки**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| comment | varchar(255) |  | Комментарий |
| next\_processing\_date | timestamptz |  | Дата следующей обработки |
| processing\_comment | varchar(255) |  | Комментарий обработки |
| processing\_date | timestamptz |  | Дата обработки |
| processing\_result | varchar(500) |  | Результат обработки |
| promise\_date | timestamptz |  | Дата обещания |
| responsible | varchar(255) |  | Ответственный |
| task\_number | varchar(255) |  | Номер задачи |
| client\_id | bigint | NOT NULL, FK \-\> clients.id | Клиент |
| contract\_id | bigint | NOT NULL, FK \-\> contracts.id | Договор |

**Связи:**

* client\_id \-\> client.clients.id  
* contract\_id \-\> client.contracts.id

### **10.17.** client.result\_managers **\-- Результаты менеджеров**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| comment | varchar(255) |  | Комментарий |
| create\_date | timestamp |  | Дата создания |
| fio | varchar(255) |  | ФИО |
| next\_processing\_date | timestamptz |  | Дата следующей обработки |
| promise\_date | timestamptz |  | Дата обещания |
| result | varchar(255) |  | Результат |
| result\_date | timestamptz |  | Дата результата |
| user\_name | varchar(255) |  | Имя пользователя |
| client\_id | bigint | FK \-\> clients.id | Клиент |

**Связи:**

* client\_id \-\> client.clients.id

### **10.18.** client.priority\_collection **\-- Приоритеты коллекции**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| color | varchar(255) |  | Цвет |
| max\_days\_without\_work | integer |  | Макс. дней без работы |
| min\_days\_without\_work | integer |  | Мин. дней без работы |
| priority | integer |  | Приоритет |
| status | varchar(255) |  | Статус |
| type | varchar(255) |  | Тип |

## **11\. Справочники**

Все справочники имеют стандартную структуру: id (bigint PK), code (UNIQUE, если применимо), name.

| Таблица | Описание | Примеры значений |
| :---- | :---- | :---- |
| ref\_client\_types | Типы клиентов | Потенциальный, Бывший, B2B, B2C, Партнер, Агент |
| ref\_genders | Пол | Мужской, Женский |
| ref\_languages | Языки обслуживания | Казахский, Русский, Английский |
| ref\_residencies | Резидентство | Резидент, Нерезидент |
| ref\_segments | Сегменты клиентов | \-- |
| ref\_industries | Индустрии | \-- |
| ref\_client\_categories | Категории ABC | A, B, C |
| ref\_vip\_statuses | VIP-статусы | TOP, VIP, не заполнено |
| ref\_legal\_forms | Организационно-правовые формы | ТОО, АО, ИП |
| ref\_brands | Бренды | Актив, Кселл |
| ref\_currencies | Валюты | KZT, USD, EUR |
| ref\_contract\_types | Типы договоров | Договор, Спецификация, ДС |
| ref\_contract\_statuses | Статусы договоров | Подготовка, Действующий, Расторгнут |
| ref\_payment\_forms | Формы оплаты | Кредит и др. |
| ref\_document\_types | Типы документов (архив) | \-- |
| ref\_id\_document\_types | Типы удостоверяющих документов | Паспорт, УДЛ |
| ref\_poa\_types | Виды доверенностей | \-- |
| ref\_marital\_statuses | Семейное положение | \-- |
| ref\_income\_sources | Источники дохода | \-- |
| ref\_cities\_regions | Города и регионы | Поля: name (город), region (регион) |
| ref\_departments | Подразделения | Иерархия через parent\_id (self-reference) |
| ref\_restriction\_types | Типы ограничений | Стоп-лист, конфликт по продуктам, задолженность |
| ref\_contact\_roles | Роли контактных лиц | \-- |
| ref\_address\_types | Типы адресов | Юридический, фактический, для корреспонденции |
| ref\_contact\_info\_types | Типы контактной информации | phone, email, whatsapp, telegram |

### **Структура справочника (пример:** ref\_client\_types**)**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | bigint | PK | Уникальный идентификатор |
| code | varchar(20) | UNIQUE | Код значения |
| name | varchar(100) | NOT NULL | Наименование |

**Примечания к справочникам:**

\- ref\_departments имеет иерархическую структуру (self-reference через parent\_id)

\- ref\_cities\_regions содержит дополнительное поле region

\- ref\_segments, ref\_industries, ref\_income\_sources не имеют поля code

\- ref\_languages и ref\_residencies используют varchar(255) для полей code и name

\- ref\_vip\_statuses использует varchar(255) для name

## **12\. Схема import**

Таблицы схемы import обеспечивают загрузку данных из внешних файлов (CSV, Excel) с маппингом колонок, валидацией и аудитом.

### **12.1.** import.import\_sessions **\-- Сессии импорта**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | uuid | PK, default: gen\_random\_uuid() | Уникальный идентификатор |
| filename | varchar | NOT NULL | Имя файла |
| format | varchar | NOT NULL | Формат файла |
| file\_path | varchar | NOT NULL | Путь к файлу |
| size\_bytes | integer | NOT NULL | Размер в байтах |
| encoding | varchar |  | Кодировка |
| delimiter | varchar |  | Разделитель |
| columns | varchar | NOT NULL | Колонки |
| row\_count | integer | NOT NULL | Количество строк |
| status | varchar | NOT NULL, default: 'pending' | Статус |
| mapping\_config | jsonb |  | Конфигурация маппинга |
| created\_at | timestamp | NOT NULL, default: now() | Дата создания |
| processed\_rows | integer | NOT NULL, default: 0 | Обработано строк |
| created\_count | integer | NOT NULL, default: 0 | Создано записей |
| updated\_count | integer | NOT NULL, default: 0 | Обновлено записей |
| error\_count | integer | NOT NULL, default: 0 | Количество ошибок |
| skipped\_count | integer | NOT NULL, default: 0 | Пропущено записей |
| started\_at | timestamptz |  | Начало обработки |
| finished\_at | timestamptz |  | Конец обработки |
| dedup\_strategy | varchar |  | Стратегия дедупликации |
| dedup\_field | varchar |  | Поле дедупликации |
| error\_message | text |  | Сообщение об ошибке |
| is\_dry\_run | boolean | NOT NULL, default: false | Тестовый запуск |
| blank\_policy | varchar |  | Политика пустых значений |
| protected\_fields | jsonb |  | Защищенные поля |
| batch\_id | uuid | FK \-\> import\_batches.id | Батч |
| target\_entity | varchar |  | Целевая сущность |
| tags | jsonb |  | Теги |
| owner\_assignment | varchar |  | Назначение владельца |
| processed\_file\_rows | integer | NOT NULL, default: 0 | Обработано строк файла |
| db\_rows\_written | integer | NOT NULL, default: 0 | Записано в БД |

**Связи:**

* batch\_id \-\> import.import\_batches.id

### **12.2.** import.import\_batches **\-- Батчи импорта**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | uuid | PK, default: gen\_random\_uuid() | Уникальный идентификатор |
| session\_id | uuid | NOT NULL, FK \-\> import\_sessions.id | Сессия |
| status | varchar | NOT NULL, default: 'active' | Статус |
| created\_at | timestamptz | NOT NULL, default: now() | Дата создания |
| completed\_at | timestamptz |  | Дата завершения |
| total\_rows | integer | NOT NULL, default: 0 | Всего строк |
| processed\_rows | integer | NOT NULL, default: 0 | Обработано строк |
| created\_count | integer | NOT NULL, default: 0 | Создано записей |
| updated\_count | integer | NOT NULL, default: 0 | Обновлено записей |
| error\_count | integer | NOT NULL, default: 0 | Количество ошибок |
| skipped\_count | integer | NOT NULL, default: 0 | Пропущено записей |
| error\_message | text |  | Сообщение об ошибке |

**Связи:**

* session\_id \-\> import.import\_sessions.id

### **12.3.** import.import\_errors **\-- Ошибки импорта**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | uuid | PK, default: gen\_random\_uuid() | Уникальный идентификатор |
| session\_id | uuid | NOT NULL, FK \-\> import\_sessions.id | Сессия |
| row\_number | integer | NOT NULL | Номер строки |
| column\_name | varchar |  | Имя колонки |
| error\_type | varchar | NOT NULL | Тип ошибки |
| error\_message | text | NOT NULL | Сообщение об ошибке |
| raw\_value | text |  | Исходное значение |
| batch\_id | uuid | FK \-\> import\_batches.id | Батч |
| match\_method | varchar(20) |  | Метод сопоставления |

**Связи:**

* session\_id \-\> import.import\_sessions.id  
* batch\_id \-\> import.import\_batches.id

### **12.4.** import.import\_snapshots **\-- Снапшоты импорта**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | integer | PK, auto-increment | Уникальный идентификатор |
| batch\_id | uuid | NOT NULL, FK \-\> import\_batches.id | Батч |
| target\_table | varchar | NOT NULL | Целевая таблица |
| record\_id | integer | NOT NULL | ID записи |
| operation | varchar | NOT NULL | Операция (create/update) |
| old\_values | jsonb |  | Старые значения |
| new\_values | jsonb |  | Новые значения |
| created\_at | timestamptz | NOT NULL, default: now() | Дата создания |

**Связи:**

* batch\_id \-\> import.import\_batches.id

### **12.5.** import.field\_mappings **\-- Маппинг полей**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | integer | PK, auto-increment | Уникальный идентификатор |
| field\_name | varchar | NOT NULL | Имя поля |
| table\_name | varchar | NOT NULL | Имя таблицы |
| ru\_label | varchar | NOT NULL | Русское название |
| is\_alias | boolean | NOT NULL, default: false | Является алиасом |
| alias\_for\_field | varchar |  | Алиас для поля |
| created\_at | timestamp | NOT NULL, default: now() | Дата создания |
| is\_active | boolean | NOT NULL, default: true | Активен |
| data\_type | varchar |  | Тип данных |

### **12.6.** import.aliases **\-- Алиасы**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | integer | PK, auto-increment | Уникальный идентификатор |
| source | varchar | NOT NULL | Источник |
| target | varchar | NOT NULL | Цель |
| ref\_table | varchar | NOT NULL | Справочная таблица |
| created\_at | timestamp | NOT NULL, default: now() | Дата создания |

### **12.7.** import.synonyms **\-- Синонимы**

| Колонка | Тип | Ограничения | Описание |
| :---- | :---- | :---- | :---- |
| id | integer | PK, auto-increment | Уникальный идентификатор |
| synonym | varchar | NOT NULL | Синоним |
| table\_name | varchar | NOT NULL | Имя таблицы |
| field\_name | varchar | NOT NULL | Имя поля |
| created\_at | timestamp | NOT NULL, default: now() | Дата создания |

## **Приложение: Сводная таблица связей (FK)**

| Исходная таблица | Колонка | Целевая таблица | Тип связи |
| :---- | :---- | :---- | :---- |
| activities | client\_id | clients | N:1 |
| activities | created\_by | users.users | N:1 |
| authorized\_persons | client\_id | clients | N:1 |
| bank\_details | client\_id | clients | N:1 |
| billing\_accounts | client\_id | clients | N:1 |
| call\_result | client\_id | clients | N:1 |
| campaign\_sort\_fields | campaign\_id | campaign | N:1 |
| campaign\_task | client\_id | clients | N:1 |
| campaign\_task | manager\_id | result\_managers | N:1 |
| campaign\_task | schedule\_campaign\_id | schedule\_campaign | N:1 |
| campaign\_task\_history | client\_id | clients | N:1 |
| campaign\_task\_history | manager\_id | result\_managers | N:1 |
| campaign\_task\_history | schedule\_campaign\_id | schedule\_campaign | N:1 |
| client\_addresses | address\_type\_id | ref\_address\_types | N:1 |
| client\_addresses | city\_region\_id | ref\_cities\_regions | N:1 |
| client\_addresses | client\_id | clients | N:1 |
| client\_contact | client\_id | clients | N:1 |
| client\_contact | contact\_type\_id | ref\_contact\_info\_types | N:1 |
| client\_id\_documents | client\_id | clients | N:1 |
| client\_id\_documents | document\_type\_id | ref\_id\_document\_types | N:1 |
| client\_phone\_numbers | brand\_id | ref\_brands | N:1 |
| client\_phone\_numbers | client\_id | clients | N:1 |
| client\_products | client\_id | clients | N:1 |
| client\_products | product\_id | products\_services | N:1 |
| client\_requirement\_attachments | requirement\_id | client\_requirements | N:1 |
| client\_requirements | client\_id | clients | N:1 |
| client\_requirements | created\_by | users.users | N:1 |
| client\_restrictions | client\_id | clients | N:1 |
| client\_restrictions | restriction\_type\_id | ref\_restriction\_types | N:1 |
| clients | city\_region\_id | ref\_cities\_regions | N:1 |
| clients | client\_type\_id | ref\_client\_types | N:1 |
| clients | language\_id | ref\_languages | N:1 |
| clients | residency\_id | ref\_residencies | N:1 |
| clients | vip\_status\_id | ref\_vip\_statuses | N:1 |
| clients\_b2b | acquisition\_employee\_id | users.users | N:1 |
| clients\_b2b | acquisition\_head\_id | users.users | N:1 |
| clients\_b2b | category\_id | ref\_client\_categories | N:1 |
| clients\_b2b | client\_id | clients | 1:1 |
| clients\_b2b | department\_id | ref\_departments | N:1 |
| clients\_b2b | industry\_id | ref\_industries | N:1 |
| clients\_b2b | legal\_form\_id | ref\_legal\_forms | N:1 |
| clients\_b2b | retention\_employee\_id | users.users | N:1 |
| clients\_b2b | retention\_head\_id | users.users | N:1 |
| clients\_b2b | segment\_id | ref\_segments | N:1 |
| clients\_b2c | client\_id | clients | 1:1 |
| clients\_b2c | gender\_id | ref\_genders | N:1 |
| clients\_b2c | income\_source\_id | ref\_income\_sources | N:1 |
| clients\_b2c | marital\_status\_id | ref\_marital\_statuses | N:1 |
| communicate\_result | client\_contact\_id | contacts | N:1 |
| communicate\_result | client\_id | clients | N:1 |
| communicate\_result | contract\_id | contracts | N:1 |
| contact\_addresses | address\_type\_id | ref\_address\_types | N:1 |
| contact\_addresses | city\_region\_id | ref\_cities\_regions | N:1 |
| contact\_addresses | contact\_id | contacts | N:1 |
| contact\_careers | contact\_id | contacts | N:1 |
| contact\_contact | contact\_id | contacts | N:1 |
| contact\_contact | contact\_type\_id | ref\_contact\_info\_types | N:1 |
| contact\_id\_documents | contact\_id | contacts | N:1 |
| contact\_id\_documents | document\_type\_id | ref\_id\_document\_types | N:1 |
| contacts | client\_id | clients | N:1 |
| contacts | client\_type\_id | ref\_client\_types | N:1 |
| contacts | gender\_id | ref\_genders | N:1 |
| contacts | language\_id | ref\_languages | N:1 |
| contacts | residency\_id | ref\_residencies | N:1 |
| contacts | role\_id | ref\_contact\_roles | N:1 |
| contract\_documents | contract\_id | contracts | N:1 |
| contract\_documents | document\_type\_id | ref\_document\_types | N:1 |
| contract\_documents | uploaded\_by | users.users | N:1 |
| contract\_history | client\_id | clients | N:1 |
| contract\_history | contract\_id | contracts | N:1 |
| contract\_history | mark\_id | marks | N:1 |
| contract\_products | contract\_id | contracts | N:1 |
| contract\_products | product\_id | products\_services | N:1 |
| contract\_templates | contract\_type\_id | ref\_contract\_types | N:1 |
| contracts | billing\_account\_id | billing\_accounts | N:1 |
| contracts | client\_id | clients | N:1 |
| contracts | contract\_type\_id | ref\_contract\_types | N:1 |
| contracts | currency\_id | ref\_currencies | N:1 |
| contracts | parent\_contract\_id | contracts | N:1 (self) |
| contracts | payment\_form\_id | ref\_payment\_forms | N:1 |
| contracts | responsible\_contact\_id | contacts | N:1 |
| contracts | responsible\_kcell\_id | users.users | N:1 |
| contracts | status\_id | ref\_contract\_statuses | N:1 |
| credit\_history\_individual | individual\_client\_id | individual\_clients | N:1 |
| documents | client\_id | clients | N:1 |
| documents | document\_type\_id | ref\_document\_types | N:1 |
| documents | uploaded\_by | users.users | N:1 |
| employees | department\_id | ref\_departments | N:1 |
| employees | supervisor\_id | employees | N:1 (self) |
| governing\_bodies | client\_id | clients | N:1 |
| identity\_documents | client\_id | clients | N:1 |
| individual\_clients | client\_id | clients | 1:1 |
| marks | parent\_id | marks | N:1 (self) |
| payment\_history | client\_id | clients | N:1 |
| payment\_history | contract\_id | contracts | N:1 |
| payment\_schedule | contract\_id | contracts | N:1 |
| poa\_change\_history | changed\_by | users.users | N:1 |
| poa\_change\_history | poa\_id | powers\_of\_attorney | N:1 |
| powers\_of\_attorney | authorized\_person\_id | authorized\_persons | N:1 |
| powers\_of\_attorney | client\_id | clients | N:1 |
| powers\_of\_attorney | contact\_id | contacts | N:1 |
| powers\_of\_attorney | document\_type\_id | ref\_document\_types | N:1 |
| powers\_of\_attorney | poa\_type\_id | ref\_poa\_types | N:1 |
| processing\_results | client\_id | clients | N:1 |
| processing\_results | contract\_id | contracts | N:1 |
| ref\_departments | parent\_id | ref\_departments | N:1 (self) |
| related\_contracts | contract\_id | contracts | N:1 |
| related\_contracts | related\_contract\_id | contracts | N:1 |
| result\_managers | client\_id | clients | N:1 |
| schedule\_campaign\_days\_of\_week | schedule\_campaign\_id | schedule\_campaign | N:1 |
| schedule\_campaign\_robot | schedule\_campaign\_settings\_id | schedule\_campaign\_settings | N:1 |
| schedule\_campaign\_settings | campaign\_id | campaign | N:1 |
| schedule\_campaign\_settings | schedule\_campaign\_id | schedule\_campaign | N:1 |
| schedule\_campaign\_settings | schedule\_campaign\_user\_id | schedule\_campaign\_user | N:1 |
| schedule\_campaign\_user | schedule\_campaign\_settings\_id | schedule\_campaign\_settings | N:1 |
| skill\_group\_users | skill\_group\_id | skill\_group | N:1 |
| special\_tariff\_plans | client\_id | clients | N:1 |
| special\_tariff\_plans | product\_id | products\_services | N:1 |
| subsidiaries | city\_region\_id | ref\_cities\_regions | N:1 |
| subsidiaries | parent\_client\_id | clients | N:1 |
| tickets | assigned\_to | users.users | N:1 |
| tickets | client\_id | clients | N:1 |
| import\_batches | session\_id | import\_sessions | N:1 |
| import\_errors | batch\_id | import\_batches | N:1 |
| import\_errors | session\_id | import\_sessions | N:1 |
| import\_sessions | batch\_id | import\_batches | N:1 |
| import\_snapshots | batch\_id | import\_batches | N:1 |
| **Схема users** |  |  |  |
| users.users | role\_id | users.role | N:1 |
| users.users | organization\_id | users.organizational\_units | N:1 |
| users.role\_subordination | id\_role\_parent | users.role | N:1 |
| users.role\_subordination | id\_role\_child | users.role | N:1 |
| users.role\_permissions | role\_id | users.role | N:1 |
| users.role\_permissions | api\_id | users.api | N:1 |
| users.organizational\_units | parent\_id | users.organizational\_units | N:1 (self) |
| users.user\_organizational\_units | user\_id | users.users | N:1 |
| users.user\_organizational\_units | organizational\_unit\_id | users.organizational\_units | N:1 |
| users.token | user\_id | users.users | N:1 |
| users.user\_status\_log | user\_id | users.users | N:1 |
| users.dashboard\_attributes | dashboard\_id | users.dashboards | N:1 |
| users.dashboard\_role | dashboard\_id | users.dashboards | N:1 |
| users.dashboard\_role | role\_id | users.role | N:1 |

