-- ============================================================
-- ДОКУМЕНТЫ КЛИЕНТА (documents)
-- document_type_id: 51=CONTRACT_DOC, 52=INVOICE, 53=ACT, 54=LETTER
-- ============================================================

INSERT INTO "client"."documents" (id, client_id, document_type_id, category, status, file_name, file_path, file_size, uploaded_by) VALUES
  (1,  1,  51,  'архив',    'active', 'Договор_KC-2025-1001.pdf',          '/docs/clients/1/contract_1001.pdf',       1100000,  4),
  (2,  1,  52,  'архив',    'active', 'Счёт_февраль_2026.pdf',             '/docs/clients/1/invoice_feb_2026.pdf',    530000,   8),
  (3,  1,  53,  'архив',    'active', 'Акт_Q4_2025.pdf',                   '/docs/clients/1/act_q4_2025.pdf',         270000,   8),
  (4,  2,  51,  'архив',    'active', 'Договор_KC-2024-1015.pdf',          '/docs/clients/2/contract_1015.pdf',       2200000,  4),
  (5,  2,  52,  'архив',    'active', 'Счёт_Q1_2026.pdf',                  '/docs/clients/2/invoice_q1_2026.pdf',     540000,   8),
  (6,  3,  54,  'вложение', 'active', 'Письмо_запрос_реквизитов.pdf',      '/docs/clients/3/letter_req.pdf',          115000,   4),
  (7,  4,  51,  'архив',    'active', 'Договор_KC-2025-1040.pdf',          '/docs/clients/4/contract_1040.pdf',       1600000,  9),
  (8,  5,  51,  'архив',    'active', 'Договор_KC-2025-1050.pdf',          '/docs/clients/5/contract_1050.pdf',       1350000,  9),
  (9,  8,  51,  'архив',    'active', 'Договор_KC-2025-1080.pdf',          '/docs/clients/8/contract_1080.pdf',       1080000,  4),
  (10, 11, 51,  'архив',    'active', 'Договор_KC-2024-1110.pdf',          '/docs/clients/11/contract_1110.pdf',      2700000,  9),
  (11, 11, 53,  'архив',    'active', 'Акт_H1_2025.pdf',                   '/docs/clients/11/act_h1_2025.pdf',        400000,   8),
  (12, 14, 51,  'архив',    'active', 'Договор_KC-2025-1140.pdf',          '/docs/clients/14/contract_1140.pdf',      1500000,  9),
  (13, 18, 51,  'архив',    'active', 'Договор_KC-2024-1180.pdf',          '/docs/clients/18/contract_1180.pdf',      1900000,  9),
  (14, 22, 51,  'архив',    'active', 'Договор_KC-2024-1220.pdf',          '/docs/clients/22/contract_1220.pdf',      3400000,  4),
  (15, 22, 52,  'архив',    'active', 'Счёт_Q4_2025.pdf',                  '/docs/clients/22/invoice_q4_2025.pdf',    800000,   8),
  (16, 22, 53,  'архив',    'active', 'Акт_2025.pdf',                      '/docs/clients/22/act_2025.pdf',           550000,   8),
  (17, 25, 51,  'архив',    'active', 'Договор_KC-2025-1250.pdf',          '/docs/clients/25/contract_1250.pdf',      1700000,  9),
  (18, 29, 51,  'архив',    'active', 'Договор_KC-2024-1290.pdf',          '/docs/clients/29/contract_1290.pdf',      2100000,  9),
  (19, 29, 52,  'архив',    'active', 'Счёт_март_2026.pdf',                '/docs/clients/29/invoice_mar_2026.pdf',   480000,   8),
  (20, 31, 51,  'архив',    'active', 'Договор_KC-2026-C001.pdf',          '/docs/clients/31/contract_c001.pdf',      530000,   7);

-- ДОКУМЕНТЫ ДОГОВОРОВ
-- document_type_id: 51=CONTRACT_DOC, 52=INVOICE
INSERT INTO "client"."contract_documents" (id, contract_id, document_type_id, file_name, file_path, file_size, uploaded_by) VALUES
  (1,  1,  51,  'Подписанный_KC-2025-1001.pdf',   '/docs/contracts/1/signed.pdf',     1600000, 4),
  (2,  2,  51,  'Спецификация_VPN.pdf',            '/docs/contracts/2/vpn_spec.pdf',   320000,  4),
  (3,  3,  51,  'Подписанный_KC-2024-1015.pdf',    '/docs/contracts/3/signed.pdf',     2600000, 4),
  (4,  5,  52,  'Счёт_GlobalMining_Q1_2026.pdf',   '/docs/contracts/5/inv_q1.pdf',     470000,  4),
  (5,  6,  51,  'Подписанный_KC-2025-1040.pdf',    '/docs/contracts/6/signed.pdf',     1700000, 9),
  (6,  8,  51,  'Подписанный_KC-2025-1050.pdf',    '/docs/contracts/8/signed.pdf',     1400000, 9),
  (7,  16, 51,  'Подписанный_KC-2024-1110.pdf',    '/docs/contracts/16/signed.pdf',    3000000, 9),
  (8,  31, 51,  'Подписанный_KC-2024-1220.pdf',    '/docs/contracts/31/signed.pdf',    3700000, 4),
  (9,  41, 51,  'Подписанный_KC-2024-1290.pdf',    '/docs/contracts/41/signed.pdf',    2300000, 9),
  (10, 44, 51,  'Подписанный_KC-2026-C001.pdf',    '/docs/contracts/44/signed.pdf',    570000,  7);

-- ДОВЕРЕННОСТИ
-- poa_type_id: 59=GENERAL, 60=SPECIAL, 61=ONE_TIME; document_type_id: 51
INSERT INTO "client"."powers_of_attorney" (id, client_id, contact_id, poa_type_id, document_type_id, start_date, end_date, status, file_name, file_path, expiry_notification_sent) VALUES
  (1,  1,  1,  59,  51,  '2025-02-01', '2028-01-31', 'active',   'Доверенность_Сатыбалдиев.pdf',    '/docs/poa/1/satybaldiev.pdf',    false),
  (2,  1,  2,  60,  51,  '2025-02-01', '2026-02-28', 'inactive', 'Доверенность_Ковалёва.pdf',        '/docs/poa/1/kovaleva.pdf',       true),
  (3,  2,  3,  59,  51,  '2024-07-01', '2027-06-30', 'active',   'Доверенность_Аманжолов.pdf',      '/docs/poa/2/amanzholov.pdf',     false),
  (4,  3,  5,  61,  51,  '2025-11-01', '2026-05-01', 'active',   'POA_Williams.pdf',                '/docs/poa/3/williams.pdf',       false),
  (5,  4,  6,  59,  51,  '2025-03-01', '2028-02-28', 'active',   'Доверенность_Бекенова.pdf',       '/docs/poa/4/bekenova.pdf',       false),
  (6,  5,  8,  60,  51,  '2025-04-01', '2026-03-31', 'active',   'Доверенность_Чен.pdf',            '/docs/poa/5/chen.pdf',           false),
  (7,  11, 15, 59,  51,  '2024-10-01', '2027-09-30', 'active',   'Доверенность_Жумагалиев.pdf',     '/docs/poa/11/zhumagaliev.pdf',   false),
  (8,  18, 18, 60,  51,  '2024-09-01', '2026-08-31', 'active',   'Доверенность_Утемисов.pdf',       '/docs/poa/18/utemisov.pdf',      false),
  (9,  22, 20, 59,  51,  '2024-05-01', '2027-04-30', 'active',   'Доверенность_Бисенбаев.pdf',      '/docs/poa/22/bisenbaev.pdf',     false),
  (10, 22, 21, 60,  51,  '2024-05-01', '2026-01-31', 'inactive', 'Доверенность_Мухамеджанова.pdf',  '/docs/poa/22/mukhamedzhanova.pdf',true),
  (11, 29, 24, 59,  51,  '2024-11-01', '2027-10-31', 'active',   'Доверенность_Абдикаримов.pdf',    '/docs/poa/29/abdikarimov.pdf',   false);

-- ИСТОРИЯ ИЗМЕНЕНИЙ ДОВЕРЕННОСТЕЙ
INSERT INTO "client"."poa_change_history" (id, poa_id, field_changed, old_value, new_value, changed_by) VALUES
  (1, 2,  'status',   'active',     'inactive',   4),
  (2, 2,  'end_date', '2028-01-31', '2026-02-28', 4),
  (3, 10, 'status',   'active',     'inactive',   4),
  (4, 10, 'end_date', '2027-04-30', '2026-01-31', 4);
