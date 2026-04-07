Маппинг таблиц полей сущности Лид B2C с таблицы kcell\_test\_db

**Таблица 1: Профиль клиента**

**Поле**

**Тип**

**Обяз.**

**Валидация**

**Mapping (БД)**

Фамилия / Имя

Input

Да

Текст

full\_name

ИИН

Mask

Да

12 цифр, проверка контрольного числа

iin

Номер телефона

Mask

Да

+7 (7XX) XXX-XX-XX

primary\_phone

Email

Input

Нет

RFC 5322

email

Пол

Select

Да

Мужской / Женский

gender

Город

Select

Да

Справочник регионов

region\_id

**Таблица 2: Сведения из Nexign (Read‑only)**

**Поле**

**Описание**

**Mapping (БД)**

Баланс

Текущий остаток (₸)

balance

Лицевой счет

Номер ЛС в биллинге

account\_number

Текущий ТП

Активный тарифный план

tariff\_plan

Статус абонента

Состояние (Активен / Блокирован)

subscriber\_status

Тип оплаты

Авансовый / Кредитный

payment\_type

**Таблица 3: Расчет стоимости**

**Поле**

**Тип**

**Логика**

**Mapping (БД)**

Форма оплаты

Select

Наличные / Карта / Рассрочка

payment\_method

Тип услуги

Select

ТП / Девайс / Комплект

service\_type\_id

Абонентская плата

Money

Базовая ставка из справочника

base\_cost

Скидка

Select

Промо‑коды / Спец. условия

discount\_id

Остаточная стоимость

Money

Формула: **Cost = Base − Discount**

final\_cost

**Таблица 4: Верификация клиента**

**Поле**

**Тип**

**Обяз.**

**Логика / Валидация**

**Mapping (БД)**

Документ (тип)

Select

Да

Справочник типов документов

document\_type\_id

Номер документа

Input

Да

Формат: серия + номер

document\_number

Дата выдачи документа

Date

Да

Проверка на актуальность

document\_issue\_date

SMS OTP

Mask

Да

6 цифр, проверка по шлюзу

otp\_code

Статус скоринга

Label

Да

Результат проверки КБКИ

scoring\_status

Результат верификации

Label

Да

Enum: PENDING / SUCCESS / REJECTED

verification\_status

**Таблица 5: Продажа и оформление**

**Поле**

**Тип**

**Обяз.**

**Логика / Валидация**

**Mapping (БД)**

Итоговый продукт

Select

Да

Справочник продуктов

product\_id

Условия оплаты

Select

Да

Наличные / Карта / Рассрочка

payment\_method

Город доставки

Select

Да

Справочник городов

delivery\_city\_id

Адрес доставки

Input

Нет

Улица, дом, квартира

delivery\_address

Ответственный менеджер

Search

Да

Автопоиск по сотрудникам

responsible\_id

Итоговый статус сделки

Label

Да

Enum: CLOSED\_WON / CLOSED\_LOST

status\_code

Причина отказа

Select

Нет

Справочник причин отказа (если CLOSED\_LOST)

rejection\_reason\_id

**Таблица 6: Метаданные сделки**

**Поле**

**Тип**

**Обяз.**

**Логика / Валидация**

**Mapping (БД)**

ID

UUID

Да

Первичный ключ

id

Номер лида

String

Да

Уникальный номер лида

lead\_number

Дата создания

Timestamp

Да

Автоматическая генерация

created\_at

Дата обновления

Timestamp

Да

Автоматическая генерация

updated\_at

Ответственный

FK

Нет

Ссылка на таблицу users

responsible\_id

Текущий шаг

Integer

Нет

1–5 (этапы state‑machine)

current\_step

Итоговый статус

Enum

Да

CLOSED\_WON / CLOSED\_LOST

status\_code