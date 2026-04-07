-- ============================================================
-- СПРАВОЧНЫЕ ДАННЫЕ (ref_* таблицы)
-- Все ID соответствуют ссылкам в тестовых данных
-- ============================================================

-- ref_client_types: 1-6
INSERT INTO "client"."ref_client_types" (id, code, name) VALUES
  (1, 'POTENTIAL',  'Потенциальный'),
  (2, 'FORMER',     'Бывший'),
  (3, 'B2B',        'B2B'),
  (4, 'B2C',        'B2C'),
  (5, 'PARTNER',    'Партнёр'),
  (6, 'AGENT',      'Агент');

-- ref_genders: 7-8
INSERT INTO "client"."ref_genders" (id, code, name) VALUES
  (7, 'M', 'Мужской'),
  (8, 'F', 'Женский');

-- ref_languages: 9-11
INSERT INTO "client"."ref_languages" (id, code, name) VALUES
  (9,  'KZ', 'Казахский'),
  (10, 'RU', 'Русский'),
  (11, 'EN', 'Английский');

-- ref_residencies: 12-13
INSERT INTO "client"."ref_residencies" (id, code, name) VALUES
  (12, 'RESIDENT',     'Резидент'),
  (13, 'NON_RESIDENT', 'Нерезидент');

-- ref_segments: 14-16
INSERT INTO "client"."ref_segments" (id, name) VALUES
  (14, 'Large'),
  (15, 'Medium'),
  (16, 'Small');

-- ref_industries: 17-26
INSERT INTO "client"."ref_industries" (id, name) VALUES
  (17, 'Телекоммуникации'),
  (18, 'Финансы и банки'),
  (19, 'Нефть и газ'),
  (20, 'Горнодобывающая промышленность'),
  (21, 'Ритейл и торговля'),
  (22, 'Информационные технологии'),
  (23, 'Строительство'),
  (24, 'Транспорт и логистика'),
  (25, 'Производство'),
  (26, 'Прочее');

-- ref_client_categories: 27-29
INSERT INTO "client"."ref_client_categories" (id, code, name) VALUES
  (27, 'A', 'Категория A'),
  (28, 'B', 'Категория B'),
  (29, 'C', 'Категория C');

-- ref_vip_statuses: 30-31
INSERT INTO "client"."ref_vip_statuses" (id, code, name) VALUES
  (30, 'TOP', 'TOP'),
  (31, 'VIP', 'VIP');

-- ref_legal_forms: 32-35
INSERT INTO "client"."ref_legal_forms" (id, code, name) VALUES
  (32, 'TOO',   'Товарищество с ограниченной ответственностью'),
  (33, 'AO',    'Акционерное общество'),
  (34, 'IP',    'Индивидуальный предприниматель'),
  (35, 'OTHER', 'Иная организационно-правовая форма');

-- ref_brands: 36-37
INSERT INTO "client"."ref_brands" (id, code, name) VALUES
  (36, 'ACTIV', 'Актив'),
  (37, 'KCELL', 'Кселл');

-- ref_currencies: 38-39
INSERT INTO "client"."ref_currencies" (id, code, name) VALUES
  (38, 'KZT', 'Казахстанский тенге'),
  (39, 'USD', 'Доллар США');

-- ref_contract_types: 42-44
INSERT INTO "client"."ref_contract_types" (id, code, name) VALUES
  (42, 'CONTRACT',      'Договор'),
  (43, 'SPECIFICATION', 'Спецификация'),
  (44, 'ADDENDUM',      'Дополнительное соглашение');

-- ref_contract_statuses: 45-47
INSERT INTO "client"."ref_contract_statuses" (id, code, name) VALUES
  (45, 'DRAFT',      'Подготовка'),
  (46, 'ACTIVE',     'Действующий'),
  (47, 'TERMINATED', 'Расторгнут');

-- ref_payment_forms: 48-50
INSERT INTO "client"."ref_payment_forms" (id, code, name) VALUES
  (48, 'PREPAID',  'Предоплата'),
  (49, 'CREDIT',   'Кредит'),
  (50, 'POSTPAID', 'Постоплата');

-- ref_document_types: 51-54
INSERT INTO "client"."ref_document_types" (id, code, name) VALUES
  (51, 'CONTRACT_DOC', 'Договор'),
  (52, 'INVOICE',      'Счёт'),
  (53, 'ACT',          'Акт'),
  (54, 'LETTER',       'Письмо');

-- ref_id_document_types: 56-57
INSERT INTO "client"."ref_id_document_types" (id, code, name) VALUES
  (56, 'PASSPORT', 'Паспорт'),
  (57, 'ID_CARD',  'Удостоверение личности');

-- ref_poa_types: 59-61
INSERT INTO "client"."ref_poa_types" (id, code, name) VALUES
  (59, 'GENERAL',  'Генеральная доверенность'),
  (60, 'SPECIAL',  'Специальная доверенность'),
  (61, 'ONE_TIME', 'Разовая доверенность');

-- ref_marital_statuses: 62-64
INSERT INTO "client"."ref_marital_statuses" (id, code, name) VALUES
  (62, 'SINGLE',   'Холост / Не замужем'),
  (63, 'MARRIED',  'Женат / Замужем'),
  (64, 'DIVORCED', 'Разведён / Разведена');

-- ref_income_sources: 66-67
INSERT INTO "client"."ref_income_sources" (id, name) VALUES
  (66, 'Заработная плата'),
  (67, 'Предпринимательская деятельность');

-- ref_cities_regions: 70-87
INSERT INTO "client"."ref_cities_regions" (id, name, region) VALUES
  (70, 'Алматы',              'Алматинская область'),
  (71, 'Астана',               'Акмолинская область'),
  (72, 'Шымкент',             'Туркестанская область'),
  (73, 'Караганда',            'Карагандинская область'),
  (74, 'Актобе',               'Актюбинская область'),
  (75, 'Атырау',               'Атырауская область'),
  (76, 'Павлодар',             'Павлодарская область'),
  (77, 'Усть-Каменогорск',    'Восточно-Казахстанская область'),
  (78, 'Семей',                'Область Абай'),
  (79, 'Костанай',             'Костанайская область'),
  (80, 'Тараз',                'Жамбылская область'),
  (81, 'Петропавловск',        'Северо-Казахстанская область'),
  (82, 'Кызылорда',            'Кызылординская область'),
  (83, 'Уральск',              'Западно-Казахстанская область'),
  (84, 'Актау',                'Мангистауская область'),
  (85, 'Талдыкорган',          'Жетысуская область'),
  (86, 'Туркестан',            'Туркестанская область'),
  (87, 'Кокшетау',             'Акмолинская область');

-- ref_departments: 88-92
INSERT INTO "client"."ref_departments" (id, name, parent_id) VALUES
  (88, 'Дирекция B2B',                NULL),
  (89, 'Сектор Acquisition',          88),
  (90, 'Сектор Retention',            88),
  (91, 'Дирекция B2C',                NULL),
  (92, 'Отдел B2C продаж',            91);

-- ref_restriction_types: 93-95
INSERT INTO "client"."ref_restriction_types" (id, code, name) VALUES
  (93, 'STOP_LIST',        'Стоп-лист'),
  (94, 'PRODUCT_CONFLICT', 'Конфликт по продуктам'),
  (95, 'DEBT',             'Задолженность');

-- ref_contact_roles: 96-99
INSERT INTO "client"."ref_contact_roles" (id, code, name) VALUES
  (96, 'DECISION_MAKER',  'Лицо, принимающее решения'),
  (97, 'TECHNICAL',       'Техническое контактное лицо'),
  (98, 'FINANCIAL',       'Финансовое контактное лицо'),
  (99, 'OPERATIONAL',     'Операционное контактное лицо');

-- ref_address_types: 100-101
INSERT INTO "client"."ref_address_types" (id, code, name) VALUES
  (100, 'LEGAL',  'Юридический адрес'),
  (101, 'ACTUAL', 'Фактический адрес');

-- ref_contact_info_types: 103-106
INSERT INTO "client"."ref_contact_info_types" (id, code, name) VALUES
  (103, 'PHONE',    'Телефон'),
  (104, 'EMAIL',    'Электронная почта'),
  (105, 'WHATSAPP', 'WhatsApp'),
  (106, 'TELEGRAM', 'Telegram');
