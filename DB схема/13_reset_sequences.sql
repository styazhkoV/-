-- ============================================================
-- СБРОС IDENTITY SEQUENCES НА max(id)+1
-- Запустите ПОСЛЕ загрузки всех файлов 01-12
-- ============================================================

-- employees
SELECT setval(pg_get_serial_sequence('"client"."employees"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."employees"), 0));

-- clients
SELECT setval(pg_get_serial_sequence('"client"."clients"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."clients"), 0));

-- clients_b2b
SELECT setval(pg_get_serial_sequence('"client"."clients_b2b"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."clients_b2b"), 0));

-- clients_b2c
SELECT setval(pg_get_serial_sequence('"client"."clients_b2c"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."clients_b2c"), 0));

-- client_contact
SELECT setval(pg_get_serial_sequence('"client"."client_contact"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."client_contact"), 0));

-- client_id_documents
SELECT setval(pg_get_serial_sequence('"client"."client_id_documents"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."client_id_documents"), 0));

-- client_addresses
SELECT setval(pg_get_serial_sequence('"client"."client_addresses"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."client_addresses"), 0));

-- client_phone_numbers
SELECT setval(pg_get_serial_sequence('"client"."client_phone_numbers"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."client_phone_numbers"), 0));

-- bank_details
SELECT setval(pg_get_serial_sequence('"client"."bank_details"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."bank_details"), 0));

-- billing_accounts
SELECT setval(pg_get_serial_sequence('"client"."billing_accounts"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."billing_accounts"), 0));

-- subsidiaries
SELECT setval(pg_get_serial_sequence('"client"."subsidiaries"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."subsidiaries"), 0));

-- contacts
SELECT setval(pg_get_serial_sequence('"client"."contacts"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."contacts"), 0));

-- contact_contact
SELECT setval(pg_get_serial_sequence('"client"."contact_contact"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."contact_contact"), 0));

-- contact_id_documents
SELECT setval(pg_get_serial_sequence('"client"."contact_id_documents"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."contact_id_documents"), 0));

-- contact_careers
SELECT setval(pg_get_serial_sequence('"client"."contact_careers"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."contact_careers"), 0));

-- contact_addresses
SELECT setval(pg_get_serial_sequence('"client"."contact_addresses"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."contact_addresses"), 0));

-- authorized_persons
SELECT setval(pg_get_serial_sequence('"client"."authorized_persons"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."authorized_persons"), 0));

-- products_services
SELECT setval(pg_get_serial_sequence('"client"."products_services"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."products_services"), 0));

-- client_products
SELECT setval(pg_get_serial_sequence('"client"."client_products"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."client_products"), 0));

-- special_tariff_plans
SELECT setval(pg_get_serial_sequence('"client"."special_tariff_plans"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."special_tariff_plans"), 0));

-- contracts
SELECT setval(pg_get_serial_sequence('"client"."contracts"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."contracts"), 0));

-- contract_products
SELECT setval(pg_get_serial_sequence('"client"."contract_products"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."contract_products"), 0));

-- related_contracts
SELECT setval(pg_get_serial_sequence('"client"."related_contracts"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."related_contracts"), 0));

-- contract_templates
SELECT setval(pg_get_serial_sequence('"client"."contract_templates"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."contract_templates"), 0));

-- documents
SELECT setval(pg_get_serial_sequence('"client"."documents"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."documents"), 0));

-- contract_documents
SELECT setval(pg_get_serial_sequence('"client"."contract_documents"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."contract_documents"), 0));

-- powers_of_attorney
SELECT setval(pg_get_serial_sequence('"client"."powers_of_attorney"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."powers_of_attorney"), 0));

-- poa_change_history
SELECT setval(pg_get_serial_sequence('"client"."poa_change_history"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."poa_change_history"), 0));

-- client_restrictions
SELECT setval(pg_get_serial_sequence('"client"."client_restrictions"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."client_restrictions"), 0));

-- client_requirements
SELECT setval(pg_get_serial_sequence('"client"."client_requirements"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."client_requirements"), 0));

-- client_requirement_attachments
SELECT setval(pg_get_serial_sequence('"client"."client_requirement_attachments"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."client_requirement_attachments"), 0));

-- activities
SELECT setval(pg_get_serial_sequence('"client"."activities"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."activities"), 0));

-- tickets
SELECT setval(pg_get_serial_sequence('"client"."tickets"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."tickets"), 0));

-- ref_client_types
SELECT setval(pg_get_serial_sequence('"client"."ref_client_types"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_client_types"), 0));

-- ref_genders
SELECT setval(pg_get_serial_sequence('"client"."ref_genders"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_genders"), 0));

-- ref_languages
SELECT setval(pg_get_serial_sequence('"client"."ref_languages"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_languages"), 0));

-- ref_residencies
SELECT setval(pg_get_serial_sequence('"client"."ref_residencies"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_residencies"), 0));

-- ref_segments
SELECT setval(pg_get_serial_sequence('"client"."ref_segments"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_segments"), 0));

-- ref_industries
SELECT setval(pg_get_serial_sequence('"client"."ref_industries"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_industries"), 0));

-- ref_client_categories
SELECT setval(pg_get_serial_sequence('"client"."ref_client_categories"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_client_categories"), 0));

-- ref_vip_statuses
SELECT setval(pg_get_serial_sequence('"client"."ref_vip_statuses"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_vip_statuses"), 0));

-- ref_legal_forms
SELECT setval(pg_get_serial_sequence('"client"."ref_legal_forms"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_legal_forms"), 0));

-- ref_brands
SELECT setval(pg_get_serial_sequence('"client"."ref_brands"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_brands"), 0));

-- ref_currencies
SELECT setval(pg_get_serial_sequence('"client"."ref_currencies"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_currencies"), 0));

-- ref_contract_types
SELECT setval(pg_get_serial_sequence('"client"."ref_contract_types"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_contract_types"), 0));

-- ref_contract_statuses
SELECT setval(pg_get_serial_sequence('"client"."ref_contract_statuses"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_contract_statuses"), 0));

-- ref_payment_forms
SELECT setval(pg_get_serial_sequence('"client"."ref_payment_forms"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_payment_forms"), 0));

-- ref_document_types
SELECT setval(pg_get_serial_sequence('"client"."ref_document_types"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_document_types"), 0));

-- ref_id_document_types
SELECT setval(pg_get_serial_sequence('"client"."ref_id_document_types"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_id_document_types"), 0));

-- ref_poa_types
SELECT setval(pg_get_serial_sequence('"client"."ref_poa_types"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_poa_types"), 0));

-- ref_marital_statuses
SELECT setval(pg_get_serial_sequence('"client"."ref_marital_statuses"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_marital_statuses"), 0));

-- ref_income_sources
SELECT setval(pg_get_serial_sequence('"client"."ref_income_sources"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_income_sources"), 0));

-- ref_cities_regions
SELECT setval(pg_get_serial_sequence('"client"."ref_cities_regions"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_cities_regions"), 0));

-- ref_departments
SELECT setval(pg_get_serial_sequence('"client"."ref_departments"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_departments"), 0));

-- ref_restriction_types
SELECT setval(pg_get_serial_sequence('"client"."ref_restriction_types"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_restriction_types"), 0));

-- ref_contact_roles
SELECT setval(pg_get_serial_sequence('"client"."ref_contact_roles"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_contact_roles"), 0));

-- ref_address_types
SELECT setval(pg_get_serial_sequence('"client"."ref_address_types"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_address_types"), 0));

-- ref_contact_info_types
SELECT setval(pg_get_serial_sequence('"client"."ref_contact_info_types"', 'id'), COALESCE((SELECT MAX(id) FROM "client"."ref_contact_info_types"), 0));
