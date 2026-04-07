-- DROP SCHEMA client;

CREATE SCHEMA client AUTHORIZATION kcell_test_user;

-- DROP SEQUENCE client.activities_id_seq;

CREATE SEQUENCE client.activities_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.activities_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.activities_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.authorized_persons_id_seq;

CREATE SEQUENCE client.authorized_persons_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.authorized_persons_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.authorized_persons_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.bank_details_id_seq;

CREATE SEQUENCE client.bank_details_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.bank_details_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.bank_details_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.billing_accounts_id_seq;

CREATE SEQUENCE client.billing_accounts_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.billing_accounts_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.billing_accounts_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.call_result_id_seq;

CREATE SEQUENCE client.call_result_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.call_result_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.call_result_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.campaign_id_seq;

CREATE SEQUENCE client.campaign_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.campaign_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.campaign_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.campaign_task_id_seq;

CREATE SEQUENCE client.campaign_task_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.campaign_task_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.campaign_task_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.client_addresses_id_seq;

CREATE SEQUENCE client.client_addresses_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.client_addresses_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.client_addresses_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.client_contact_id_seq;

CREATE SEQUENCE client.client_contact_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.client_contact_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.client_contact_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.client_id_documents_id_seq;

CREATE SEQUENCE client.client_id_documents_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.client_id_documents_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.client_id_documents_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.client_phone_numbers_id_seq;

CREATE SEQUENCE client.client_phone_numbers_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.client_phone_numbers_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.client_phone_numbers_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.client_products_id_seq;

CREATE SEQUENCE client.client_products_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.client_products_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.client_products_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.client_requirement_attachments_id_seq;

CREATE SEQUENCE client.client_requirement_attachments_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.client_requirement_attachments_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.client_requirement_attachments_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.client_requirements_id_seq;

CREATE SEQUENCE client.client_requirements_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.client_requirements_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.client_requirements_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.client_restrictions_id_seq;

CREATE SEQUENCE client.client_restrictions_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.client_restrictions_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.client_restrictions_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.clients_b2b_id_seq;

CREATE SEQUENCE client.clients_b2b_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.clients_b2b_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.clients_b2b_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.clients_b2c_id_seq;

CREATE SEQUENCE client.clients_b2c_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.clients_b2c_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.clients_b2c_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.clients_id_seq;

CREATE SEQUENCE client.clients_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.clients_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.clients_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.communicate_result_id_seq;

CREATE SEQUENCE client.communicate_result_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.communicate_result_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.communicate_result_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.communication_contact_center_id_seq;

CREATE SEQUENCE client.communication_contact_center_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.communication_contact_center_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.communication_contact_center_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.communications_id_seq;

CREATE SEQUENCE client.communications_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.communications_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.communications_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.contact_addresses_id_seq;

CREATE SEQUENCE client.contact_addresses_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.contact_addresses_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.contact_addresses_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.contact_careers_id_seq;

CREATE SEQUENCE client.contact_careers_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.contact_careers_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.contact_careers_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.contact_contact_id_seq;

CREATE SEQUENCE client.contact_contact_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.contact_contact_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.contact_contact_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.contact_id_documents_id_seq;

CREATE SEQUENCE client.contact_id_documents_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.contact_id_documents_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.contact_id_documents_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.contacts_id_seq;

CREATE SEQUENCE client.contacts_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.contacts_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.contacts_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.contract_documents_id_seq;

CREATE SEQUENCE client.contract_documents_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.contract_documents_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.contract_documents_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.contract_history_id_seq;

CREATE SEQUENCE client.contract_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.contract_history_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.contract_history_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.contract_products_id_seq;

CREATE SEQUENCE client.contract_products_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.contract_products_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.contract_products_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.contract_templates_id_seq;

CREATE SEQUENCE client.contract_templates_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.contract_templates_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.contract_templates_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.contracts_id_seq;

CREATE SEQUENCE client.contracts_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.contracts_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.contracts_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.credit_history_individual_id_seq;

CREATE SEQUENCE client.credit_history_individual_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.credit_history_individual_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.credit_history_individual_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.documents_id_seq;

CREATE SEQUENCE client.documents_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.documents_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.documents_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.employees_id_seq;

CREATE SEQUENCE client.employees_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.employees_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.employees_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.governing_bodies_id_seq;

CREATE SEQUENCE client.governing_bodies_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.governing_bodies_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.governing_bodies_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.identity_documents_id_seq;

CREATE SEQUENCE client.identity_documents_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.identity_documents_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.identity_documents_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.individual_clients_id_seq;

CREATE SEQUENCE client.individual_clients_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.individual_clients_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.individual_clients_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.lead_appeals_history_id_seq;

CREATE SEQUENCE client.lead_appeals_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.lead_appeals_history_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.lead_appeals_history_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.lead_appeals_id_seq;

CREATE SEQUENCE client.lead_appeals_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.lead_appeals_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.lead_appeals_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.marketing_task_id_seq;

CREATE SEQUENCE client.marketing_task_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.marketing_task_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.marketing_task_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.marks_id_seq;

CREATE SEQUENCE client.marks_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.marks_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.marks_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.payment_schedule_id_seq;

CREATE SEQUENCE client.payment_schedule_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.payment_schedule_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.payment_schedule_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.poa_change_history_id_seq;

CREATE SEQUENCE client.poa_change_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.poa_change_history_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.poa_change_history_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.powers_of_attorney_id_seq;

CREATE SEQUENCE client.powers_of_attorney_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.powers_of_attorney_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.powers_of_attorney_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.processing_results_id_seq;

CREATE SEQUENCE client.processing_results_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.processing_results_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.processing_results_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.products_services_id_seq;

CREATE SEQUENCE client.products_services_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.products_services_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.products_services_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_address_types_id_seq;

CREATE SEQUENCE client.ref_address_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_address_types_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_address_types_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_brands_id_seq;

CREATE SEQUENCE client.ref_brands_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_brands_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_brands_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_cities_regions_id_seq;

CREATE SEQUENCE client.ref_cities_regions_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_cities_regions_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_cities_regions_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_client_categories_id_seq;

CREATE SEQUENCE client.ref_client_categories_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_client_categories_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_client_categories_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_client_types_id_seq;

CREATE SEQUENCE client.ref_client_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_client_types_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_client_types_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_contact_info_types_id_seq;

CREATE SEQUENCE client.ref_contact_info_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_contact_info_types_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_contact_info_types_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_contact_roles_id_seq;

CREATE SEQUENCE client.ref_contact_roles_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_contact_roles_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_contact_roles_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_contract_statuses_id_seq;

CREATE SEQUENCE client.ref_contract_statuses_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_contract_statuses_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_contract_statuses_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_contract_types_id_seq;

CREATE SEQUENCE client.ref_contract_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_contract_types_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_contract_types_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_currencies_id_seq;

CREATE SEQUENCE client.ref_currencies_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_currencies_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_currencies_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_departments_id_seq;

CREATE SEQUENCE client.ref_departments_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_departments_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_departments_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_document_types_id_seq;

CREATE SEQUENCE client.ref_document_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_document_types_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_document_types_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_genders_id_seq;

CREATE SEQUENCE client.ref_genders_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_genders_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_genders_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_id_document_types_id_seq;

CREATE SEQUENCE client.ref_id_document_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_id_document_types_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_id_document_types_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_income_sources_id_seq;

CREATE SEQUENCE client.ref_income_sources_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_income_sources_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_income_sources_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_industries_id_seq;

CREATE SEQUENCE client.ref_industries_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_industries_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_industries_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_languages_id_seq;

CREATE SEQUENCE client.ref_languages_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_languages_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_languages_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_legal_forms_id_seq;

CREATE SEQUENCE client.ref_legal_forms_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_legal_forms_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_legal_forms_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_marital_statuses_id_seq;

CREATE SEQUENCE client.ref_marital_statuses_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_marital_statuses_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_marital_statuses_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_payment_forms_id_seq;

CREATE SEQUENCE client.ref_payment_forms_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_payment_forms_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_payment_forms_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_poa_types_id_seq;

CREATE SEQUENCE client.ref_poa_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_poa_types_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_poa_types_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_residencies_id_seq;

CREATE SEQUENCE client.ref_residencies_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_residencies_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_residencies_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_restriction_types_id_seq;

CREATE SEQUENCE client.ref_restriction_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_restriction_types_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_restriction_types_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_segments_id_seq;

CREATE SEQUENCE client.ref_segments_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_segments_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_segments_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.ref_vip_statuses_id_seq;

CREATE SEQUENCE client.ref_vip_statuses_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.ref_vip_statuses_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.ref_vip_statuses_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.related_contracts_id_seq;

CREATE SEQUENCE client.related_contracts_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.related_contracts_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.related_contracts_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.result_managers_id_seq;

CREATE SEQUENCE client.result_managers_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.result_managers_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.result_managers_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.schedule_campaign_id_seq;

CREATE SEQUENCE client.schedule_campaign_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.schedule_campaign_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.schedule_campaign_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.schedule_campaign_robot_id_seq;

CREATE SEQUENCE client.schedule_campaign_robot_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.schedule_campaign_robot_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.schedule_campaign_robot_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.schedule_campaign_settings_id_seq;

CREATE SEQUENCE client.schedule_campaign_settings_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.schedule_campaign_settings_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.schedule_campaign_settings_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.schedule_campaign_user_id_seq;

CREATE SEQUENCE client.schedule_campaign_user_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.schedule_campaign_user_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.schedule_campaign_user_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.segment_id_seq;

CREATE SEQUENCE client.segment_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.segment_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.segment_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.skill_group_id_seq;

CREATE SEQUENCE client.skill_group_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.skill_group_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.skill_group_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.special_tariff_plans_id_seq;

CREATE SEQUENCE client.special_tariff_plans_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.special_tariff_plans_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.special_tariff_plans_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.subsidiaries_id_seq;

CREATE SEQUENCE client.subsidiaries_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.subsidiaries_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.subsidiaries_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.task_match_client_id_seq;

CREATE SEQUENCE client.task_match_client_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.task_match_client_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.task_match_client_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.task_match_id_seq;

CREATE SEQUENCE client.task_match_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.task_match_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.task_match_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.tickets_id_seq;

CREATE SEQUENCE client.tickets_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.tickets_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.tickets_id_seq TO kcell_test_user;

-- DROP SEQUENCE client.upload_history_id_seq;

CREATE SEQUENCE client.upload_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE client.upload_history_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE client.upload_history_id_seq TO kcell_test_user;
-- client.campaign definition

-- Drop table

-- DROP TABLE client.campaign;

CREATE TABLE client.campaign ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, collection varchar(255) NULL, dep_id varchar(255) NULL, "name" varchar(255) NULL, segments jsonb NULL, srv_dep_code varchar(255) NULL, username jsonb NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT campaign_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.campaign OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.campaign TO kcell_test_user;


-- client.channel definition

-- Drop table

-- DROP TABLE client.channel;

CREATE TABLE client.channel ( id int8 NOT NULL, manager bool NULL, robot bool NULL, sms bool NULL, whatsapp bool NULL, CONSTRAINT channel_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.channel OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.channel TO kcell_test_user;


-- client.communication_contact_center definition

-- Drop table

-- DROP TABLE client.communication_contact_center;

CREATE TABLE client.communication_contact_center ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, callback_date date NULL, callback_purpose varchar(255) NULL, callback_time time(6) NULL, channel varchar(255) NULL, client_id int8 NULL, "comment" text NULL, "date" timestamptz(6) NOT NULL, "result" varchar(255) NULL, theme varchar(255) NULL, user_fio varchar(255) NULL, user_id int8 NULL, CONSTRAINT communication_contact_center_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.communication_contact_center OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.communication_contact_center TO kcell_test_user;


-- client.databasechangelog definition

-- Drop table

-- DROP TABLE client.databasechangelog;

CREATE TABLE client.databasechangelog ( id varchar(255) NOT NULL, author varchar(255) NOT NULL, filename varchar(255) NOT NULL, dateexecuted timestamp NOT NULL, orderexecuted int4 NOT NULL, exectype varchar(10) NOT NULL, md5sum varchar(35) NULL, description varchar(255) NULL, "comments" varchar(255) NULL, tag varchar(255) NULL, liquibase varchar(20) NULL, contexts varchar(255) NULL, labels varchar(255) NULL, deployment_id varchar(10) NULL);

-- Permissions

ALTER TABLE client.databasechangelog OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.databasechangelog TO kcell_test_user;


-- client.databasechangeloglock definition

-- Drop table

-- DROP TABLE client.databasechangeloglock;

CREATE TABLE client.databasechangeloglock ( id int4 NOT NULL, "locked" bool NOT NULL, lockgranted timestamp NULL, lockedby varchar(255) NULL, CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.databasechangeloglock OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.databasechangeloglock TO kcell_test_user;


-- client.lead_appeals_history definition

-- Drop table

-- DROP TABLE client.lead_appeals_history;

CREATE TABLE client.lead_appeals_history ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "comment" varchar(250) NULL, created_date timestamptz(6) NOT NULL, file_id varchar(100) NULL, lead_appeals_id int8 NOT NULL, manager_id int8 NULL, status varchar(50) NOT NULL, "type" varchar(50) NULL, CONSTRAINT lead_appeals_history_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.lead_appeals_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.lead_appeals_history TO kcell_test_user;


-- client.managers_user definition

-- Drop table

-- DROP TABLE client.managers_user;

CREATE TABLE client.managers_user ( id uuid NOT NULL, email varchar(100) NULL, full_name varchar(255) NULL, organizational_unit_id int8 NULL, phone varchar(20) NULL, "position" varchar(100) NULL, "role" varchar(50) NULL, status varchar(30) NULL, CONSTRAINT managers_user_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.managers_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.managers_user TO kcell_test_user;


-- client.marketing_task definition

-- Drop table

-- DROP TABLE client.marketing_task;

CREATE TABLE client.marketing_task ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, channel varchar(100) NULL, created_date timestamptz(6) NOT NULL, ended_date timestamptz(6) NULL, expiration_date timestamptz(6) NOT NULL, lead_appeals_id int8 NOT NULL, manager_id int8 NULL, "type" varchar(100) NULL, status varchar(255) NULL, CONSTRAINT marketing_task_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.marketing_task OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.marketing_task TO kcell_test_user;


-- client.products_services definition

-- Drop table

-- DROP TABLE client.products_services;

CREATE TABLE client.products_services ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "name" varchar(255) NULL, description varchar(255) NULL, product_type varchar(255) NULL, is_active bool DEFAULT true NULL, created_at timestamp DEFAULT now() NULL, CONSTRAINT products_services_name_key UNIQUE (name), CONSTRAINT products_services_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.products_services."name" IS 'Наименование продукта/услуги';
COMMENT ON COLUMN client.products_services.description IS 'Описание';
COMMENT ON COLUMN client.products_services.product_type IS 'Тип: продукт, услуга, устройство';

-- Permissions

ALTER TABLE client.products_services OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.products_services TO kcell_test_user;


-- client.ref_address_types definition

-- Drop table

-- DROP TABLE client.ref_address_types;

CREATE TABLE client.ref_address_types ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_address_types_code_key UNIQUE (code), CONSTRAINT ref_address_types_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_address_types.code IS 'Юридический, фактический, для корреспонденции';

-- Permissions

ALTER TABLE client.ref_address_types OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_address_types TO kcell_test_user;


-- client.ref_brands definition

-- Drop table

-- DROP TABLE client.ref_brands;

CREATE TABLE client.ref_brands ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_brands_code_key UNIQUE (code), CONSTRAINT ref_brands_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_brands.code IS 'Актив, Кселл';

-- Permissions

ALTER TABLE client.ref_brands OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_brands TO kcell_test_user;


-- client.ref_cities_regions definition

-- Drop table

-- DROP TABLE client.ref_cities_regions;

CREATE TABLE client.ref_cities_regions ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "name" varchar(255) NULL, region varchar(255) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_cities_regions_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_cities_regions."name" IS 'Город';
COMMENT ON COLUMN client.ref_cities_regions.region IS 'Регион';

-- Permissions

ALTER TABLE client.ref_cities_regions OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_cities_regions TO kcell_test_user;


-- client.ref_client_categories definition

-- Drop table

-- DROP TABLE client.ref_client_categories;

CREATE TABLE client.ref_client_categories ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_client_categories_code_key UNIQUE (code), CONSTRAINT ref_client_categories_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_client_categories.code IS 'Категория ABC';

-- Permissions

ALTER TABLE client.ref_client_categories OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_client_categories TO kcell_test_user;


-- client.ref_client_types definition

-- Drop table

-- DROP TABLE client.ref_client_types;

CREATE TABLE client.ref_client_types ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_client_types_code_key UNIQUE (code), CONSTRAINT ref_client_types_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_client_types.code IS 'Потенциальный, Бывший, B2B, B2C, Партнёр, Агент';

-- Permissions

ALTER TABLE client.ref_client_types OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_client_types TO kcell_test_user;


-- client.ref_contact_info_types definition

-- Drop table

-- DROP TABLE client.ref_contact_info_types;

CREATE TABLE client.ref_contact_info_types ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_contact_info_types_code_key UNIQUE (code), CONSTRAINT ref_contact_info_types_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_contact_info_types.code IS 'phone, email, whatsapp, telegram и др.';

-- Permissions

ALTER TABLE client.ref_contact_info_types OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_contact_info_types TO kcell_test_user;


-- client.ref_contact_roles definition

-- Drop table

-- DROP TABLE client.ref_contact_roles;

CREATE TABLE client.ref_contact_roles ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_contact_roles_code_key UNIQUE (code), CONSTRAINT ref_contact_roles_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_contact_roles."name" IS 'Роль контактного лица';

-- Permissions

ALTER TABLE client.ref_contact_roles OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_contact_roles TO kcell_test_user;


-- client.ref_contract_statuses definition

-- Drop table

-- DROP TABLE client.ref_contract_statuses;

CREATE TABLE client.ref_contract_statuses ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_contract_statuses_code_key UNIQUE (code), CONSTRAINT ref_contract_statuses_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_contract_statuses.code IS 'Подготовка, Действующий, Расторгнут';

-- Permissions

ALTER TABLE client.ref_contract_statuses OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_contract_statuses TO kcell_test_user;


-- client.ref_contract_types definition

-- Drop table

-- DROP TABLE client.ref_contract_types;

CREATE TABLE client.ref_contract_types ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_contract_types_code_key UNIQUE (code), CONSTRAINT ref_contract_types_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_contract_types.code IS 'Договор, Спецификация, ДС';

-- Permissions

ALTER TABLE client.ref_contract_types OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_contract_types TO kcell_test_user;


-- client.ref_currencies definition

-- Drop table

-- DROP TABLE client.ref_currencies;

CREATE TABLE client.ref_currencies ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_currencies_code_key UNIQUE (code), CONSTRAINT ref_currencies_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_currencies.code IS 'KZT, USD, EUR и др.';

-- Permissions

ALTER TABLE client.ref_currencies OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_currencies TO kcell_test_user;


-- client.ref_document_types definition

-- Drop table

-- DROP TABLE client.ref_document_types;

CREATE TABLE client.ref_document_types ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_document_types_code_key UNIQUE (code), CONSTRAINT ref_document_types_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_document_types."name" IS 'Тип документа в архиве';

-- Permissions

ALTER TABLE client.ref_document_types OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_document_types TO kcell_test_user;


-- client.ref_genders definition

-- Drop table

-- DROP TABLE client.ref_genders;

CREATE TABLE client.ref_genders ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_genders_code_key UNIQUE (code), CONSTRAINT ref_genders_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.ref_genders OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_genders TO kcell_test_user;


-- client.ref_id_document_types definition

-- Drop table

-- DROP TABLE client.ref_id_document_types;

CREATE TABLE client.ref_id_document_types ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_id_document_types_code_key UNIQUE (code), CONSTRAINT ref_id_document_types_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_id_document_types.code IS 'Паспорт, УДЛ и др.';

-- Permissions

ALTER TABLE client.ref_id_document_types OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_id_document_types TO kcell_test_user;


-- client.ref_income_sources definition

-- Drop table

-- DROP TABLE client.ref_income_sources;

CREATE TABLE client.ref_income_sources ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "name" varchar(200) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_income_sources_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_income_sources."name" IS 'Источник дохода';

-- Permissions

ALTER TABLE client.ref_income_sources OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_income_sources TO kcell_test_user;


-- client.ref_industries definition

-- Drop table

-- DROP TABLE client.ref_industries;

CREATE TABLE client.ref_industries ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "name" varchar(100) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_industries_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_industries."name" IS 'Индустрия';

-- Permissions

ALTER TABLE client.ref_industries OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_industries TO kcell_test_user;


-- client.ref_languages definition

-- Drop table

-- DROP TABLE client.ref_languages;

CREATE TABLE client.ref_languages ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(255) NULL, "name" varchar(255) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_languages_code_key UNIQUE (code), CONSTRAINT ref_languages_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_languages."name" IS 'Язык обслуживания';

-- Permissions

ALTER TABLE client.ref_languages OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_languages TO kcell_test_user;


-- client.ref_legal_forms definition

-- Drop table

-- DROP TABLE client.ref_legal_forms;

CREATE TABLE client.ref_legal_forms ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_legal_forms_code_key UNIQUE (code), CONSTRAINT ref_legal_forms_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_legal_forms."name" IS 'ОПФ — организационно-правовая форма';

-- Permissions

ALTER TABLE client.ref_legal_forms OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_legal_forms TO kcell_test_user;


-- client.ref_marital_statuses definition

-- Drop table

-- DROP TABLE client.ref_marital_statuses;

CREATE TABLE client.ref_marital_statuses ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_marital_statuses_code_key UNIQUE (code), CONSTRAINT ref_marital_statuses_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_marital_statuses."name" IS 'Семейное положение';

-- Permissions

ALTER TABLE client.ref_marital_statuses OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_marital_statuses TO kcell_test_user;


-- client.ref_payment_forms definition

-- Drop table

-- DROP TABLE client.ref_payment_forms;

CREATE TABLE client.ref_payment_forms ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_payment_forms_code_key UNIQUE (code), CONSTRAINT ref_payment_forms_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_payment_forms."name" IS 'Форма оплаты: кредит и т.д.';

-- Permissions

ALTER TABLE client.ref_payment_forms OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_payment_forms TO kcell_test_user;


-- client.ref_poa_types definition

-- Drop table

-- DROP TABLE client.ref_poa_types;

CREATE TABLE client.ref_poa_types ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_poa_types_code_key UNIQUE (code), CONSTRAINT ref_poa_types_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_poa_types."name" IS 'Вид доверенности';

-- Permissions

ALTER TABLE client.ref_poa_types OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_poa_types TO kcell_test_user;


-- client.ref_residencies definition

-- Drop table

-- DROP TABLE client.ref_residencies;

CREATE TABLE client.ref_residencies ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(255) NULL, "name" varchar(255) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_residencies_code_key UNIQUE (code), CONSTRAINT ref_residencies_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_residencies."name" IS 'Резидент / Нерезидент';

-- Permissions

ALTER TABLE client.ref_residencies OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_residencies TO kcell_test_user;


-- client.ref_restriction_types definition

-- Drop table

-- DROP TABLE client.ref_restriction_types;

CREATE TABLE client.ref_restriction_types ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(20) NULL, "name" varchar(100) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_restriction_types_code_key UNIQUE (code), CONSTRAINT ref_restriction_types_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_restriction_types.code IS 'Стоп-лист, конфликт по продуктам, задолженность';

-- Permissions

ALTER TABLE client.ref_restriction_types OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_restriction_types TO kcell_test_user;


-- client.ref_segments definition

-- Drop table

-- DROP TABLE client.ref_segments;

CREATE TABLE client.ref_segments ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "name" varchar(100) NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_segments_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_segments."name" IS 'Сегмент клиента';

-- Permissions

ALTER TABLE client.ref_segments OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_segments TO kcell_test_user;


-- client.ref_vip_statuses definition

-- Drop table

-- DROP TABLE client.ref_vip_statuses;

CREATE TABLE client.ref_vip_statuses ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(255) NULL, "name" varchar(255) NOT NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_vip_statuses_code_key UNIQUE (code), CONSTRAINT ref_vip_statuses_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.ref_vip_statuses.code IS 'TOP / VIP / не заполнено';

-- Permissions

ALTER TABLE client.ref_vip_statuses OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_vip_statuses TO kcell_test_user;


-- client.schedule_campaign definition

-- Drop table

-- DROP TABLE client.schedule_campaign;

CREATE TABLE client.schedule_campaign ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, assign_manager_user_id int8 NULL, channel varchar(255) NULL, collection varchar(255) NULL, dep_id varchar(255) NULL, end_time timestamptz(6) NULL, is_active bool NULL, last_activate_date timestamptz(6) NULL, "name" varchar(255) NULL, srv_dep_code varchar(255) NULL, start_time timestamptz(6) NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT schedule_campaign_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.schedule_campaign OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.schedule_campaign TO kcell_test_user;


-- client.skill_group definition

-- Drop table

-- DROP TABLE client.skill_group;

CREATE TABLE client.skill_group ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, collection varchar(255) NULL, dep_id varchar(255) NULL, "name" varchar(255) NULL, srv_dep_code varchar(255) NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT skill_group_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.skill_group OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.skill_group TO kcell_test_user;


-- client.task_match definition

-- Drop table

-- DROP TABLE client.task_match;

CREATE TABLE client.task_match ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, company_client_count int4 NULL, "date" timestamptz(6) NULL, is_matched bool NULL, "name" varchar(255) NULL, task_client_count int4 NULL, user_name varchar(255) NULL, CONSTRAINT task_match_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.task_match OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.task_match TO kcell_test_user;


-- client.upload_history definition

-- Drop table

-- DROP TABLE client.upload_history;

CREATE TABLE client.upload_history ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, file_name varchar(255) NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT upload_history_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.upload_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.upload_history TO kcell_test_user;


-- client.campaign_sort_fields definition

-- Drop table

-- DROP TABLE client.campaign_sort_fields;

CREATE TABLE client.campaign_sort_fields ( campaign_id int8 NOT NULL, field varchar(255) NULL, value varchar(255) NULL, CONSTRAINT campaign_sort_fields_value_check CHECK (((value)::text = ANY ((ARRAY['ASC'::character varying, 'DESC'::character varying, 'ASC_ALPHA'::character varying, 'DESC_ALPHA'::character varying])::text[]))), CONSTRAINT fks829uesiupi0lqb6ge6pgq06r FOREIGN KEY (campaign_id) REFERENCES client.campaign(id));

-- Permissions

ALTER TABLE client.campaign_sort_fields OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.campaign_sort_fields TO kcell_test_user;


-- client.clients definition

-- Drop table

-- DROP TABLE client.clients;

CREATE TABLE client.clients ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_type_id int8 NULL, residency_id int8 NULL, language_id int8 NULL, city_region_id int8 NULL, vip_status_id int8 NULL, code_word varchar(100) NULL, credit_limit_increase_allowed bool DEFAULT false NULL, current_balance numeric(38, 2) NULL, charged_amount numeric(38, 2) NULL, remaining_balance numeric(38, 2) NULL, has_corp_cabinet bool DEFAULT false NULL, has_mobile_app bool DEFAULT false NULL, is_active bool DEFAULT true NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, status varchar(50) NULL, bin_iin varchar(12) NULL, is_deleted bool DEFAULT false NOT NULL, CONSTRAINT clients_pkey PRIMARY KEY (id), CONSTRAINT uq_clients_bin_iin UNIQUE (bin_iin), CONSTRAINT clients_city_region_id_fkey FOREIGN KEY (city_region_id) REFERENCES client.ref_cities_regions(id) DEFERRABLE, CONSTRAINT clients_client_type_id_fkey FOREIGN KEY (client_type_id) REFERENCES client.ref_client_types(id) DEFERRABLE, CONSTRAINT clients_language_id_fkey FOREIGN KEY (language_id) REFERENCES client.ref_languages(id) DEFERRABLE, CONSTRAINT clients_residency_id_fkey FOREIGN KEY (residency_id) REFERENCES client.ref_residencies(id) DEFERRABLE, CONSTRAINT clients_vip_status_id_fkey FOREIGN KEY (vip_status_id) REFERENCES client.ref_vip_statuses(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.clients.client_type_id IS 'Тип клиента';
COMMENT ON COLUMN client.clients.residency_id IS 'Резидентство';
COMMENT ON COLUMN client.clients.language_id IS 'Язык обслуживания';
COMMENT ON COLUMN client.clients.city_region_id IS 'Город/Регион';
COMMENT ON COLUMN client.clients.vip_status_id IS 'VIP статус';
COMMENT ON COLUMN client.clients.code_word IS 'Кодовое слово';
COMMENT ON COLUMN client.clients.credit_limit_increase_allowed IS 'Доступ на увеличение кредитного лимита';
COMMENT ON COLUMN client.clients.current_balance IS 'Текущий баланс';
COMMENT ON COLUMN client.clients.charged_amount IS 'Начислено';
COMMENT ON COLUMN client.clients.remaining_balance IS 'Остаток';
COMMENT ON COLUMN client.clients.has_corp_cabinet IS 'Наличие корп. кабинета';
COMMENT ON COLUMN client.clients.has_mobile_app IS 'Наличие мобильного приложения';
COMMENT ON COLUMN client.clients.status IS 'Статус';
COMMENT ON COLUMN client.clients.bin_iin IS 'БИН/ИИН';

-- Permissions

ALTER TABLE client.clients OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.clients TO kcell_test_user;


-- client.clients_b2c definition

-- Drop table

-- DROP TABLE client.clients_b2c;

CREATE TABLE client.clients_b2c ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, iin varchar(12) NULL, last_name varchar(100) NULL, first_name varchar(100) NULL, middle_name varchar(100) NULL, gender_id int8 NULL, date_of_birth date NULL, password_hash varchar(255) NULL, income_amount numeric(18, 2) NULL, income_source_id int8 NULL, marital_status_id int8 NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, phone_b2c varchar(20) NULL, email varchar(255) NULL, "language" varchar(255) NULL, residency varchar(255) NULL, secret_word varchar(255) NULL, CONSTRAINT clients_b2c_client_id_key UNIQUE (client_id), CONSTRAINT clients_b2c_iin_key UNIQUE (iin), CONSTRAINT clients_b2c_pkey PRIMARY KEY (id), CONSTRAINT clients_b2c_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE, CONSTRAINT clients_b2c_gender_id_fkey FOREIGN KEY (gender_id) REFERENCES client.ref_genders(id) DEFERRABLE, CONSTRAINT clients_b2c_income_source_id_fkey FOREIGN KEY (income_source_id) REFERENCES client.ref_income_sources(id) DEFERRABLE, CONSTRAINT clients_b2c_marital_status_id_fkey FOREIGN KEY (marital_status_id) REFERENCES client.ref_marital_statuses(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.clients_b2c.client_id IS 'Связь 1:1 с базовой карточкой';
COMMENT ON COLUMN client.clients_b2c.iin IS 'ИИН';
COMMENT ON COLUMN client.clients_b2c.last_name IS 'Фамилия';
COMMENT ON COLUMN client.clients_b2c.first_name IS 'Имя';
COMMENT ON COLUMN client.clients_b2c.middle_name IS 'Отчество';
COMMENT ON COLUMN client.clients_b2c.gender_id IS 'Пол';
COMMENT ON COLUMN client.clients_b2c.date_of_birth IS 'Дата рождения';
COMMENT ON COLUMN client.clients_b2c.password_hash IS 'Пароль';
COMMENT ON COLUMN client.clients_b2c.income_amount IS 'Сумма дохода';
COMMENT ON COLUMN client.clients_b2c.income_source_id IS 'Источник дохода';
COMMENT ON COLUMN client.clients_b2c.marital_status_id IS 'Семейное положение';

-- Permissions

ALTER TABLE client.clients_b2c OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.clients_b2c TO kcell_test_user;


-- client.communications definition

-- Drop table

-- DROP TABLE client.communications;

CREATE TABLE client.communications ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, action_link text NULL, channel varchar(50) NULL, communication_date timestamptz(6) NULL, communication_type varchar(50) NULL, communications_group varchar(20) NULL, description text NULL, priority varchar(20) NULL, record_url text NULL, "result" text NULL, status varchar(30) NULL, banking_product_id int8 NULL, client_id int8 NULL, manager_id uuid NULL, CONSTRAINT communications_pkey PRIMARY KEY (id), CONSTRAINT fkaxxegsuyggu54b20j7cj2y0co FOREIGN KEY (client_id) REFERENCES client.clients(id));
CREATE INDEX idx_communications_client ON client.communications USING btree (client_id);
CREATE INDEX idx_communications_date ON client.communications USING btree (communication_date);
CREATE INDEX idx_communications_type ON client.communications USING btree (communication_type);

-- Permissions

ALTER TABLE client.communications OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.communications TO kcell_test_user;


-- client.contacts definition

-- Drop table

-- DROP TABLE client.contacts;

CREATE TABLE client.contacts ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, last_name varchar(255) NULL, first_name varchar(255) NULL, middle_name varchar(255) NULL, gender_id int8 NULL, "position" varchar(255) NULL, residency_id int8 NULL, code_word varchar(255) NULL, verification_password varchar(255) NULL, client_type_id int8 NULL, role_id int8 NULL, language_id int8 NULL, date_of_birth date NULL, do_not_disturb bool DEFAULT false NULL, is_active bool DEFAULT true NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, accessibility varchar(255) NULL, contact_person_name varchar(255) NULL, contact_status varchar(50) NULL, contact_subtype varchar(50) NULL, contact_type varchar(50) NULL, contact_value varchar(255) NULL, convenient_time varchar(100) NULL, description varchar(255) NULL, is_actual bool NULL, is_primary bool NULL, marketing_consent bool NULL, organizational_unit_id int8 NULL, preferred_channel bool NULL, priority int4 NULL, processing_consent bool NULL, relationship varchar(100) NULL, verification_date timestamptz(6) NULL, verification_status varchar(50) NULL, CONSTRAINT contacts_pkey PRIMARY KEY (id), CONSTRAINT contacts_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE, CONSTRAINT contacts_client_type_id_fkey FOREIGN KEY (client_type_id) REFERENCES client.ref_client_types(id) DEFERRABLE, CONSTRAINT contacts_gender_id_fkey FOREIGN KEY (gender_id) REFERENCES client.ref_genders(id) DEFERRABLE, CONSTRAINT contacts_language_id_fkey FOREIGN KEY (language_id) REFERENCES client.ref_languages(id) DEFERRABLE, CONSTRAINT contacts_residency_id_fkey FOREIGN KEY (residency_id) REFERENCES client.ref_residencies(id) DEFERRABLE, CONSTRAINT contacts_role_id_fkey FOREIGN KEY (role_id) REFERENCES client.ref_contact_roles(id) DEFERRABLE);
CREATE INDEX idx_contacts_client ON client.contacts USING btree (client_id);

-- Column comments

COMMENT ON COLUMN client.contacts.client_id IS 'Клиент-владелец контакта';
COMMENT ON COLUMN client.contacts.last_name IS 'Фамилия';
COMMENT ON COLUMN client.contacts.first_name IS 'Имя';
COMMENT ON COLUMN client.contacts.middle_name IS 'Отчество';
COMMENT ON COLUMN client.contacts.gender_id IS 'Пол';
COMMENT ON COLUMN client.contacts."position" IS 'Должность';
COMMENT ON COLUMN client.contacts.residency_id IS 'Резидентство';
COMMENT ON COLUMN client.contacts.code_word IS 'Кодовое слово';
COMMENT ON COLUMN client.contacts.verification_password IS 'Пароль на верификацию';
COMMENT ON COLUMN client.contacts.client_type_id IS 'Тип клиента контактного лица';
COMMENT ON COLUMN client.contacts.role_id IS 'Роль контактного лица';
COMMENT ON COLUMN client.contacts.language_id IS 'Язык обслуживания';
COMMENT ON COLUMN client.contacts.date_of_birth IS 'Дата рождения';
COMMENT ON COLUMN client.contacts.do_not_disturb IS 'Не тревожить';

-- Permissions

ALTER TABLE client.contacts OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.contacts TO kcell_test_user;


-- client.contract_templates definition

-- Drop table

-- DROP TABLE client.contract_templates;

CREATE TABLE client.contract_templates ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, contract_type_id int8 NULL, template_name varchar(255) NULL, template_file_path varchar(255) NULL, is_active bool DEFAULT true NULL, created_at timestamp DEFAULT now() NULL, CONSTRAINT contract_templates_pkey PRIMARY KEY (id), CONSTRAINT contract_templates_contract_type_id_fkey FOREIGN KEY (contract_type_id) REFERENCES client.ref_contract_types(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.contract_templates.contract_type_id IS 'Тип договора';
COMMENT ON COLUMN client.contract_templates.template_name IS 'Название шаблона';
COMMENT ON COLUMN client.contract_templates.template_file_path IS 'Путь к файлу шаблона для скачивания';

-- Permissions

ALTER TABLE client.contract_templates OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.contract_templates TO kcell_test_user;


-- client.governing_bodies definition

-- Drop table

-- DROP TABLE client.governing_bodies;

CREATE TABLE client.governing_bodies ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_name varchar(255) NULL, end_date timestamptz(6) NULL, governing_body_type varchar(100) NULL, is_actual bool NULL, role_position varchar(100) NULL, start_date timestamptz(6) NULL, client_id int8 NULL, CONSTRAINT governing_bodies_pkey PRIMARY KEY (id), CONSTRAINT fk5rpstlu6t3l5r0t9kynlb5upm FOREIGN KEY (client_id) REFERENCES client.clients(id));

-- Permissions

ALTER TABLE client.governing_bodies OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.governing_bodies TO kcell_test_user;


-- client.identity_documents definition

-- Drop table

-- DROP TABLE client.identity_documents;

CREATE TABLE client.identity_documents ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, document_code varchar(50) NULL, document_number varchar(50) NULL, document_scan_url varchar(255) NULL, document_series varchar(50) NULL, document_type varchar(255) NULL, expiry_date timestamptz(6) NULL, is_archived bool NULL, is_primary bool NULL, issue_date timestamptz(6) NULL, issued_by varchar(255) NULL, organizational_unit_id int8 NULL, client_id int8 NULL, CONSTRAINT identity_documents_pkey PRIMARY KEY (id), CONSTRAINT fkn7vhdd1jnhs5u3d09wcwvi6vg FOREIGN KEY (client_id) REFERENCES client.clients(id));

-- Permissions

ALTER TABLE client.identity_documents OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.identity_documents TO kcell_test_user;


-- client.individual_clients definition

-- Drop table

-- DROP TABLE client.individual_clients;

CREATE TABLE client.individual_clients ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, bankrot_fl bool NULL, birth_date varchar(255) NULL, birth_place varchar(255) NULL, children_count int4 NULL, citizenship varchar(50) NULL, first_name varchar(100) NULL, gender varchar(10) NULL, iin varchar(12) NULL, iin_status varchar(50) NULL, last_name varchar(100) NULL, marital_status varchar(50) NULL, middle_name varchar(100) NULL, photo_url varchar(50) NULL, resident bool NULL, client_id int8 NULL, CONSTRAINT individual_clients_pkey PRIMARY KEY (id), CONSTRAINT uklcrpn68xverashg7fui1qjb0a UNIQUE (client_id), CONSTRAINT fk1p3kccmlpb6e31m12gm492fq8 FOREIGN KEY (client_id) REFERENCES client.clients(id));
CREATE INDEX idx_individual_iin ON client.individual_clients USING btree (iin);

-- Permissions

ALTER TABLE client.individual_clients OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.individual_clients TO kcell_test_user;


-- client.lead_appeals definition

-- Drop table

-- DROP TABLE client.lead_appeals;

CREATE TABLE client.lead_appeals ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, campaign varchar(255) NULL, category varchar(50) NULL, channel varchar(255) NULL, client_id int8 NULL, client_type varchar(100) NULL, contact_id int8 NOT NULL, created_date timestamptz(6) NOT NULL, deleted bool NULL, fio varchar(255) NULL, manager_id int8 NULL, product varchar(255) NULL, status varchar(50) NOT NULL, theme varchar(255) NULL, "type" varchar(50) NULL, unit_id int8 NULL, updated_date timestamptz(6) NULL, "comment" varchar(1000) NULL, file_id varchar(100) NULL, CONSTRAINT lead_appeals_pkey PRIMARY KEY (id), CONSTRAINT fk_lead_appeals_contact FOREIGN KEY (contact_id) REFERENCES client.contacts(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.lead_appeals.campaign IS 'Кампания';
COMMENT ON COLUMN client.lead_appeals.category IS 'Категория';
COMMENT ON COLUMN client.lead_appeals.channel IS 'Канал';
COMMENT ON COLUMN client.lead_appeals.client_id IS 'ID клиента';
COMMENT ON COLUMN client.lead_appeals.client_type IS 'Тип клиента';
COMMENT ON COLUMN client.lead_appeals.contact_id IS 'ID контакта';
COMMENT ON COLUMN client.lead_appeals.created_date IS 'Дата создания';
COMMENT ON COLUMN client.lead_appeals.deleted IS 'Удален';
COMMENT ON COLUMN client.lead_appeals.fio IS 'ФИО';
COMMENT ON COLUMN client.lead_appeals.manager_id IS 'ID менеджера';
COMMENT ON COLUMN client.lead_appeals.product IS 'Продукт';
COMMENT ON COLUMN client.lead_appeals.status IS 'Статус';
COMMENT ON COLUMN client.lead_appeals.theme IS 'Тема';
COMMENT ON COLUMN client.lead_appeals."type" IS 'Тип';
COMMENT ON COLUMN client.lead_appeals.unit_id IS 'ID подразделения';
COMMENT ON COLUMN client.lead_appeals.updated_date IS 'Дата обновления';

-- Permissions

ALTER TABLE client.lead_appeals OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.lead_appeals TO kcell_test_user;


-- client.marks definition

-- Drop table

-- DROP TABLE client.marks;

CREATE TABLE client.marks ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, code varchar(255) NULL, "name" varchar(255) NULL, "type" varchar(255) NULL, parent_id int8 NULL, CONSTRAINT marks_pkey PRIMARY KEY (id), CONSTRAINT fkqfp5dcdhorj9kd3rbw1h4kf4l FOREIGN KEY (parent_id) REFERENCES client.marks(id));

-- Permissions

ALTER TABLE client.marks OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.marks TO kcell_test_user;


-- client.ref_departments definition

-- Drop table

-- DROP TABLE client.ref_departments;

CREATE TABLE client.ref_departments ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "name" varchar(200) NOT NULL, parent_id int8 NULL, name_en varchar NULL, name_kz varchar NULL, CONSTRAINT ref_departments_pkey PRIMARY KEY (id), CONSTRAINT ref_departments_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES client.ref_departments(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.ref_departments.parent_id IS 'Иерархия: Направление > Сектор > Отдел';

-- Permissions

ALTER TABLE client.ref_departments OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.ref_departments TO kcell_test_user;


-- client.result_managers definition

-- Drop table

-- DROP TABLE client.result_managers;

CREATE TABLE client.result_managers ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "comment" varchar(255) NULL, create_date timestamp(6) NULL, fio varchar(255) NULL, next_processing_date timestamptz(6) NULL, promise_date timestamptz(6) NULL, "result" varchar(255) NULL, result_date timestamptz(6) NULL, user_name varchar(255) NULL, client_id int8 NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT result_managers_pkey PRIMARY KEY (id), CONSTRAINT fkm4q0w791ev49vcujh95mq29a5 FOREIGN KEY (client_id) REFERENCES client.clients(id));

-- Permissions

ALTER TABLE client.result_managers OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.result_managers TO kcell_test_user;


-- client.schedule_campaign_days_of_week definition

-- Drop table

-- DROP TABLE client.schedule_campaign_days_of_week;

CREATE TABLE client.schedule_campaign_days_of_week ( schedule_campaign_id int8 NOT NULL, days_of_week varchar(255) NULL, CONSTRAINT fkkjq7ss48eeyf9kgv02isu6w3o FOREIGN KEY (schedule_campaign_id) REFERENCES client.schedule_campaign(id));

-- Permissions

ALTER TABLE client.schedule_campaign_days_of_week OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.schedule_campaign_days_of_week TO kcell_test_user;


-- client.segment definition

-- Drop table

-- DROP TABLE client.segment;

CREATE TABLE client.segment ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, collection varchar(255) NULL, conditions jsonb NULL, dep_id varchar(255) NULL, description varchar(255) NULL, edit_date timestamptz(6) NULL, "name" varchar(255) NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, campaign_id int8 NULL, CONSTRAINT segment_pkey PRIMARY KEY (id), CONSTRAINT fkifr26lf5gqgt69hij2xx1vt97 FOREIGN KEY (campaign_id) REFERENCES client.campaign(id));

-- Permissions

ALTER TABLE client.segment OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.segment TO kcell_test_user;


-- client.skill_group_users definition

-- Drop table

-- DROP TABLE client.skill_group_users;

CREATE TABLE client.skill_group_users ( skill_group_id int8 NOT NULL, fio varchar(255) NULL, user_id int8 NULL, username varchar(255) NULL, CONSTRAINT fk1r9jg79hd089jt9r0ief3n6dg FOREIGN KEY (skill_group_id) REFERENCES client.skill_group(id));

-- Permissions

ALTER TABLE client.skill_group_users OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.skill_group_users TO kcell_test_user;


-- client.special_tariff_plans definition

-- Drop table

-- DROP TABLE client.special_tariff_plans;

CREATE TABLE client.special_tariff_plans ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, product_id int8 NULL, description text NULL, is_active bool DEFAULT true NULL, created_at timestamp DEFAULT now() NULL, CONSTRAINT special_tariff_plans_pkey PRIMARY KEY (id), CONSTRAINT special_tariff_plans_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE, CONSTRAINT special_tariff_plans_product_id_fkey FOREIGN KEY (product_id) REFERENCES client.products_services(id) DEFERRABLE);
CREATE UNIQUE INDEX special_tariff_plans_client_id_product_id_idx ON client.special_tariff_plans USING btree (client_id, product_id);

-- Column comments

COMMENT ON COLUMN client.special_tariff_plans.product_id IS 'Доступная услуга/устройство';
COMMENT ON COLUMN client.special_tariff_plans.description IS 'Описание спец. условий';

-- Permissions

ALTER TABLE client.special_tariff_plans OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.special_tariff_plans TO kcell_test_user;


-- client.subsidiaries definition

-- Drop table

-- DROP TABLE client.subsidiaries;

CREATE TABLE client.subsidiaries ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, parent_client_id int8 NULL, company_name varchar(255) NULL, bin varchar(255) NULL, city_region_id int8 NULL, created_at timestamp DEFAULT now() NULL, CONSTRAINT subsidiaries_pkey PRIMARY KEY (id), CONSTRAINT subsidiaries_city_region_id_fkey FOREIGN KEY (city_region_id) REFERENCES client.ref_cities_regions(id) DEFERRABLE, CONSTRAINT subsidiaries_parent_client_id_fkey FOREIGN KEY (parent_client_id) REFERENCES client.clients(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.subsidiaries.parent_client_id IS 'Родительская компания';
COMMENT ON COLUMN client.subsidiaries.company_name IS 'Дочерняя компания';
COMMENT ON COLUMN client.subsidiaries.bin IS 'БИН филиала';
COMMENT ON COLUMN client.subsidiaries.city_region_id IS 'Город';

-- Permissions

ALTER TABLE client.subsidiaries OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.subsidiaries TO kcell_test_user;


-- client.task_match_client definition

-- Drop table

-- DROP TABLE client.task_match_client;

CREATE TABLE client.task_match_client ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, task_match_id int8 NULL, CONSTRAINT task_match_client_pkey PRIMARY KEY (id), CONSTRAINT fkih194g8b67jo2fjauor3nny4n FOREIGN KEY (task_match_id) REFERENCES client.task_match(id));

-- Permissions

ALTER TABLE client.task_match_client OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.task_match_client TO kcell_test_user;


-- client.authorized_persons definition

-- Drop table

-- DROP TABLE client.authorized_persons;

CREATE TABLE client.authorized_persons ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, last_name varchar(100) NULL, first_name varchar(100) NULL, middle_name varchar(100) NULL, iin varchar(12) NULL, phone varchar(20) NULL, authority_description varchar(255) NULL, is_active bool DEFAULT true NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, email varchar(200) NULL, verification_password varchar(255) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_by uuid NULL, full_name varchar(255) NULL, upload_log varchar(500) NULL, CONSTRAINT authorized_persons_pkey PRIMARY KEY (id), CONSTRAINT uq_authorized_persons_client_fullname UNIQUE (client_id, full_name), CONSTRAINT authorized_persons_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.authorized_persons.client_id IS 'Клиент-владелец';
COMMENT ON COLUMN client.authorized_persons.last_name IS 'Фамилия';
COMMENT ON COLUMN client.authorized_persons.first_name IS 'Имя';
COMMENT ON COLUMN client.authorized_persons.middle_name IS 'Отчество';
COMMENT ON COLUMN client.authorized_persons.iin IS 'ИИН';
COMMENT ON COLUMN client.authorized_persons.phone IS 'Телефон';
COMMENT ON COLUMN client.authorized_persons.authority_description IS 'Полномочия';
COMMENT ON COLUMN client.authorized_persons.email IS 'Email';
COMMENT ON COLUMN client.authorized_persons.verification_password IS 'Пароль';
COMMENT ON COLUMN client.authorized_persons.full_name IS 'ФИО поверенного';
COMMENT ON COLUMN client.authorized_persons.upload_log IS 'Лог загрузки файла';

-- Permissions

ALTER TABLE client.authorized_persons OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.authorized_persons TO kcell_test_user;


-- client.bank_details definition

-- Drop table

-- DROP TABLE client.bank_details;

CREATE TABLE client.bank_details ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, bank_name varchar(255) NULL, bik varchar(255) NULL, account_number varchar(255) NULL, iban varchar(255) NULL, is_primary bool DEFAULT false NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, account_owner varchar(255) NULL, CONSTRAINT bank_details_pkey PRIMARY KEY (id), CONSTRAINT bank_details_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.bank_details.bank_name IS 'Банк';
COMMENT ON COLUMN client.bank_details.bik IS 'БИК';
COMMENT ON COLUMN client.bank_details.account_number IS 'Номер счета';
COMMENT ON COLUMN client.bank_details.iban IS 'IBAN';
COMMENT ON COLUMN client.bank_details.is_primary IS 'Основной счет';

-- Permissions

ALTER TABLE client.bank_details OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.bank_details TO kcell_test_user;


-- client.billing_accounts definition

-- Drop table

-- DROP TABLE client.billing_accounts;

CREATE TABLE client.billing_accounts ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, account_number varchar(50) NULL, balance numeric(38, 2) DEFAULT 0 NULL, debt_amount numeric(38, 2) DEFAULT 0 NULL, credit_limit numeric(38, 2) DEFAULT 0 NULL, remaining_limit numeric(38, 2) DEFAULT 0 NULL, credit_limit_increase_allowed bool DEFAULT false NULL, is_active bool DEFAULT true NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, CONSTRAINT billing_accounts_account_number_key UNIQUE (account_number), CONSTRAINT billing_accounts_pkey PRIMARY KEY (id), CONSTRAINT billing_accounts_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.billing_accounts.account_number IS 'Номер лицевого счета';
COMMENT ON COLUMN client.billing_accounts.balance IS 'Баланс';
COMMENT ON COLUMN client.billing_accounts.debt_amount IS 'Задолженность';
COMMENT ON COLUMN client.billing_accounts.credit_limit IS 'Кредитный лимит';
COMMENT ON COLUMN client.billing_accounts.remaining_limit IS 'Остаток лимита';
COMMENT ON COLUMN client.billing_accounts.credit_limit_increase_allowed IS 'Доступ на увеличение лимита';

-- Permissions

ALTER TABLE client.billing_accounts OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.billing_accounts TO kcell_test_user;


-- client.call_result definition

-- Drop table

-- DROP TABLE client.call_result;

CREATE TABLE client.call_result ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, campaign_id int8 NULL, "comment" varchar(255) NULL, contact_person varchar(255) NULL, contact_type varchar(255) NULL, create_date timestamptz(6) NULL, executed_campaign_id int8 NULL, phone_number varchar(255) NULL, promise_date timestamptz(6) NULL, reason_delay varchar(255) NULL, responsible varchar(255) NULL, "result" varchar(255) NULL, client_id int8 NULL, contact_id int8 NULL, contract varchar(255) NULL, duration int8 NULL, ended_at timestamptz(6) NULL, "language" varchar(255) NULL, outcome varchar(255) NULL, started_at timestamptz(6) NULL, CONSTRAINT call_result_pkey PRIMARY KEY (id), CONSTRAINT fk80vbt3ij0bvj74i2ahvlpjjux FOREIGN KEY (client_id) REFERENCES client.clients(id));

-- Permissions

ALTER TABLE client.call_result OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.call_result TO kcell_test_user;


-- client.campaign_task definition

-- Drop table

-- DROP TABLE client.campaign_task;

CREATE TABLE client.campaign_task ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, aim varchar(100) NULL, auto_closed bool NULL, collection varchar(255) NULL, "comment" varchar(255) NULL, contract_number varchar(255) NULL, dep_id varchar(255) NULL, expiration_date timestamptz(6) NULL, is_active bool NULL, is_reactivate bool NULL, is_worked bool NULL, last_action_date timestamptz(6) NULL, priority int4 NULL, reactivation_datetime timestamptz(6) NULL, srv_dep_code varchar(255) NULL, stage_of_task varchar(255) NULL, status varchar(255) NULL, task_completion_date timestamptz(6) NULL, task_number varchar(255) NULL, task_seq int8 NULL, "type" varchar(255) NULL, user_name varchar(255) NULL, client_id int8 NOT NULL, manager_id int8 NULL, schedule_campaign_id int8 NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT campaign_task_pkey PRIMARY KEY (id), CONSTRAINT fk7pnv0igy3ox2hguxd9v4vhmd4 FOREIGN KEY (manager_id) REFERENCES client.result_managers(id), CONSTRAINT fkawufca7limuyunfej6jkjt15j FOREIGN KEY (client_id) REFERENCES client.clients(id), CONSTRAINT fkf7otpub3x8b4kmsfbn1lpd7qh FOREIGN KEY (schedule_campaign_id) REFERENCES client.schedule_campaign(id));

-- Permissions

ALTER TABLE client.campaign_task OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.campaign_task TO kcell_test_user;


-- client.campaign_task_history definition

-- Drop table

-- DROP TABLE client.campaign_task_history;

CREATE TABLE client.campaign_task_history ( id uuid NOT NULL, aim varchar(100) NULL, auto_closed bool NULL, campaign_task_id int8 NOT NULL, changed_at timestamptz(6) NOT NULL, changed_by varchar(100) NULL, collection varchar(255) NULL, "comment" varchar(255) NULL, contract_number varchar(255) NULL, created_at timestamptz(6) NULL, created_by varchar(255) NULL, deleted_at timestamptz(6) NULL, dep_id varchar(255) NULL, expiration_date timestamptz(6) NULL, is_active bool NULL, is_reactivate bool NULL, is_worked bool NULL, last_action_date timestamptz(6) NULL, operation varchar(10) NOT NULL, priority int4 NULL, reactivation_datetime timestamptz(6) NULL, srv_dep_code varchar(255) NULL, stage_of_task varchar(255) NULL, status varchar(255) NULL, task_completion_date timestamptz(6) NULL, task_number varchar(255) NULL, task_seq int8 NULL, "type" varchar(255) NULL, updated_at timestamptz(6) NULL, updated_by varchar(255) NULL, user_name varchar(255) NULL, client_id int8 NULL, manager_id int8 NULL, schedule_campaign_id int8 NULL, CONSTRAINT campaign_task_history_pkey PRIMARY KEY (id), CONSTRAINT fk11qangtpbbxbfmvpfh5ov32uc FOREIGN KEY (manager_id) REFERENCES client.result_managers(id), CONSTRAINT fkmb1ooj004ysnb35fl1cl7pyo3 FOREIGN KEY (schedule_campaign_id) REFERENCES client.schedule_campaign(id), CONSTRAINT fkqf1db8o0v7fffdstsefyjyf1o FOREIGN KEY (client_id) REFERENCES client.clients(id));

-- Permissions

ALTER TABLE client.campaign_task_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.campaign_task_history TO kcell_test_user;


-- client.client_addresses definition

-- Drop table

-- DROP TABLE client.client_addresses;

CREATE TABLE client.client_addresses ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, address_type_id int8 NULL, city_region_id int8 NULL, full_address text NULL, postal_code varchar(255) NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, actual_address varchar(255) NULL, legal_address varchar(255) NULL, CONSTRAINT client_addresses_pkey PRIMARY KEY (id), CONSTRAINT client_addresses_address_type_id_fkey FOREIGN KEY (address_type_id) REFERENCES client.ref_address_types(id) DEFERRABLE, CONSTRAINT client_addresses_city_region_id_fkey FOREIGN KEY (city_region_id) REFERENCES client.ref_cities_regions(id) DEFERRABLE, CONSTRAINT client_addresses_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE);
CREATE UNIQUE INDEX client_addresses_client_id_address_type_id_idx ON client.client_addresses USING btree (client_id, address_type_id);

-- Column comments

COMMENT ON COLUMN client.client_addresses.address_type_id IS 'Юридический, фактический, для корреспонденции';
COMMENT ON COLUMN client.client_addresses.city_region_id IS 'Город/регион';
COMMENT ON COLUMN client.client_addresses.full_address IS 'Полный адрес';
COMMENT ON COLUMN client.client_addresses.postal_code IS 'Почтовый индекс';

-- Permissions

ALTER TABLE client.client_addresses OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.client_addresses TO kcell_test_user;


-- client.client_contact definition

-- Drop table

-- DROP TABLE client.client_contact;

CREATE TABLE client.client_contact ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, contact_type_id int8 NULL, value varchar(300) NULL, is_primary bool DEFAULT false NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, CONSTRAINT client_contact_pkey PRIMARY KEY (id), CONSTRAINT client_contact_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE, CONSTRAINT client_contact_contact_type_id_fkey FOREIGN KEY (contact_type_id) REFERENCES client.ref_contact_info_types(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.client_contact.client_id IS 'Клиент';
COMMENT ON COLUMN client.client_contact.contact_type_id IS 'Тип контакта';
COMMENT ON COLUMN client.client_contact.value IS 'Значение контакта';
COMMENT ON COLUMN client.client_contact.is_primary IS 'Основной контакт';

-- Permissions

ALTER TABLE client.client_contact OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.client_contact TO kcell_test_user;


-- client.client_id_documents definition

-- Drop table

-- DROP TABLE client.client_id_documents;

CREATE TABLE client.client_id_documents ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, document_type_id int8 NULL, document_number varchar(50) NULL, issued_by varchar(300) NULL, issue_date date NULL, expiry_date date NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, CONSTRAINT client_id_documents_pkey PRIMARY KEY (id), CONSTRAINT client_id_documents_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE, CONSTRAINT client_id_documents_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES client.ref_id_document_types(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.client_id_documents.document_type_id IS 'Тип документа: паспорт, УДЛ';
COMMENT ON COLUMN client.client_id_documents.document_number IS 'Номер документа';
COMMENT ON COLUMN client.client_id_documents.issued_by IS 'Кем выдан';
COMMENT ON COLUMN client.client_id_documents.issue_date IS 'Дата выдачи';
COMMENT ON COLUMN client.client_id_documents.expiry_date IS 'Срок действия';

-- Permissions

ALTER TABLE client.client_id_documents OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.client_id_documents TO kcell_test_user;


-- client.client_phone_numbers definition

-- Drop table

-- DROP TABLE client.client_phone_numbers;

CREATE TABLE client.client_phone_numbers ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, phone_number varchar(255) NULL, brand_id int8 NULL, is_active bool DEFAULT true NULL, created_at timestamp DEFAULT now() NULL, CONSTRAINT client_phone_numbers_pkey PRIMARY KEY (id), CONSTRAINT client_phone_numbers_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES client.ref_brands(id) DEFERRABLE, CONSTRAINT client_phone_numbers_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.client_phone_numbers.phone_number IS 'Номер телефона';
COMMENT ON COLUMN client.client_phone_numbers.brand_id IS 'Бренд: Актив / Кселл';
COMMENT ON COLUMN client.client_phone_numbers.is_active IS 'Активен';

-- Permissions

ALTER TABLE client.client_phone_numbers OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.client_phone_numbers TO kcell_test_user;


-- client.client_products definition

-- Drop table

-- DROP TABLE client.client_products;

CREATE TABLE client.client_products ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, product_id int8 NULL, activated_at timestamp NULL, deactivated_at timestamp NULL, is_active bool DEFAULT true NULL, created_at timestamp DEFAULT now() NULL, "name" varchar(255) NULL, CONSTRAINT client_products_pkey PRIMARY KEY (id), CONSTRAINT client_products_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE, CONSTRAINT client_products_product_id_fkey FOREIGN KEY (product_id) REFERENCES client.products_services(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.client_products.activated_at IS 'Дата активации';
COMMENT ON COLUMN client.client_products.deactivated_at IS 'Дата деактивации';

-- Permissions

ALTER TABLE client.client_products OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.client_products TO kcell_test_user;


-- client.client_restrictions definition

-- Drop table

-- DROP TABLE client.client_restrictions;

CREATE TABLE client.client_restrictions ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, restriction_type_id int8 NULL, description varchar(255) NULL, is_active bool DEFAULT true NULL, start_date timestamp DEFAULT now() NULL, end_date timestamp NULL, created_at timestamp DEFAULT now() NULL, CONSTRAINT client_restrictions_pkey PRIMARY KEY (id), CONSTRAINT client_restrictions_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE, CONSTRAINT client_restrictions_restriction_type_id_fkey FOREIGN KEY (restriction_type_id) REFERENCES client.ref_restriction_types(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.client_restrictions.client_id IS 'Клиент';
COMMENT ON COLUMN client.client_restrictions.restriction_type_id IS 'Тип: стоп-лист, конфликты по продуктам, задолженность';
COMMENT ON COLUMN client.client_restrictions.description IS 'Описание ограничения';
COMMENT ON COLUMN client.client_restrictions.start_date IS 'Дата начала ограничения';
COMMENT ON COLUMN client.client_restrictions.end_date IS 'Дата окончания ограничения';

-- Permissions

ALTER TABLE client.client_restrictions OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.client_restrictions TO kcell_test_user;


-- client.contact_addresses definition

-- Drop table

-- DROP TABLE client.contact_addresses;

CREATE TABLE client.contact_addresses ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, contact_id int8 NULL, address_type_id int8 NULL, city_region_id int8 NULL, full_address text NULL, created_at timestamp DEFAULT now() NULL, CONSTRAINT contact_addresses_pkey PRIMARY KEY (id), CONSTRAINT contact_addresses_address_type_id_fkey FOREIGN KEY (address_type_id) REFERENCES client.ref_address_types(id) DEFERRABLE, CONSTRAINT contact_addresses_city_region_id_fkey FOREIGN KEY (city_region_id) REFERENCES client.ref_cities_regions(id) DEFERRABLE, CONSTRAINT contact_addresses_contact_id_fkey FOREIGN KEY (contact_id) REFERENCES client.contacts(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.contact_addresses.address_type_id IS 'Тип адреса';
COMMENT ON COLUMN client.contact_addresses.city_region_id IS 'Город/регион';
COMMENT ON COLUMN client.contact_addresses.full_address IS 'Полный адрес';

-- Permissions

ALTER TABLE client.contact_addresses OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.contact_addresses TO kcell_test_user;


-- client.contact_careers definition

-- Drop table

-- DROP TABLE client.contact_careers;

CREATE TABLE client.contact_careers ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, contact_id int8 NULL, company_name varchar(255) NULL, "position" varchar(255) NULL, start_date date NULL, end_date date NULL, is_current bool DEFAULT false NULL, created_at timestamp DEFAULT now() NULL, CONSTRAINT contact_careers_pkey PRIMARY KEY (id), CONSTRAINT contact_careers_contact_id_fkey FOREIGN KEY (contact_id) REFERENCES client.contacts(id) DEFERRABLE);
CREATE INDEX contact_careers_contact_id_start_date_idx ON client.contact_careers USING btree (contact_id, start_date);

-- Column comments

COMMENT ON COLUMN client.contact_careers.company_name IS 'Название компании';
COMMENT ON COLUMN client.contact_careers."position" IS 'Должность';
COMMENT ON COLUMN client.contact_careers.start_date IS 'Дата начала';
COMMENT ON COLUMN client.contact_careers.end_date IS 'Дата окончания';
COMMENT ON COLUMN client.contact_careers.is_current IS 'Текущее место работы';

-- Permissions

ALTER TABLE client.contact_careers OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.contact_careers TO kcell_test_user;


-- client.contact_contact definition

-- Drop table

-- DROP TABLE client.contact_contact;

CREATE TABLE client.contact_contact ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, contact_id int8 NULL, contact_type_id int8 NULL, value varchar(300) NULL, is_primary bool DEFAULT false NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, CONSTRAINT contact_contact_pkey PRIMARY KEY (id), CONSTRAINT contact_contact_contact_id_fkey FOREIGN KEY (contact_id) REFERENCES client.contacts(id) DEFERRABLE, CONSTRAINT contact_contact_contact_type_id_fkey FOREIGN KEY (contact_type_id) REFERENCES client.ref_contact_info_types(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.contact_contact.contact_id IS 'Контактное лицо';
COMMENT ON COLUMN client.contact_contact.contact_type_id IS 'Тип контакта';
COMMENT ON COLUMN client.contact_contact.value IS 'Значение контакта';
COMMENT ON COLUMN client.contact_contact.is_primary IS 'Основной контакт';

-- Permissions

ALTER TABLE client.contact_contact OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.contact_contact TO kcell_test_user;


-- client.contact_id_documents definition

-- Drop table

-- DROP TABLE client.contact_id_documents;

CREATE TABLE client.contact_id_documents ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, contact_id int8 NULL, document_type_id int8 NULL, document_number varchar(255) NULL, issued_by varchar(255) NULL, expiry_date date NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, CONSTRAINT contact_id_documents_pkey PRIMARY KEY (id), CONSTRAINT contact_id_documents_contact_id_fkey FOREIGN KEY (contact_id) REFERENCES client.contacts(id) DEFERRABLE, CONSTRAINT contact_id_documents_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES client.ref_id_document_types(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.contact_id_documents.document_type_id IS 'Тип документа';
COMMENT ON COLUMN client.contact_id_documents.document_number IS 'Номер документа';
COMMENT ON COLUMN client.contact_id_documents.issued_by IS 'Кем выдан';
COMMENT ON COLUMN client.contact_id_documents.expiry_date IS 'Срок действия';

-- Permissions

ALTER TABLE client.contact_id_documents OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.contact_id_documents TO kcell_test_user;


-- client.credit_history_individual definition

-- Drop table

-- DROP TABLE client.credit_history_individual;

CREATE TABLE client.credit_history_individual ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, amount numeric(15, 2) NULL, close_date timestamptz(6) NULL, credit_type varchar(100) NULL, currency varchar(3) NULL, interest_rate numeric(5, 2) NULL, issue_date timestamptz(6) NULL, status varchar(50) NULL, term_months int4 NULL, individual_client_id int8 NULL, CONSTRAINT credit_history_individual_pkey PRIMARY KEY (id), CONSTRAINT fk6urm7drt3oy0idcuisv0y4s2d FOREIGN KEY (individual_client_id) REFERENCES client.individual_clients(id));
CREATE INDEX idx_credit_history_individual ON client.credit_history_individual USING btree (individual_client_id);

-- Permissions

ALTER TABLE client.credit_history_individual OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.credit_history_individual TO kcell_test_user;


-- client.employees definition

-- Drop table

-- DROP TABLE client.employees;

CREATE TABLE client.employees ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, first_name varchar(100) NULL, last_name varchar(100) NULL, middle_name varchar(100) NULL, "position" varchar(255) NULL, department_id int8 NULL, supervisor_id int8 NULL, is_active bool DEFAULT true NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, CONSTRAINT employees_pkey PRIMARY KEY (id), CONSTRAINT employees_department_id_fkey FOREIGN KEY (department_id) REFERENCES client.ref_departments(id) DEFERRABLE, CONSTRAINT employees_supervisor_id_fkey FOREIGN KEY (supervisor_id) REFERENCES client.employees(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.employees.first_name IS 'Имя';
COMMENT ON COLUMN client.employees.last_name IS 'Фамилия';
COMMENT ON COLUMN client.employees.middle_name IS 'Отчество';
COMMENT ON COLUMN client.employees."position" IS 'Должность';
COMMENT ON COLUMN client.employees.department_id IS 'Направление/Отдел';
COMMENT ON COLUMN client.employees.supervisor_id IS 'Начальник';

-- Permissions

ALTER TABLE client.employees OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.employees TO kcell_test_user;


-- client.powers_of_attorney definition

-- Drop table

-- DROP TABLE client.powers_of_attorney;

CREATE TABLE client.powers_of_attorney ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, contact_id int8 NULL, poa_type_id int8 NULL, document_type_id int8 NULL, start_date date NULL, end_date date NULL, status varchar(255) DEFAULT 'active'::character varying NULL, file_name varchar(255) NULL, file_path varchar(255) NULL, expiry_notification_sent bool DEFAULT false NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, authorized_person_id int8 NULL, validity_period varchar(255) NULL, CONSTRAINT powers_of_attorney_pkey PRIMARY KEY (id), CONSTRAINT uq_poa_person_dates UNIQUE (authorized_person_id, start_date, end_date), CONSTRAINT fk_poa_authorized_person FOREIGN KEY (authorized_person_id) REFERENCES client.authorized_persons(id) DEFERRABLE, CONSTRAINT powers_of_attorney_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE, CONSTRAINT powers_of_attorney_contact_id_fkey FOREIGN KEY (contact_id) REFERENCES client.contacts(id) DEFERRABLE, CONSTRAINT powers_of_attorney_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES client.ref_document_types(id) DEFERRABLE, CONSTRAINT powers_of_attorney_poa_type_id_fkey FOREIGN KEY (poa_type_id) REFERENCES client.ref_poa_types(id) DEFERRABLE);

-- Column comments

COMMENT ON COLUMN client.powers_of_attorney.client_id IS 'Клиент';
COMMENT ON COLUMN client.powers_of_attorney.contact_id IS 'Контактное лицо (фильтр по контактам клиента)';
COMMENT ON COLUMN client.powers_of_attorney.poa_type_id IS 'Вид доверенности';
COMMENT ON COLUMN client.powers_of_attorney.document_type_id IS 'Тип документа';
COMMENT ON COLUMN client.powers_of_attorney.start_date IS 'Дата начала';
COMMENT ON COLUMN client.powers_of_attorney.end_date IS 'Дата окончания';
COMMENT ON COLUMN client.powers_of_attorney.status IS 'Статус документа';
COMMENT ON COLUMN client.powers_of_attorney.file_name IS 'Имя файла';
COMMENT ON COLUMN client.powers_of_attorney.file_path IS 'Путь к файлу';
COMMENT ON COLUMN client.powers_of_attorney.expiry_notification_sent IS 'Уведомление об истечении';
COMMENT ON COLUMN client.powers_of_attorney.authorized_person_id IS 'Уполномоченное лицо';
COMMENT ON COLUMN client.powers_of_attorney.validity_period IS 'Период действия';

-- Permissions

ALTER TABLE client.powers_of_attorney OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.powers_of_attorney TO kcell_test_user;


-- client.activities definition

-- Drop table

-- DROP TABLE client.activities;

CREATE TABLE client.activities ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, activity_type varchar(255) NULL, subject varchar(255) NULL, description text NULL, "source" varchar(255) NULL, source_id int8 NULL, created_by int8 NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, CONSTRAINT activities_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.activities.client_id IS 'Клиент';
COMMENT ON COLUMN client.activities.activity_type IS 'Тип активности';
COMMENT ON COLUMN client.activities.subject IS 'Тема';
COMMENT ON COLUMN client.activities.description IS 'Описание';
COMMENT ON COLUMN client.activities."source" IS 'Источник';
COMMENT ON COLUMN client.activities.source_id IS 'ID источника';
COMMENT ON COLUMN client.activities.created_by IS 'Кем создано';

-- Permissions

ALTER TABLE client.activities OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.activities TO kcell_test_user;


-- client.client_requirement_attachments definition

-- Drop table

-- DROP TABLE client.client_requirement_attachments;

CREATE TABLE client.client_requirement_attachments ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, requirement_id int8 NULL, file_name varchar(255) NULL, file_path varchar(255) NULL, file_size int8 NULL, uploaded_at timestamp DEFAULT now() NULL, CONSTRAINT client_requirement_attachments_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.client_requirement_attachments.requirement_id IS 'Требование';
COMMENT ON COLUMN client.client_requirement_attachments.file_name IS 'Имя файла';
COMMENT ON COLUMN client.client_requirement_attachments.file_path IS 'Путь к файлу';
COMMENT ON COLUMN client.client_requirement_attachments.file_size IS 'Размер файла, байт';
COMMENT ON COLUMN client.client_requirement_attachments.uploaded_at IS 'Дата загрузки';

-- Permissions

ALTER TABLE client.client_requirement_attachments OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.client_requirement_attachments TO kcell_test_user;


-- client.client_requirements definition

-- Drop table

-- DROP TABLE client.client_requirements;

CREATE TABLE client.client_requirements ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, description text NULL, created_by int8 NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, CONSTRAINT client_requirements_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.client_requirements.client_id IS 'Клиент';
COMMENT ON COLUMN client.client_requirements.description IS 'Текст требования (ручной ввод)';
COMMENT ON COLUMN client.client_requirements.created_by IS 'Кем создано';

-- Permissions

ALTER TABLE client.client_requirements OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.client_requirements TO kcell_test_user;


-- client.clients_b2b definition

-- Drop table

-- DROP TABLE client.clients_b2b;

CREATE TABLE client.clients_b2b ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, bin_iin varchar(12) NULL, company_name varchar(300) NULL, logo_url varchar(500) NULL, segment_id int8 NULL, industry_id int8 NULL, category_id int8 NULL, legal_form_id int8 NULL, department_id int8 NULL, acquisition_employee_id int8 NULL, retention_employee_id int8 NULL, acquisition_head_id int8 NULL, retention_head_id int8 NULL, payment_terms varchar(200) NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, contact_person_full_name varchar(255) NULL, contact_person_position varchar(255) NULL, email varchar(255) NULL, rnn varchar(12) NULL, vat_certificate varchar(100) NULL, economy_sector varchar(10) NULL, CONSTRAINT clients_b2b_bin_iin_key UNIQUE (bin_iin), CONSTRAINT clients_b2b_client_id_key UNIQUE (client_id), CONSTRAINT clients_b2b_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.clients_b2b.client_id IS 'Связь 1:1 с базовой карточкой';
COMMENT ON COLUMN client.clients_b2b.bin_iin IS 'БИН/ИИН';
COMMENT ON COLUMN client.clients_b2b.company_name IS 'Наименование компании';
COMMENT ON COLUMN client.clients_b2b.logo_url IS 'Логотип компании';
COMMENT ON COLUMN client.clients_b2b.segment_id IS 'Сегмент';
COMMENT ON COLUMN client.clients_b2b.industry_id IS 'Индустрия';
COMMENT ON COLUMN client.clients_b2b.category_id IS 'Категория ABC';
COMMENT ON COLUMN client.clients_b2b.legal_form_id IS 'ОПФ';
COMMENT ON COLUMN client.clients_b2b.department_id IS 'Направление/Отдел';
COMMENT ON COLUMN client.clients_b2b.acquisition_employee_id IS 'Ответственный Acquisition';
COMMENT ON COLUMN client.clients_b2b.retention_employee_id IS 'Ответственный Retention';
COMMENT ON COLUMN client.clients_b2b.acquisition_head_id IS 'Руководитель Acquisition';
COMMENT ON COLUMN client.clients_b2b.retention_head_id IS 'Руководитель Retention';
COMMENT ON COLUMN client.clients_b2b.payment_terms IS 'Сроки оплаты';
COMMENT ON COLUMN client.clients_b2b.contact_person_full_name IS 'Контактное лицо';
COMMENT ON COLUMN client.clients_b2b.contact_person_position IS 'Должность контактного лица';
COMMENT ON COLUMN client.clients_b2b.email IS 'Email';
COMMENT ON COLUMN client.clients_b2b.rnn IS 'РНН';
COMMENT ON COLUMN client.clients_b2b.vat_certificate IS 'Свидетельство НДС';
COMMENT ON COLUMN client.clients_b2b.economy_sector IS 'Сектор экономики';

-- Permissions

ALTER TABLE client.clients_b2b OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.clients_b2b TO kcell_test_user;


-- client.communicate_result definition

-- Drop table

-- DROP TABLE client.communicate_result;

CREATE TABLE client.communicate_result ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, appeal varchar(255) NULL, call_type varchar(255) NULL, channel varchar(255) NULL, "comment" varchar(255) NULL, contact_value varchar(255) NULL, create_date timestamptz(6) NULL, created_at timestamptz(6) NULL, created_by uuid NULL, "date" timestamptz(6) NULL, deleted_at timestamptz(6) NULL, delivered_at timestamptz(6) NULL, direction varchar(255) NULL, message_type varchar(255) NULL, promise_date timestamptz(6) NULL, receiver_fio varchar(255) NULL, responsible varchar(255) NULL, "result" varchar(255) NULL, status varchar(255) NULL, subject varchar(255) NULL, task_number varchar(255) NULL, topic varchar(255) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, user_id uuid NULL, client_id int8 NOT NULL, contact_id int8 NULL, end_date timestamptz(6) NULL, start_date timestamptz(6) NULL, client_contact_id int8 NULL, contract_id int8 NULL, CONSTRAINT communicate_result_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.communicate_result OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.communicate_result TO kcell_test_user;


-- client.contract_documents definition

-- Drop table

-- DROP TABLE client.contract_documents;

CREATE TABLE client.contract_documents ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, contract_id int8 NULL, document_type_id int8 NULL, file_name varchar(255) NULL, file_path varchar(255) NULL, file_size varchar(255) NULL, uploaded_by int8 NULL, uploaded_at timestamp DEFAULT now() NULL, CONSTRAINT contract_documents_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.contract_documents.contract_id IS 'Договор';
COMMENT ON COLUMN client.contract_documents.document_type_id IS 'Тип документа';
COMMENT ON COLUMN client.contract_documents.file_name IS 'Имя файла';
COMMENT ON COLUMN client.contract_documents.file_path IS 'Путь к файлу';
COMMENT ON COLUMN client.contract_documents.file_size IS 'Размер файла, байт';
COMMENT ON COLUMN client.contract_documents.uploaded_by IS 'Кем загружен';
COMMENT ON COLUMN client.contract_documents.uploaded_at IS 'Дата загрузки';

-- Permissions

ALTER TABLE client.contract_documents OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.contract_documents TO kcell_test_user;


-- client.contract_history definition

-- Drop table

-- DROP TABLE client.contract_history;

CREATE TABLE client.contract_history ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, archived_at timestamptz(6) NULL, bin_iin varchar(12) NULL, borrower_name varchar(255) NULL, business_type varchar(100) NULL, client_account_code varchar(255) NULL, collection_status varchar(50) NULL, contract_end_date timestamptz(6) NULL, contract_number varchar(100) NULL, contract_state varchar(255) NULL, contract_status varchar(50) NULL, credit_amount numeric(15, 2) NULL, credit_product_name varchar(255) NULL, credit_purpose varchar(255) NULL, credit_term_months int4 NULL, currency varchar(3) NULL, damu_guarantees bool NULL, delay_days int4 NULL, fine_amount numeric(15, 2) NULL, general_agreement varchar(100) NULL, ifrs_portfolio_type varchar(100) NULL, ifrs_provision_interest numeric(15, 2) NULL, ifrs_provision_interest_balance numeric(15, 2) NULL, ifrs_provision_percentage numeric(5, 2) NULL, ifrs_provision_principal numeric(15, 2) NULL, ifrs_provision_principal_balance numeric(15, 2) NULL, interest_debt numeric(15, 2) NULL, interest_rate numeric(6, 2) NULL, issue_date timestamptz(6) NULL, organizational_unit_id int8 NULL, overdue_days_interest int4 NULL, overdue_days_principal int4 NULL, overdue_interest_debt numeric(15, 2) NULL, overdue_principal_debt numeric(15, 2) NULL, penalty_amount numeric(15, 2) NULL, principal_debt numeric(15, 2) NULL, product_code varchar(255) NULL, project_manager varchar(255) NULL, receivables_debt numeric(15, 2) NULL, repayment_date varchar(255) NULL, restructuring_date timestamptz(6) NULL, statname varchar(255) NULL, client_id int8 NULL, contract_id int8 NULL, mark_id int8 NULL, CONSTRAINT contract_history_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.contract_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.contract_history TO kcell_test_user;


-- client.contract_products definition

-- Drop table

-- DROP TABLE client.contract_products;

CREATE TABLE client.contract_products ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, contract_id int8 NULL, product_id int8 NULL, service_start_date date NULL, service_end_date date NULL, quantity int4 DEFAULT 1 NULL, one_time_fee numeric(38, 2) DEFAULT 0 NULL, monthly_fee numeric(38, 2) DEFAULT 0 NULL, promotion varchar(300) NULL, discount numeric(38, 2) DEFAULT 0 NULL, total_amount numeric(38, 2) DEFAULT 0 NULL, created_at timestamp DEFAULT now() NULL, CONSTRAINT contract_products_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.contract_products.product_id IS 'Продукт';
COMMENT ON COLUMN client.contract_products.service_start_date IS 'Дата начала предоставления услуги';
COMMENT ON COLUMN client.contract_products.service_end_date IS 'Дата окончания предоставления услуги';
COMMENT ON COLUMN client.contract_products.quantity IS 'Количество';
COMMENT ON COLUMN client.contract_products.one_time_fee IS 'Стоимость ЕП (единовременная плата)';
COMMENT ON COLUMN client.contract_products.monthly_fee IS 'Стоимость АП (абонентская плата)';
COMMENT ON COLUMN client.contract_products.promotion IS 'Акция';
COMMENT ON COLUMN client.contract_products.discount IS 'Скидка, %';
COMMENT ON COLUMN client.contract_products.total_amount IS 'Общая сумма';

-- Permissions

ALTER TABLE client.contract_products OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.contract_products TO kcell_test_user;


-- client.contracts definition

-- Drop table

-- DROP TABLE client.contracts;

CREATE TABLE client.contracts ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, registration_number varchar(255) NULL, start_date date NULL, end_date date NULL, contract_type_id int8 NULL, status_id int8 NULL, responsible_kcell_id int8 NULL, responsible_contact_id int8 NULL, billing_account_id int8 NULL, balance numeric(38, 2) DEFAULT 0 NULL, total_amount numeric(38, 2) DEFAULT 0 NULL, payment_form_id int8 NULL, is_debtor bool DEFAULT false NULL, residual_value numeric(38, 2) NULL, currency_id int8 NULL, parent_contract_id int8 NULL, is_open_incomplete bool DEFAULT false NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, contract_number varchar(255) NULL, CONSTRAINT contracts_pkey PRIMARY KEY (id), CONSTRAINT contracts_registration_number_key UNIQUE (registration_number));
CREATE INDEX idx_contracts_client ON client.contracts USING btree (client_id);

-- Column comments

COMMENT ON COLUMN client.contracts.client_id IS 'Клиент';
COMMENT ON COLUMN client.contracts.registration_number IS 'Регистрационный номер';
COMMENT ON COLUMN client.contracts.start_date IS 'Дата начала';
COMMENT ON COLUMN client.contracts.end_date IS 'Дата окончания';
COMMENT ON COLUMN client.contracts.contract_type_id IS 'Тип договора';
COMMENT ON COLUMN client.contracts.status_id IS 'Статус';
COMMENT ON COLUMN client.contracts.responsible_kcell_id IS 'Ответственный Кселл';
COMMENT ON COLUMN client.contracts.responsible_contact_id IS 'Ответственный клиента';
COMMENT ON COLUMN client.contracts.billing_account_id IS 'Лицевой счет';
COMMENT ON COLUMN client.contracts.balance IS 'Баланс';
COMMENT ON COLUMN client.contracts.total_amount IS 'Общая сумма';
COMMENT ON COLUMN client.contracts.payment_form_id IS 'Форма оплаты';
COMMENT ON COLUMN client.contracts.is_debtor IS 'Должник';
COMMENT ON COLUMN client.contracts.residual_value IS 'Остаточная стоимость';
COMMENT ON COLUMN client.contracts.currency_id IS 'Валюта';
COMMENT ON COLUMN client.contracts.parent_contract_id IS 'Родительский договор';
COMMENT ON COLUMN client.contracts.is_open_incomplete IS 'Открытый незавершенный';

-- Permissions

ALTER TABLE client.contracts OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.contracts TO kcell_test_user;


-- client.documents definition

-- Drop table

-- DROP TABLE client.documents;

CREATE TABLE client.documents ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, document_type_id int8 NULL, category varchar(20) NULL, status varchar(255) DEFAULT 'active'::character varying NULL, file_name varchar(255) NULL, file_path varchar(255) NULL, file_size int8 NULL, uploaded_by int8 NULL, uploaded_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, created_at timestamp DEFAULT now() NULL, s3_key varchar(1000) NULL, file_hash varchar(64) NULL, enrichment_status varchar(50) DEFAULT 'stored'::character varying NULL, retry_count int4 DEFAULT 0 NOT NULL, last_retry_at timestamptz NULL, extracted_fields jsonb NULL, product_code varchar(255) NULL, doc_type varchar(255) NULL, CONSTRAINT documents_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.documents.client_id IS 'Клиент';
COMMENT ON COLUMN client.documents.document_type_id IS 'Тип документа';
COMMENT ON COLUMN client.documents.category IS 'Категория';
COMMENT ON COLUMN client.documents.status IS 'Статус';
COMMENT ON COLUMN client.documents.file_name IS 'Имя файла';
COMMENT ON COLUMN client.documents.file_path IS 'Путь к файлу';
COMMENT ON COLUMN client.documents.file_size IS 'Размер файла';
COMMENT ON COLUMN client.documents.uploaded_by IS 'Кем загружен';
COMMENT ON COLUMN client.documents.uploaded_at IS 'Дата загрузки';

-- Permissions

ALTER TABLE client.documents OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.documents TO kcell_test_user;


-- client.payment_history definition

-- Drop table

-- DROP TABLE client.payment_history;

CREATE TABLE client.payment_history ( tra_id int8 NOT NULL, amount numeric(15, 2) NULL, channel varchar(255) NULL, contract_number varchar(255) NULL, currency varchar(255) NULL, operation_code varchar(255) NULL, operation_name varchar(255) NULL, organizational_unit_id int8 NULL, payment_date date NULL, client_id int8 NULL, contract_id int8 NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT payment_history_pkey PRIMARY KEY (tra_id));

-- Permissions

ALTER TABLE client.payment_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.payment_history TO kcell_test_user;


-- client.payment_schedule definition

-- Drop table

-- DROP TABLE client.payment_schedule;

CREATE TABLE client.payment_schedule ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, commission_amount numeric(15, 2) NULL, interest_amount numeric(15, 2) NULL, payment_date timestamptz(6) NULL, principal_amount numeric(15, 2) NULL, remaining_balance numeric(15, 2) NULL, total_amount numeric(15, 2) NULL, contract_id int8 NULL, CONSTRAINT payment_schedule_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.payment_schedule OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.payment_schedule TO kcell_test_user;


-- client.poa_change_history definition

-- Drop table

-- DROP TABLE client.poa_change_history;

CREATE TABLE client.poa_change_history ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, poa_id int8 NULL, field_changed varchar(255) NULL, old_value varchar(255) NULL, new_value varchar(255) NULL, changed_by int8 NULL, changed_at timestamp DEFAULT now() NULL, CONSTRAINT poa_change_history_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.poa_change_history.poa_id IS 'Доверенность';
COMMENT ON COLUMN client.poa_change_history.field_changed IS 'Измененное поле';
COMMENT ON COLUMN client.poa_change_history.old_value IS 'Старое значение';
COMMENT ON COLUMN client.poa_change_history.new_value IS 'Новое значение';
COMMENT ON COLUMN client.poa_change_history.changed_by IS 'Кем изменено';
COMMENT ON COLUMN client.poa_change_history.changed_at IS 'Дата изменения';

-- Permissions

ALTER TABLE client.poa_change_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.poa_change_history TO kcell_test_user;


-- client.processing_results definition

-- Drop table

-- DROP TABLE client.processing_results;

CREATE TABLE client.processing_results ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "comment" varchar(255) NULL, next_processing_date timestamptz(6) NULL, processing_comment varchar(255) NULL, processing_date timestamptz(6) NULL, processing_result varchar(500) NULL, promise_date timestamptz(6) NULL, responsible varchar(255) NULL, task_number varchar(255) NULL, client_id int8 NOT NULL, contract_id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT processing_results_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.processing_results OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.processing_results TO kcell_test_user;


-- client.related_contracts definition

-- Drop table

-- DROP TABLE client.related_contracts;

CREATE TABLE client.related_contracts ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, contract_id int8 NULL, related_contract_id int8 NULL, created_at timestamp DEFAULT now() NULL, CONSTRAINT related_contracts_pkey PRIMARY KEY (id));
CREATE UNIQUE INDEX related_contracts_contract_id_related_contract_id_idx ON client.related_contracts USING btree (contract_id, related_contract_id);

-- Column comments

COMMENT ON COLUMN client.related_contracts.contract_id IS 'Договор';
COMMENT ON COLUMN client.related_contracts.related_contract_id IS 'Связанный договор';

-- Permissions

ALTER TABLE client.related_contracts OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.related_contracts TO kcell_test_user;


-- client.schedule_campaign_robot definition

-- Drop table

-- DROP TABLE client.schedule_campaign_robot;

CREATE TABLE client.schedule_campaign_robot ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, description varchar(255) NULL, robot_id int8 NULL, robot_name varchar(255) NULL, schedule_campaign_settings_id int8 NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT schedule_campaign_robot_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE client.schedule_campaign_robot OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.schedule_campaign_robot TO kcell_test_user;


-- client.schedule_campaign_settings definition

-- Drop table

-- DROP TABLE client.schedule_campaign_settings;

CREATE TABLE client.schedule_campaign_settings ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, robot_id int8 NULL, skill_group_id int8 NULL, user_id int8 NULL, campaign_id int8 NULL, schedule_campaign_id int8 NULL, schedule_campaign_user_id int8 NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT schedule_campaign_settings_pkey PRIMARY KEY (id), CONSTRAINT uk133oul1wtkrawjp8ngja88tgg UNIQUE (schedule_campaign_id), CONSTRAINT ukhc27r5pqsiqffakqyur2u6o1o UNIQUE (schedule_campaign_user_id));

-- Permissions

ALTER TABLE client.schedule_campaign_settings OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.schedule_campaign_settings TO kcell_test_user;


-- client.schedule_campaign_user definition

-- Drop table

-- DROP TABLE client.schedule_campaign_user;

CREATE TABLE client.schedule_campaign_user ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, fio text NULL, skill_group_id int8 NULL, "source" varchar(255) NULL, user_id int8 NULL, username text NULL, schedule_campaign_settings_id int8 NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, CONSTRAINT schedule_campaign_user_pkey PRIMARY KEY (id), CONSTRAINT ukt1ocxd70khktcm398b0csuc9a UNIQUE (schedule_campaign_settings_id));

-- Permissions

ALTER TABLE client.schedule_campaign_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.schedule_campaign_user TO kcell_test_user;


-- client.tickets definition

-- Drop table

-- DROP TABLE client.tickets;

CREATE TABLE client.tickets ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, external_ticket_id varchar(255) NULL, status varchar(255) NULL, subject varchar(255) NULL, description text NULL, assigned_to int8 NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, CONSTRAINT tickets_pkey PRIMARY KEY (id));

-- Column comments

COMMENT ON COLUMN client.tickets.client_id IS 'Клиент';
COMMENT ON COLUMN client.tickets.external_ticket_id IS 'ID тикета SAO';
COMMENT ON COLUMN client.tickets.status IS 'Статус';
COMMENT ON COLUMN client.tickets.subject IS 'Тема';
COMMENT ON COLUMN client.tickets.description IS 'Описание';
COMMENT ON COLUMN client.tickets.assigned_to IS 'Назначено на';

-- Permissions

ALTER TABLE client.tickets OWNER TO kcell_test_user;
GRANT ALL ON TABLE client.tickets TO kcell_test_user;


-- client.activities foreign keys

ALTER TABLE client.activities ADD CONSTRAINT activities_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE;
ALTER TABLE client.activities ADD CONSTRAINT fk_activities_created_by_users FOREIGN KEY (created_by) REFERENCES users.users(id) DEFERRABLE;


-- client.client_requirement_attachments foreign keys

ALTER TABLE client.client_requirement_attachments ADD CONSTRAINT client_requirement_attachments_requirement_id_fkey FOREIGN KEY (requirement_id) REFERENCES client.client_requirements(id) DEFERRABLE;


-- client.client_requirements foreign keys

ALTER TABLE client.client_requirements ADD CONSTRAINT client_requirements_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE;
ALTER TABLE client.client_requirements ADD CONSTRAINT fk_client_requirements_created_by_users FOREIGN KEY (created_by) REFERENCES users.users(id) DEFERRABLE;


-- client.clients_b2b foreign keys

ALTER TABLE client.clients_b2b ADD CONSTRAINT clients_b2b_category_id_fkey FOREIGN KEY (category_id) REFERENCES client.ref_client_categories(id) DEFERRABLE;
ALTER TABLE client.clients_b2b ADD CONSTRAINT clients_b2b_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE;
ALTER TABLE client.clients_b2b ADD CONSTRAINT clients_b2b_department_id_fkey FOREIGN KEY (department_id) REFERENCES client.ref_departments(id) DEFERRABLE;
ALTER TABLE client.clients_b2b ADD CONSTRAINT clients_b2b_industry_id_fkey FOREIGN KEY (industry_id) REFERENCES client.ref_industries(id) DEFERRABLE;
ALTER TABLE client.clients_b2b ADD CONSTRAINT clients_b2b_legal_form_id_fkey FOREIGN KEY (legal_form_id) REFERENCES client.ref_legal_forms(id) DEFERRABLE;
ALTER TABLE client.clients_b2b ADD CONSTRAINT clients_b2b_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES client.ref_segments(id) DEFERRABLE;
ALTER TABLE client.clients_b2b ADD CONSTRAINT fk_clients_b2b_acquisition_employee_id_users FOREIGN KEY (acquisition_employee_id) REFERENCES users.users(id) DEFERRABLE;
ALTER TABLE client.clients_b2b ADD CONSTRAINT fk_clients_b2b_acquisition_head_id_users FOREIGN KEY (acquisition_head_id) REFERENCES users.users(id) DEFERRABLE;
ALTER TABLE client.clients_b2b ADD CONSTRAINT fk_clients_b2b_retention_employee_id_users FOREIGN KEY (retention_employee_id) REFERENCES users.users(id) DEFERRABLE;
ALTER TABLE client.clients_b2b ADD CONSTRAINT fk_clients_b2b_retention_head_id_users FOREIGN KEY (retention_head_id) REFERENCES users.users(id) DEFERRABLE;


-- client.communicate_result foreign keys

ALTER TABLE client.communicate_result ADD CONSTRAINT fk49od6nqncyqfm66latj81v2kg FOREIGN KEY (client_contact_id) REFERENCES client.contacts(id);
ALTER TABLE client.communicate_result ADD CONSTRAINT fknh274i25bd91dsjvx2ctnulwx FOREIGN KEY (contract_id) REFERENCES client.contracts(id);
ALTER TABLE client.communicate_result ADD CONSTRAINT fktrm4h4fub4o6dbc53y17hxrtq FOREIGN KEY (client_id) REFERENCES client.clients(id);


-- client.contract_documents foreign keys

ALTER TABLE client.contract_documents ADD CONSTRAINT contract_documents_contract_id_fkey FOREIGN KEY (contract_id) REFERENCES client.contracts(id) DEFERRABLE;
ALTER TABLE client.contract_documents ADD CONSTRAINT contract_documents_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES client.ref_document_types(id) DEFERRABLE;
ALTER TABLE client.contract_documents ADD CONSTRAINT fk_contract_documents_uploaded_by_users FOREIGN KEY (uploaded_by) REFERENCES users.users(id) DEFERRABLE;


-- client.contract_history foreign keys

ALTER TABLE client.contract_history ADD CONSTRAINT fkceijaao8w6rl6133b8cmdqyso FOREIGN KEY (mark_id) REFERENCES client.marks(id);
ALTER TABLE client.contract_history ADD CONSTRAINT fkfgjftleol9vcsf04vay7chom6 FOREIGN KEY (client_id) REFERENCES client.clients(id);
ALTER TABLE client.contract_history ADD CONSTRAINT fkrf22gfq8wpe4qvpxyqnuv6mct FOREIGN KEY (contract_id) REFERENCES client.contracts(id);


-- client.contract_products foreign keys

ALTER TABLE client.contract_products ADD CONSTRAINT contract_products_contract_id_fkey FOREIGN KEY (contract_id) REFERENCES client.contracts(id) DEFERRABLE;
ALTER TABLE client.contract_products ADD CONSTRAINT contract_products_product_id_fkey FOREIGN KEY (product_id) REFERENCES client.products_services(id) DEFERRABLE;


-- client.contracts foreign keys

ALTER TABLE client.contracts ADD CONSTRAINT contracts_billing_account_id_fkey FOREIGN KEY (billing_account_id) REFERENCES client.billing_accounts(id) DEFERRABLE;
ALTER TABLE client.contracts ADD CONSTRAINT contracts_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE;
ALTER TABLE client.contracts ADD CONSTRAINT contracts_contract_type_id_fkey FOREIGN KEY (contract_type_id) REFERENCES client.ref_contract_types(id) DEFERRABLE;
ALTER TABLE client.contracts ADD CONSTRAINT contracts_currency_id_fkey FOREIGN KEY (currency_id) REFERENCES client.ref_currencies(id) DEFERRABLE;
ALTER TABLE client.contracts ADD CONSTRAINT contracts_parent_contract_id_fkey FOREIGN KEY (parent_contract_id) REFERENCES client.contracts(id) DEFERRABLE;
ALTER TABLE client.contracts ADD CONSTRAINT contracts_payment_form_id_fkey FOREIGN KEY (payment_form_id) REFERENCES client.ref_payment_forms(id) DEFERRABLE;
ALTER TABLE client.contracts ADD CONSTRAINT contracts_responsible_contact_id_fkey FOREIGN KEY (responsible_contact_id) REFERENCES client.contacts(id) DEFERRABLE;
ALTER TABLE client.contracts ADD CONSTRAINT contracts_status_id_fkey FOREIGN KEY (status_id) REFERENCES client.ref_contract_statuses(id) DEFERRABLE;
ALTER TABLE client.contracts ADD CONSTRAINT fk_contracts_responsible_kcell_id_users FOREIGN KEY (responsible_kcell_id) REFERENCES users.users(id) DEFERRABLE;


-- client.documents foreign keys

ALTER TABLE client.documents ADD CONSTRAINT documents_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE;
ALTER TABLE client.documents ADD CONSTRAINT documents_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES client.ref_document_types(id) DEFERRABLE;
ALTER TABLE client.documents ADD CONSTRAINT fk_documents_uploaded_by_users FOREIGN KEY (uploaded_by) REFERENCES users.users(id) DEFERRABLE;


-- client.payment_history foreign keys

ALTER TABLE client.payment_history ADD CONSTRAINT fk8mx3tawfodklay4kcobx6urlv FOREIGN KEY (client_id) REFERENCES client.clients(id);
ALTER TABLE client.payment_history ADD CONSTRAINT fkhw5fp2iib4550q8ekp77npfle FOREIGN KEY (contract_id) REFERENCES client.contracts(id);


-- client.payment_schedule foreign keys

ALTER TABLE client.payment_schedule ADD CONSTRAINT fkj72muwe941g4jaki9gof8yol7 FOREIGN KEY (contract_id) REFERENCES client.contracts(id);


-- client.poa_change_history foreign keys

ALTER TABLE client.poa_change_history ADD CONSTRAINT fk_poa_change_history_changed_by_users FOREIGN KEY (changed_by) REFERENCES users.users(id) DEFERRABLE;
ALTER TABLE client.poa_change_history ADD CONSTRAINT poa_change_history_poa_id_fkey FOREIGN KEY (poa_id) REFERENCES client.powers_of_attorney(id) DEFERRABLE;


-- client.processing_results foreign keys

ALTER TABLE client.processing_results ADD CONSTRAINT fkl39pqicnk0jx9p9atbfx191ua FOREIGN KEY (contract_id) REFERENCES client.contracts(id);
ALTER TABLE client.processing_results ADD CONSTRAINT fkr7wnn0un12pri988y0wa9ack8 FOREIGN KEY (client_id) REFERENCES client.clients(id);


-- client.related_contracts foreign keys

ALTER TABLE client.related_contracts ADD CONSTRAINT related_contracts_contract_id_fkey FOREIGN KEY (contract_id) REFERENCES client.contracts(id) DEFERRABLE;
ALTER TABLE client.related_contracts ADD CONSTRAINT related_contracts_related_contract_id_fkey FOREIGN KEY (related_contract_id) REFERENCES client.contracts(id) DEFERRABLE;


-- client.schedule_campaign_robot foreign keys

ALTER TABLE client.schedule_campaign_robot ADD CONSTRAINT fk1pnfb0nashiott8emnpgr3xvn FOREIGN KEY (schedule_campaign_settings_id) REFERENCES client.schedule_campaign_settings(id);


-- client.schedule_campaign_settings foreign keys

ALTER TABLE client.schedule_campaign_settings ADD CONSTRAINT fkbi1jgyjbuqf9ffnhov7kqtl4l FOREIGN KEY (campaign_id) REFERENCES client.campaign(id);
ALTER TABLE client.schedule_campaign_settings ADD CONSTRAINT fkoodfrf1qpsoinxv2rjvrxqjy8 FOREIGN KEY (schedule_campaign_id) REFERENCES client.schedule_campaign(id);
ALTER TABLE client.schedule_campaign_settings ADD CONSTRAINT fkpqsrg69dmunf23tdr605l5csc FOREIGN KEY (schedule_campaign_user_id) REFERENCES client.schedule_campaign_user(id);


-- client.schedule_campaign_user foreign keys

ALTER TABLE client.schedule_campaign_user ADD CONSTRAINT fksqwnh1xya0kfofn29ol3hngl6 FOREIGN KEY (schedule_campaign_settings_id) REFERENCES client.schedule_campaign_settings(id);


-- client.tickets foreign keys

ALTER TABLE client.tickets ADD CONSTRAINT fk_tickets_assigned_to_users FOREIGN KEY (assigned_to) REFERENCES users.users(id) DEFERRABLE;
ALTER TABLE client.tickets ADD CONSTRAINT tickets_client_id_fkey FOREIGN KEY (client_id) REFERENCES client.clients(id) DEFERRABLE;




-- Permissions

GRANT ALL ON SCHEMA client TO kcell_test_user;