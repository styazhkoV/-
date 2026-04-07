-- ============================================================
-- ПРОВЕРКА ТЕСТОВЫХ ДАННЫХ
-- Запустите после загрузки всех файлов 01-12
-- ============================================================

-- ============================================================
-- 1. ПОДСЧЁТ ЗАПИСЕЙ ПО ТАБЛИЦАМ
-- ============================================================

SELECT '=== ПОДСЧЁТ ЗАПИСЕЙ ===' AS section;

SELECT 'ref_client_types' AS table_name, COUNT(*) AS cnt FROM "client"."ref_client_types"
UNION ALL SELECT 'ref_genders', COUNT(*) FROM "client"."ref_genders"
UNION ALL SELECT 'ref_languages', COUNT(*) FROM "client"."ref_languages"
UNION ALL SELECT 'ref_residencies', COUNT(*) FROM "client"."ref_residencies"
UNION ALL SELECT 'ref_segments', COUNT(*) FROM "client"."ref_segments"
UNION ALL SELECT 'ref_industries', COUNT(*) FROM "client"."ref_industries"
UNION ALL SELECT 'ref_client_categories', COUNT(*) FROM "client"."ref_client_categories"
UNION ALL SELECT 'ref_vip_statuses', COUNT(*) FROM "client"."ref_vip_statuses"
UNION ALL SELECT 'ref_legal_forms', COUNT(*) FROM "client"."ref_legal_forms"
UNION ALL SELECT 'ref_brands', COUNT(*) FROM "client"."ref_brands"
UNION ALL SELECT 'ref_currencies', COUNT(*) FROM "client"."ref_currencies"
UNION ALL SELECT 'ref_contract_types', COUNT(*) FROM "client"."ref_contract_types"
UNION ALL SELECT 'ref_contract_statuses', COUNT(*) FROM "client"."ref_contract_statuses"
UNION ALL SELECT 'ref_payment_forms', COUNT(*) FROM "client"."ref_payment_forms"
UNION ALL SELECT 'ref_document_types', COUNT(*) FROM "client"."ref_document_types"
UNION ALL SELECT 'ref_id_document_types', COUNT(*) FROM "client"."ref_id_document_types"
UNION ALL SELECT 'ref_poa_types', COUNT(*) FROM "client"."ref_poa_types"
UNION ALL SELECT 'ref_marital_statuses', COUNT(*) FROM "client"."ref_marital_statuses"
UNION ALL SELECT 'ref_income_sources', COUNT(*) FROM "client"."ref_income_sources"
UNION ALL SELECT 'ref_cities_regions', COUNT(*) FROM "client"."ref_cities_regions"
UNION ALL SELECT 'ref_departments', COUNT(*) FROM "client"."ref_departments"
UNION ALL SELECT 'ref_restriction_types', COUNT(*) FROM "client"."ref_restriction_types"
UNION ALL SELECT 'ref_contact_roles', COUNT(*) FROM "client"."ref_contact_roles"
UNION ALL SELECT 'ref_address_types', COUNT(*) FROM "client"."ref_address_types"
UNION ALL SELECT 'ref_contact_info_types', COUNT(*) FROM "client"."ref_contact_info_types"
UNION ALL SELECT 'employees', COUNT(*) FROM "client"."employees"
UNION ALL SELECT 'products_services', COUNT(*) FROM "client"."products_services"
UNION ALL SELECT 'clients', COUNT(*) FROM "client"."clients"
UNION ALL SELECT 'clients_b2b', COUNT(*) FROM "client"."clients_b2b"
UNION ALL SELECT 'clients_b2c', COUNT(*) FROM "client"."clients_b2c"
UNION ALL SELECT 'client_contact', COUNT(*) FROM "client"."client_contact"
UNION ALL SELECT 'client_id_documents', COUNT(*) FROM "client"."client_id_documents"
UNION ALL SELECT 'client_addresses', COUNT(*) FROM "client"."client_addresses"
UNION ALL SELECT 'client_phone_numbers', COUNT(*) FROM "client"."client_phone_numbers"
UNION ALL SELECT 'bank_details', COUNT(*) FROM "client"."bank_details"
UNION ALL SELECT 'billing_accounts', COUNT(*) FROM "client"."billing_accounts"
UNION ALL SELECT 'contacts', COUNT(*) FROM "client"."contacts"
UNION ALL SELECT 'contact_contact', COUNT(*) FROM "client"."contact_contact"
UNION ALL SELECT 'contact_id_documents', COUNT(*) FROM "client"."contact_id_documents"
UNION ALL SELECT 'contact_careers', COUNT(*) FROM "client"."contact_careers"
UNION ALL SELECT 'contact_addresses', COUNT(*) FROM "client"."contact_addresses"
UNION ALL SELECT 'subsidiaries', COUNT(*) FROM "client"."subsidiaries"
UNION ALL SELECT 'authorized_persons', COUNT(*) FROM "client"."authorized_persons"
UNION ALL SELECT 'client_products', COUNT(*) FROM "client"."client_products"
UNION ALL SELECT 'special_tariff_plans', COUNT(*) FROM "client"."special_tariff_plans"
UNION ALL SELECT 'contracts', COUNT(*) FROM "client"."contracts"
UNION ALL SELECT 'contract_products', COUNT(*) FROM "client"."contract_products"
UNION ALL SELECT 'related_contracts', COUNT(*) FROM "client"."related_contracts"
UNION ALL SELECT 'contract_templates', COUNT(*) FROM "client"."contract_templates"
UNION ALL SELECT 'documents', COUNT(*) FROM "client"."documents"
UNION ALL SELECT 'contract_documents', COUNT(*) FROM "client"."contract_documents"
UNION ALL SELECT 'powers_of_attorney', COUNT(*) FROM "client"."powers_of_attorney"
UNION ALL SELECT 'poa_change_history', COUNT(*) FROM "client"."poa_change_history"
UNION ALL SELECT 'client_restrictions', COUNT(*) FROM "client"."client_restrictions"
UNION ALL SELECT 'client_requirements', COUNT(*) FROM "client"."client_requirements"
UNION ALL SELECT 'client_requirement_attachments', COUNT(*) FROM "client"."client_requirement_attachments"
UNION ALL SELECT 'activities', COUNT(*) FROM "client"."activities"
UNION ALL SELECT 'tickets', COUNT(*) FROM "client"."tickets"
ORDER BY table_name;


-- ============================================================
-- 2. ПРОВЕРКА ССЫЛОЧНОЙ ЦЕЛОСТНОСТИ (FK)
-- ============================================================

SELECT '=== ПРОВЕРКА ССЫЛОЧНОЙ ЦЕЛОСТНОСТИ ===' AS section;

-- clients → ref_client_types
SELECT 'clients → ref_client_types: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
LEFT JOIN "client"."ref_client_types" r ON c.client_type_id = r.id
WHERE r.id IS NULL;

-- clients → ref_residencies
SELECT 'clients → ref_residencies: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
LEFT JOIN "client"."ref_residencies" r ON c.residency_id = r.id
WHERE r.id IS NULL;

-- clients → ref_languages
SELECT 'clients → ref_languages: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
LEFT JOIN "client"."ref_languages" r ON c.language_id = r.id
WHERE r.id IS NULL;

-- clients → ref_cities_regions
SELECT 'clients → ref_cities_regions: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
LEFT JOIN "client"."ref_cities_regions" r ON c.city_region_id = r.id
WHERE r.id IS NULL;

-- clients → ref_vip_statuses (nullable)
SELECT 'clients → ref_vip_statuses: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
LEFT JOIN "client"."ref_vip_statuses" r ON c.vip_status_id = r.id
WHERE c.vip_status_id IS NOT NULL AND r.id IS NULL;

-- clients_b2b → clients
SELECT 'clients_b2b → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2b" b
LEFT JOIN "client"."clients" c ON b.client_id = c.id
WHERE c.id IS NULL;

-- clients_b2b → ref_segments
SELECT 'clients_b2b → ref_segments: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2b" b
LEFT JOIN "client"."ref_segments" r ON b.segment_id = r.id
WHERE r.id IS NULL;

-- clients_b2b → ref_industries
SELECT 'clients_b2b → ref_industries: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2b" b
LEFT JOIN "client"."ref_industries" r ON b.industry_id = r.id
WHERE r.id IS NULL;

-- clients_b2b → ref_client_categories
SELECT 'clients_b2b → ref_client_categories: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2b" b
LEFT JOIN "client"."ref_client_categories" r ON b.category_id = r.id
WHERE r.id IS NULL;

-- clients_b2b → ref_legal_forms
SELECT 'clients_b2b → ref_legal_forms: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2b" b
LEFT JOIN "client"."ref_legal_forms" r ON b.legal_form_id = r.id
WHERE r.id IS NULL;

-- clients_b2b → ref_departments
SELECT 'clients_b2b → ref_departments: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2b" b
LEFT JOIN "client"."ref_departments" r ON b.department_id = r.id
WHERE r.id IS NULL;

-- clients_b2b → employees (acquisition)
SELECT 'clients_b2b → employees (acquisition): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2b" b
LEFT JOIN "client"."employees" e ON b.acquisition_employee_id = e.id
WHERE b.acquisition_employee_id IS NOT NULL AND e.id IS NULL;

-- clients_b2b → employees (retention)
SELECT 'clients_b2b → employees (retention): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2b" b
LEFT JOIN "client"."employees" e ON b.retention_employee_id = e.id
WHERE b.retention_employee_id IS NOT NULL AND e.id IS NULL;

-- clients_b2c → clients
SELECT 'clients_b2c → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2c" b
LEFT JOIN "client"."clients" c ON b.client_id = c.id
WHERE c.id IS NULL;

-- clients_b2c → ref_genders
SELECT 'clients_b2c → ref_genders: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2c" b
LEFT JOIN "client"."ref_genders" r ON b.gender_id = r.id
WHERE r.id IS NULL;

-- clients_b2c → ref_income_sources
SELECT 'clients_b2c → ref_income_sources: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2c" b
LEFT JOIN "client"."ref_income_sources" r ON b.income_source_id = r.id
WHERE r.id IS NULL;

-- clients_b2c → ref_marital_statuses
SELECT 'clients_b2c → ref_marital_statuses: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."clients_b2c" b
LEFT JOIN "client"."ref_marital_statuses" r ON b.marital_status_id = r.id
WHERE r.id IS NULL;

-- employees → ref_departments
SELECT 'employees → ref_departments: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."employees" e
LEFT JOIN "client"."ref_departments" r ON e.department_id = r.id
WHERE r.id IS NULL;

-- employees → employees (supervisor)
SELECT 'employees → employees (supervisor): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."employees" e
LEFT JOIN "client"."employees" s ON e.supervisor_id = s.id
WHERE e.supervisor_id IS NOT NULL AND s.id IS NULL;

-- client_contact → clients
SELECT 'client_contact → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_contact" cc
LEFT JOIN "client"."clients" c ON cc.client_id = c.id
WHERE c.id IS NULL;

-- client_contact → ref_contact_info_types
SELECT 'client_contact → ref_contact_info_types: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_contact" cc
LEFT JOIN "client"."ref_contact_info_types" r ON cc.contact_type_id = r.id
WHERE r.id IS NULL;

-- client_addresses → clients
SELECT 'client_addresses → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_addresses" ca
LEFT JOIN "client"."clients" c ON ca.client_id = c.id
WHERE c.id IS NULL;

-- client_addresses → ref_address_types
SELECT 'client_addresses → ref_address_types: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_addresses" ca
LEFT JOIN "client"."ref_address_types" r ON ca.address_type_id = r.id
WHERE r.id IS NULL;

-- client_addresses → ref_cities_regions
SELECT 'client_addresses → ref_cities_regions: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_addresses" ca
LEFT JOIN "client"."ref_cities_regions" r ON ca.city_region_id = r.id
WHERE r.id IS NULL;

-- client_phone_numbers → clients
SELECT 'client_phone_numbers → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_phone_numbers" pn
LEFT JOIN "client"."clients" c ON pn.client_id = c.id
WHERE c.id IS NULL;

-- client_phone_numbers → ref_brands
SELECT 'client_phone_numbers → ref_brands: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_phone_numbers" pn
LEFT JOIN "client"."ref_brands" r ON pn.brand_id = r.id
WHERE r.id IS NULL;

-- billing_accounts → clients
SELECT 'billing_accounts → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."billing_accounts" ba
LEFT JOIN "client"."clients" c ON ba.client_id = c.id
WHERE c.id IS NULL;

-- contacts → clients
SELECT 'contacts → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contacts" ct
LEFT JOIN "client"."clients" c ON ct.client_id = c.id
WHERE c.id IS NULL;

-- contacts → ref_contact_roles
SELECT 'contacts → ref_contact_roles: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contacts" ct
LEFT JOIN "client"."ref_contact_roles" r ON ct.role_id = r.id
WHERE r.id IS NULL;

-- subsidiaries → clients (parent)
SELECT 'subsidiaries → clients (parent): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."subsidiaries" s
LEFT JOIN "client"."clients" c ON s.parent_client_id = c.id
WHERE c.id IS NULL;

-- client_products → clients
SELECT 'client_products → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_products" cp
LEFT JOIN "client"."clients" c ON cp.client_id = c.id
WHERE c.id IS NULL;

-- client_products → products_services
SELECT 'client_products → products_services: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_products" cp
LEFT JOIN "client"."products_services" p ON cp.product_id = p.id
WHERE p.id IS NULL;

-- contracts → clients
SELECT 'contracts → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contracts" ct
LEFT JOIN "client"."clients" c ON ct.client_id = c.id
WHERE c.id IS NULL;

-- contracts → ref_contract_types
SELECT 'contracts → ref_contract_types: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contracts" ct
LEFT JOIN "client"."ref_contract_types" r ON ct.contract_type_id = r.id
WHERE r.id IS NULL;

-- contracts → ref_contract_statuses
SELECT 'contracts → ref_contract_statuses: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contracts" ct
LEFT JOIN "client"."ref_contract_statuses" r ON ct.status_id = r.id
WHERE r.id IS NULL;

-- contracts → ref_payment_forms
SELECT 'contracts → ref_payment_forms: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contracts" ct
LEFT JOIN "client"."ref_payment_forms" r ON ct.payment_form_id = r.id
WHERE r.id IS NULL;

-- contracts → ref_currencies
SELECT 'contracts → ref_currencies: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contracts" ct
LEFT JOIN "client"."ref_currencies" r ON ct.currency_id = r.id
WHERE r.id IS NULL;

-- contracts → employees (responsible_kcell)
SELECT 'contracts → employees (responsible): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contracts" ct
LEFT JOIN "client"."employees" e ON ct.responsible_kcell_id = e.id
WHERE ct.responsible_kcell_id IS NOT NULL AND e.id IS NULL;

-- contracts → contacts (responsible_contact)
SELECT 'contracts → contacts (responsible): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contracts" ct
LEFT JOIN "client"."contacts" co ON ct.responsible_contact_id = co.id
WHERE ct.responsible_contact_id IS NOT NULL AND co.id IS NULL;

-- contracts → billing_accounts
SELECT 'contracts → billing_accounts: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contracts" ct
LEFT JOIN "client"."billing_accounts" ba ON ct.billing_account_id = ba.id
WHERE ct.billing_account_id IS NOT NULL AND ba.id IS NULL;

-- contracts → contracts (parent)
SELECT 'contracts → contracts (parent): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contracts" ct
LEFT JOIN "client"."contracts" p ON ct.parent_contract_id = p.id
WHERE ct.parent_contract_id IS NOT NULL AND p.id IS NULL;

-- contract_products → contracts
SELECT 'contract_products → contracts: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contract_products" cp
LEFT JOIN "client"."contracts" ct ON cp.contract_id = ct.id
WHERE ct.id IS NULL;

-- contract_products → products_services
SELECT 'contract_products → products_services: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contract_products" cp
LEFT JOIN "client"."products_services" p ON cp.product_id = p.id
WHERE p.id IS NULL;

-- related_contracts → contracts
SELECT 'related_contracts → contracts: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."related_contracts" rc
LEFT JOIN "client"."contracts" c1 ON rc.contract_id = c1.id
LEFT JOIN "client"."contracts" c2 ON rc.related_contract_id = c2.id
WHERE c1.id IS NULL OR c2.id IS NULL;

-- documents → clients
SELECT 'documents → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."documents" d
LEFT JOIN "client"."clients" c ON d.client_id = c.id
WHERE c.id IS NULL;

-- documents → employees (uploaded_by)
SELECT 'documents → employees (uploaded_by): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."documents" d
LEFT JOIN "client"."employees" e ON d.uploaded_by = e.id
WHERE d.uploaded_by IS NOT NULL AND e.id IS NULL;

-- contract_documents → contracts
SELECT 'contract_documents → contracts: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contract_documents" cd
LEFT JOIN "client"."contracts" ct ON cd.contract_id = ct.id
WHERE ct.id IS NULL;

-- powers_of_attorney → clients
SELECT 'powers_of_attorney → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."powers_of_attorney" poa
LEFT JOIN "client"."clients" c ON poa.client_id = c.id
WHERE c.id IS NULL;

-- powers_of_attorney → contacts
SELECT 'powers_of_attorney → contacts: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."powers_of_attorney" poa
LEFT JOIN "client"."contacts" ct ON poa.contact_id = ct.id
WHERE ct.id IS NULL;

-- powers_of_attorney → ref_poa_types
SELECT 'powers_of_attorney → ref_poa_types: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."powers_of_attorney" poa
LEFT JOIN "client"."ref_poa_types" r ON poa.poa_type_id = r.id
WHERE r.id IS NULL;

-- client_restrictions → clients
SELECT 'client_restrictions → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_restrictions" cr
LEFT JOIN "client"."clients" c ON cr.client_id = c.id
WHERE c.id IS NULL;

-- client_restrictions → ref_restriction_types
SELECT 'client_restrictions → ref_restriction_types: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_restrictions" cr
LEFT JOIN "client"."ref_restriction_types" r ON cr.restriction_type_id = r.id
WHERE r.id IS NULL;

-- client_requirements → clients
SELECT 'client_requirements → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_requirements" cr
LEFT JOIN "client"."clients" c ON cr.client_id = c.id
WHERE c.id IS NULL;

-- client_requirements → employees (created_by)
SELECT 'client_requirements → employees (created_by): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_requirements" cr
LEFT JOIN "client"."employees" e ON cr.created_by = e.id
WHERE cr.created_by IS NOT NULL AND e.id IS NULL;

-- client_requirement_attachments → client_requirements
SELECT 'requirement_attachments → requirements: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_requirement_attachments" a
LEFT JOIN "client"."client_requirements" r ON a.requirement_id = r.id
WHERE r.id IS NULL;

-- activities → clients
SELECT 'activities → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."activities" a
LEFT JOIN "client"."clients" c ON a.client_id = c.id
WHERE c.id IS NULL;

-- activities → employees (created_by)
SELECT 'activities → employees (created_by): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."activities" a
LEFT JOIN "client"."employees" e ON a.created_by = e.id
WHERE a.created_by IS NOT NULL AND e.id IS NULL;

-- tickets → clients
SELECT 'tickets → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."tickets" t
LEFT JOIN "client"."clients" c ON t.client_id = c.id
WHERE c.id IS NULL;

-- tickets → employees (assigned_to)
SELECT 'tickets → employees (assigned_to): БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."tickets" t
LEFT JOIN "client"."employees" e ON t.assigned_to = e.id
WHERE t.assigned_to IS NOT NULL AND e.id IS NULL;

-- contact_contact → contacts
SELECT 'contact_contact → contacts: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contact_contact" cc
LEFT JOIN "client"."contacts" c ON cc.contact_id = c.id
WHERE c.id IS NULL;

-- contact_id_documents → contacts
SELECT 'contact_id_documents → contacts: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contact_id_documents" cd
LEFT JOIN "client"."contacts" c ON cd.contact_id = c.id
WHERE c.id IS NULL;

-- contact_careers → contacts
SELECT 'contact_careers → contacts: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contact_careers" cc
LEFT JOIN "client"."contacts" c ON cc.contact_id = c.id
WHERE c.id IS NULL;

-- contact_addresses → contacts
SELECT 'contact_addresses → contacts: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."contact_addresses" ca
LEFT JOIN "client"."contacts" c ON ca.contact_id = c.id
WHERE c.id IS NULL;

-- client_id_documents → clients
SELECT 'client_id_documents → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."client_id_documents" d
LEFT JOIN "client"."clients" c ON d.client_id = c.id
WHERE c.id IS NULL;

-- special_tariff_plans → clients
SELECT 'special_tariff_plans → clients: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."special_tariff_plans" s
LEFT JOIN "client"."clients" c ON s.client_id = c.id
WHERE c.id IS NULL;

-- special_tariff_plans → products_services
SELECT 'special_tariff_plans → products_services: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."special_tariff_plans" s
LEFT JOIN "client"."products_services" p ON s.product_id = p.id
WHERE p.id IS NULL;

-- poa_change_history → powers_of_attorney
SELECT 'poa_change_history → powers_of_attorney: БИТЫЕ ССЫЛКИ' AS check_name, COUNT(*) AS errors
FROM "client"."poa_change_history" h
LEFT JOIN "client"."powers_of_attorney" poa ON h.poa_id = poa.id
WHERE poa.id IS NULL;


-- ============================================================
-- 3. УНИКАЛЬНОСТЬ КЛЮЧЕЙ И БИЗНЕС-ИДЕНТИФИКАТОРОВ
-- ============================================================

SELECT '=== УНИКАЛЬНОСТЬ ДАННЫХ ===' AS section;

-- Дубли ID клиентов
SELECT 'clients: дубли ID' AS check_name, COUNT(*) AS errors
FROM (SELECT id FROM "client"."clients" GROUP BY id HAVING COUNT(*) > 1) t;

-- Дубли BIN/IIN в clients_b2b
SELECT 'clients_b2b: дубли BIN/IIN' AS check_name, COUNT(*) AS errors
FROM (SELECT bin_iin FROM "client"."clients_b2b" GROUP BY bin_iin HAVING COUNT(*) > 1) t;

-- Дубли IIN в clients_b2c
SELECT 'clients_b2c: дубли IIN' AS check_name, COUNT(*) AS errors
FROM (SELECT iin FROM "client"."clients_b2c" GROUP BY iin HAVING COUNT(*) > 1) t;

-- Дубли номеров телефонов
SELECT 'client_phone_numbers: дубли номеров' AS check_name, COUNT(*) AS errors
FROM (SELECT phone_number FROM "client"."client_phone_numbers" GROUP BY phone_number HAVING COUNT(*) > 1) t;

-- Дубли регистрационных номеров договоров
SELECT 'contracts: дубли registration_number' AS check_name, COUNT(*) AS errors
FROM (SELECT registration_number FROM "client"."contracts" GROUP BY registration_number HAVING COUNT(*) > 1) t;

-- Дубли account_number в billing_accounts
SELECT 'billing_accounts: дубли account_number' AS check_name, COUNT(*) AS errors
FROM (SELECT account_number FROM "client"."billing_accounts" GROUP BY account_number HAVING COUNT(*) > 1) t;

-- Дубли external_ticket_id
SELECT 'tickets: дубли external_ticket_id' AS check_name, COUNT(*) AS errors
FROM (SELECT external_ticket_id FROM "client"."tickets" GROUP BY external_ticket_id HAVING COUNT(*) > 1) t;

-- Дубли IBAN
SELECT 'bank_details: дубли IBAN' AS check_name, COUNT(*) AS errors
FROM (SELECT iban FROM "client"."bank_details" GROUP BY iban HAVING COUNT(*) > 1) t;


-- ============================================================
-- 4. КОНСИСТЕНТНОСТЬ ДАННЫХ
-- ============================================================

SELECT '=== КОНСИСТЕНТНОСТЬ ДАННЫХ ===' AS section;

-- Каждый B2B клиент (client_type_id=3) должен иметь запись в clients_b2b
SELECT 'B2B клиенты без записи в clients_b2b' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
LEFT JOIN "client"."clients_b2b" b ON c.id = b.client_id
WHERE c.client_type_id = 3 AND b.id IS NULL;

-- Каждый B2C клиент (client_type_id=4) должен иметь запись в clients_b2c
SELECT 'B2C клиенты без записи в clients_b2c' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
LEFT JOIN "client"."clients_b2c" b ON c.id = b.client_id
WHERE c.client_type_id = 4 AND b.id IS NULL;

-- B2B клиенты не должны быть в clients_b2c и наоборот
SELECT 'B2B клиент в clients_b2c (пересечение)' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
INNER JOIN "client"."clients_b2c" bc ON c.id = bc.client_id
WHERE c.client_type_id = 3;

SELECT 'B2C клиент в clients_b2b (пересечение)' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
INNER JOIN "client"."clients_b2b" bb ON c.id = bb.client_id
WHERE c.client_type_id = 4;

-- Баланс клиента = current_balance должен совпадать с billing_accounts.balance
SELECT 'clients vs billing_accounts: расхождение баланса' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
INNER JOIN "client"."billing_accounts" ba ON c.id = ba.client_id
WHERE c.current_balance <> ba.balance;

-- remaining_balance = current_balance - charged_amount
SELECT 'clients: remaining_balance <> current_balance - charged_amount' AS check_name, COUNT(*) AS errors
FROM "client"."clients"
WHERE remaining_balance <> current_balance - charged_amount;

-- Дочерний договор ссылается на тот же client_id, что и родительский
SELECT 'contracts: дочерний договор с другим client_id' AS check_name, COUNT(*) AS errors
FROM "client"."contracts" child
INNER JOIN "client"."contracts" parent ON child.parent_contract_id = parent.id
WHERE child.client_id <> parent.client_id;

-- Спецификации (43) и ДС (44) должны иметь parent_contract_id
SELECT 'contracts: спецификация/ДС без parent_contract_id' AS check_name, COUNT(*) AS errors
FROM "client"."contracts"
WHERE contract_type_id IN (43, 44) AND parent_contract_id IS NULL;

-- Основные договоры (42) не должны иметь parent_contract_id
SELECT 'contracts: основной договор с parent_contract_id' AS check_name, COUNT(*) AS errors
FROM "client"."contracts"
WHERE contract_type_id = 42 AND parent_contract_id IS NOT NULL;

-- Активные клиенты (B2B/B2C) должны иметь хотя бы один контакт (phone/email)
SELECT 'Активные клиенты без контактной информации' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
LEFT JOIN "client"."client_contact" cc ON c.id = cc.client_id
WHERE c.is_active = true
  AND c.client_type_id IN (3, 4)
GROUP BY c.id
HAVING COUNT(cc.id) = 0;

-- Активные клиенты (B2B/B2C) должны иметь billing_account
SELECT 'Активные B2B/B2C клиенты без billing_account' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
LEFT JOIN "client"."billing_accounts" ba ON c.id = ba.client_id
WHERE c.is_active = true
  AND c.client_type_id IN (3, 4)
  AND ba.id IS NULL;

-- Активные договоры (status=46) должны иметь end_date > текущей даты или NULL
SELECT 'Активные договоры с истекшей end_date' AS check_name, COUNT(*) AS errors
FROM "client"."contracts"
WHERE status_id = 46 AND end_date < CURRENT_DATE;

-- Каждый primary контакт должен быть один на тип для клиента
SELECT 'client_contact: несколько primary на один тип' AS check_name, COUNT(*) AS errors
FROM (
  SELECT client_id, contact_type_id
  FROM "client"."client_contact"
  WHERE is_primary = true
  GROUP BY client_id, contact_type_id
  HAVING COUNT(*) > 1
) t;

-- Доверенности: contact должен принадлежать тому же client
SELECT 'powers_of_attorney: contact из другого клиента' AS check_name, COUNT(*) AS errors
FROM "client"."powers_of_attorney" poa
INNER JOIN "client"."contacts" ct ON poa.contact_id = ct.id
WHERE poa.client_id <> ct.client_id;

-- contract_products: даты продукта внутри дат договора
SELECT 'contract_products: service_start_date раньше start_date договора' AS check_name, COUNT(*) AS errors
FROM "client"."contract_products" cp
INNER JOIN "client"."contracts" ct ON cp.contract_id = ct.id
WHERE cp.service_start_date < ct.start_date;

SELECT 'contract_products: service_end_date позже end_date договора' AS check_name, COUNT(*) AS errors
FROM "client"."contract_products" cp
INNER JOIN "client"."contracts" ct ON cp.contract_id = ct.id
WHERE ct.end_date IS NOT NULL AND cp.service_end_date > ct.end_date;


-- ============================================================
-- 5. ПРОВЕРКА БИЗНЕС-ЛОГИКИ
-- ============================================================

SELECT '=== БИЗНЕС-ЛОГИКА ===' AS section;

-- Бывшие клиенты (type=2) должны быть неактивны
SELECT 'Бывшие клиенты с is_active=true' AS check_name, COUNT(*) AS errors
FROM "client"."clients"
WHERE client_type_id = 2 AND is_active = true;

-- Потенциальные клиенты (type=1) не должны иметь продуктов
SELECT 'Потенциальные клиенты с продуктами' AS check_name, COUNT(*) AS errors
FROM "client"."clients" c
INNER JOIN "client"."client_products" cp ON c.id = cp.client_id
WHERE c.client_type_id = 1 AND cp.is_active = true;

-- Потенциальные клиенты не должны иметь баланс
SELECT 'Потенциальные клиенты с ненулевым балансом' AS check_name, COUNT(*) AS errors
FROM "client"."clients"
WHERE client_type_id = 1 AND current_balance <> 0;

-- Клиенты в стоп-листе: проверка что ограничение привязано к существующему клиенту
SELECT 'Стоп-лист: клиенты' AS check_name, c.id AS client_id,
       COALESCE(bb.company_name, bc.last_name || ' ' || bc.first_name) AS client_name,
       cr.description
FROM "client"."client_restrictions" cr
INNER JOIN "client"."clients" c ON cr.client_id = c.id
LEFT JOIN "client"."clients_b2b" bb ON c.id = bb.client_id
LEFT JOIN "client"."clients_b2c" bc ON c.id = bc.client_id
WHERE cr.restriction_type_id = 93 AND cr.is_active = true;

-- Задолженности: проверка наличия
SELECT 'Задолженности: клиенты' AS check_name, c.id AS client_id,
       COALESCE(bb.company_name, bc.last_name || ' ' || bc.first_name) AS client_name,
       cr.description
FROM "client"."client_restrictions" cr
INNER JOIN "client"."clients" c ON cr.client_id = c.id
LEFT JOIN "client"."clients_b2b" bb ON c.id = bb.client_id
LEFT JOIN "client"."clients_b2c" bc ON c.id = bc.client_id
WHERE cr.restriction_type_id = 95 AND cr.is_active = true;

-- Неактивные доверенности должны иметь end_date <= текущей даты
SELECT 'Доверенности: неактивные с будущей end_date' AS check_name, COUNT(*) AS errors
FROM "client"."powers_of_attorney"
WHERE status = 'inactive' AND end_date > CURRENT_DATE;

-- Сотрудники без руководителя должны быть директорами
SELECT 'Сотрудники без supervisor (должны быть директорами)' AS check_name,
       e.id, e.first_name, e.last_name, e.position
FROM "client"."employees" e
WHERE e.supervisor_id IS NULL;


-- ============================================================
-- 6. СВОДНАЯ СТАТИСТИКА
-- ============================================================

SELECT '=== СВОДНАЯ СТАТИСТИКА ===' AS section;

-- Распределение клиентов по типам
SELECT 'Клиенты по типам' AS check_name, rt.name AS client_type, COUNT(*) AS cnt
FROM "client"."clients" c
INNER JOIN "client"."ref_client_types" rt ON c.client_type_id = rt.id
GROUP BY rt.name
ORDER BY cnt DESC;

-- Распределение B2B по сегментам
SELECT 'B2B по сегментам' AS check_name, rs.name AS segment, COUNT(*) AS cnt
FROM "client"."clients_b2b" b
INNER JOIN "client"."ref_segments" rs ON b.segment_id = rs.id
GROUP BY rs.name
ORDER BY cnt DESC;

-- Распределение B2B по отраслям
SELECT 'B2B по отраслям' AS check_name, ri.name AS industry, COUNT(*) AS cnt
FROM "client"."clients_b2b" b
INNER JOIN "client"."ref_industries" ri ON b.industry_id = ri.id
GROUP BY ri.name
ORDER BY cnt DESC;

-- Популярность продуктов (по количеству подключённых клиентов)
SELECT 'Продукты по популярности' AS check_name, p.name AS product, COUNT(DISTINCT cp.client_id) AS clients_cnt
FROM "client"."client_products" cp
INNER JOIN "client"."products_services" p ON cp.product_id = p.id
WHERE cp.is_active = true
GROUP BY p.name
ORDER BY clients_cnt DESC;

-- VIP клиенты
SELECT 'VIP клиенты' AS check_name, c.id AS client_id,
       COALESCE(bb.company_name, bc.last_name || ' ' || bc.first_name) AS client_name,
       vs.code AS vip_code, c.current_balance
FROM "client"."clients" c
INNER JOIN "client"."ref_vip_statuses" vs ON c.vip_status_id = vs.id
LEFT JOIN "client"."clients_b2b" bb ON c.id = bb.client_id
LEFT JOIN "client"."clients_b2c" bc ON c.id = bc.client_id
ORDER BY c.current_balance DESC;

-- Топ-10 клиентов по балансу
SELECT 'Топ-10 по балансу' AS check_name, c.id AS client_id,
       COALESCE(bb.company_name, bc.last_name || ' ' || bc.first_name) AS client_name,
       c.current_balance
FROM "client"."clients" c
LEFT JOIN "client"."clients_b2b" bb ON c.id = bb.client_id
LEFT JOIN "client"."clients_b2c" bc ON c.id = bc.client_id
WHERE c.is_active = true
ORDER BY c.current_balance DESC
LIMIT 10;

-- Договоры по статусам
SELECT 'Договоры по статусам' AS check_name, rs.name AS status, COUNT(*) AS cnt
FROM "client"."contracts" ct
INNER JOIN "client"."ref_contract_statuses" rs ON ct.status_id = rs.id
GROUP BY rs.name
ORDER BY cnt DESC;

-- Тикеты по статусам
SELECT 'Тикеты по статусам' AS check_name, status, COUNT(*) AS cnt
FROM "client"."tickets"
GROUP BY status
ORDER BY cnt DESC;

-- Общая сумма по активным договорам
SELECT 'Общая сумма активных договоров (KZT)' AS check_name,
       SUM(total_amount) AS total
FROM "client"."contracts"
WHERE status_id = 46 AND currency_id = 38;

SELECT 'Общая сумма активных договоров (USD)' AS check_name,
       SUM(total_amount) AS total
FROM "client"."contracts"
WHERE status_id = 46 AND currency_id = 39;

-- Клиенты по городам (топ-5)
SELECT 'Клиенты по городам (топ-5)' AS check_name, cr.name AS city, COUNT(*) AS cnt
FROM "client"."clients" c
INNER JOIN "client"."ref_cities_regions" cr ON c.city_region_id = cr.id
GROUP BY cr.name
ORDER BY cnt DESC
LIMIT 5;
