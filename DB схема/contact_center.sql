-- DROP SCHEMA contact_center;

CREATE SCHEMA contact_center AUTHORIZATION kcell_test_user;

-- DROP SEQUENCE contact_center.addresses_id_seq;

CREATE SEQUENCE contact_center.addresses_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.addresses_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.addresses_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.authorized_persons_id_seq;

CREATE SEQUENCE contact_center.authorized_persons_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.authorized_persons_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.authorized_persons_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.banking_products_id_seq;

CREATE SEQUENCE contact_center.banking_products_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.banking_products_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.banking_products_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.beneficiaries_id_seq;

CREATE SEQUENCE contact_center.beneficiaries_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.beneficiaries_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.beneficiaries_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.call_result_id_seq;

CREATE SEQUENCE contact_center.call_result_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.call_result_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.call_result_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.campaign_id_seq;

CREATE SEQUENCE contact_center.campaign_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.campaign_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.campaign_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.campaign_task_id_seq;

CREATE SEQUENCE contact_center.campaign_task_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.campaign_task_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.campaign_task_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.collateral_objects_id_seq;

CREATE SEQUENCE contact_center.collateral_objects_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.collateral_objects_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.collateral_objects_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.collection_tasks_id_seq;

CREATE SEQUENCE contact_center.collection_tasks_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.collection_tasks_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.collection_tasks_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.collections_id_seq;

CREATE SEQUENCE contact_center.collections_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.collections_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.collections_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.communicate_result_id_seq;

CREATE SEQUENCE contact_center.communicate_result_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.communicate_result_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.communicate_result_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.communication_contact_center_id_seq;

CREATE SEQUENCE contact_center.communication_contact_center_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.communication_contact_center_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.communication_contact_center_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.communications_id_seq;

CREATE SEQUENCE contact_center.communications_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.communications_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.communications_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.contacts_id_seq;

CREATE SEQUENCE contact_center.contacts_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.contacts_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.contacts_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.contract_history_id_seq;

CREATE SEQUENCE contact_center.contract_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.contract_history_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.contract_history_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.contracts_id_seq;

CREATE SEQUENCE contact_center.contracts_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.contracts_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.contracts_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.credit_history_individual_id_seq;

CREATE SEQUENCE contact_center.credit_history_individual_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.credit_history_individual_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.credit_history_individual_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.financial_indicators_id_seq;

CREATE SEQUENCE contact_center.financial_indicators_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.financial_indicators_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.financial_indicators_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.governing_bodies_id_seq;

CREATE SEQUENCE contact_center.governing_bodies_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.governing_bodies_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.governing_bodies_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.guarantors_id_seq;

CREATE SEQUENCE contact_center.guarantors_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.guarantors_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.guarantors_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.identity_documents_id_seq;

CREATE SEQUENCE contact_center.identity_documents_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.identity_documents_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.identity_documents_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.individual_clients_id_seq;

CREATE SEQUENCE contact_center.individual_clients_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.individual_clients_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.individual_clients_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.lead_appeals_id_seq;

CREATE SEQUENCE contact_center.lead_appeals_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.lead_appeals_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.lead_appeals_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.legal_entity_clients_id_seq;

CREATE SEQUENCE contact_center.legal_entity_clients_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.legal_entity_clients_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.legal_entity_clients_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.management_id_seq;

CREATE SEQUENCE contact_center.management_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.management_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.management_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.marks_id_seq;

CREATE SEQUENCE contact_center.marks_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.marks_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.marks_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.misc_individual_data_id_seq;

CREATE SEQUENCE contact_center.misc_individual_data_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.misc_individual_data_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.misc_individual_data_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.payment_schedule_id_seq;

CREATE SEQUENCE contact_center.payment_schedule_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.payment_schedule_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.payment_schedule_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.priority_collection_id_seq;

CREATE SEQUENCE contact_center.priority_collection_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.priority_collection_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.priority_collection_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.processing_results_id_seq;

CREATE SEQUENCE contact_center.processing_results_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.processing_results_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.processing_results_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.related_companies_id_seq;

CREATE SEQUENCE contact_center.related_companies_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.related_companies_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.related_companies_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.result_managers_id_seq;

CREATE SEQUENCE contact_center.result_managers_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.result_managers_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.result_managers_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.risks_legal_id_seq;

CREATE SEQUENCE contact_center.risks_legal_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.risks_legal_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.risks_legal_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.socioeconomic_status_id_seq;

CREATE SEQUENCE contact_center.socioeconomic_status_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.socioeconomic_status_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.socioeconomic_status_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.task_match_client_id_seq;

CREATE SEQUENCE contact_center.task_match_client_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.task_match_client_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.task_match_client_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.task_match_id_seq;

CREATE SEQUENCE contact_center.task_match_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.task_match_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.task_match_id_seq TO kcell_test_user;

-- DROP SEQUENCE contact_center.upload_history_id_seq;

CREATE SEQUENCE contact_center.upload_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE contact_center.upload_history_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE contact_center.upload_history_id_seq TO kcell_test_user;
-- contact_center.campaign definition

-- Drop table

-- DROP TABLE contact_center.campaign;

CREATE TABLE contact_center.campaign ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, collection varchar(255) NULL, dep_id varchar(255) NULL, "name" varchar(255) NULL, segments jsonb NULL, username jsonb NULL, CONSTRAINT campaign_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE contact_center.campaign OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.campaign TO kcell_test_user;


-- contact_center.channel definition

-- Drop table

-- DROP TABLE contact_center.channel;

CREATE TABLE contact_center.channel ( id int8 NOT NULL, manager bool NULL, robot bool NULL, sms bool NULL, whatsapp bool NULL, CONSTRAINT channel_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE contact_center.channel OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.channel TO kcell_test_user;


-- contact_center.communication_contact_center definition

-- Drop table

-- DROP TABLE contact_center.communication_contact_center;

CREATE TABLE contact_center.communication_contact_center ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, callback_date date NULL, callback_purpose varchar(255) NULL, callback_time time(6) NULL, channel varchar(255) NULL, client_id int8 NULL, "comment" text NULL, "date" timestamptz(6) NOT NULL, "result" varchar(255) NULL, theme varchar(255) NULL, user_fio varchar(255) NULL, user_id int8 NULL, CONSTRAINT communication_contact_center_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE contact_center.communication_contact_center OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.communication_contact_center TO kcell_test_user;


-- contact_center.lead_appeals definition

-- Drop table

-- DROP TABLE contact_center.lead_appeals;

CREATE TABLE contact_center.lead_appeals ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, campaign varchar(255) NULL, category varchar(50) NULL, channel varchar(255) NULL, client_id int8 NULL, client_type varchar(100) NULL, contact_id int8 NOT NULL, created_date timestamptz(6) NOT NULL, deleted bool NULL, fio varchar(255) NULL, manager_id int8 NULL, product varchar(255) NULL, status varchar(50) NOT NULL, theme varchar(255) NULL, "type" varchar(50) NULL, unit_id int8 NULL, updated_date timestamptz(6) NULL, CONSTRAINT lead_appeals_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE contact_center.lead_appeals OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.lead_appeals TO kcell_test_user;


-- contact_center.managers_user definition

-- Drop table

-- DROP TABLE contact_center.managers_user;

CREATE TABLE contact_center.managers_user ( id uuid NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, email varchar(100) NULL, full_name varchar(255) NULL, organizational_unit_id int8 NULL, phone varchar(20) NULL, "position" varchar(100) NULL, "role" varchar(50) NULL, status varchar(30) NULL, CONSTRAINT managers_user_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE contact_center.managers_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.managers_user TO kcell_test_user;


-- contact_center.priority_collection definition

-- Drop table

-- DROP TABLE contact_center.priority_collection;

CREATE TABLE contact_center.priority_collection ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, color varchar(255) NULL, max_days_without_work int4 NULL, min_days_without_work int4 NULL, priority int4 NULL, status varchar(255) NULL, "type" varchar(255) NULL, CONSTRAINT priority_collection_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE contact_center.priority_collection OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.priority_collection TO kcell_test_user;


-- contact_center.schedule_campaign definition

-- Drop table

-- DROP TABLE contact_center.schedule_campaign;

CREATE TABLE contact_center.schedule_campaign ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, channel varchar(255) NULL, collection varchar(255) NULL, dep_id varchar(255) NULL, end_time timestamptz(6) NULL, is_active bool NULL, last_activate_date timestamptz(6) NULL, "name" varchar(255) NULL, start_time timestamptz(6) NULL, CONSTRAINT schedule_campaign_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE contact_center.schedule_campaign OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.schedule_campaign TO kcell_test_user;


-- contact_center.skill_group definition

-- Drop table

-- DROP TABLE contact_center.skill_group;

CREATE TABLE contact_center.skill_group ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, collection varchar(255) NULL, dep_id varchar(255) NULL, "name" varchar(255) NULL, CONSTRAINT skill_group_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE contact_center.skill_group OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.skill_group TO kcell_test_user;


-- contact_center.task_match definition

-- Drop table

-- DROP TABLE contact_center.task_match;

CREATE TABLE contact_center.task_match ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, company_client_count int4 NULL, "date" timestamptz(6) NULL, is_matched bool NULL, "name" varchar(255) NULL, task_client_count int4 NULL, user_name varchar(255) NULL, CONSTRAINT task_match_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE contact_center.task_match OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.task_match TO kcell_test_user;


-- contact_center.upload_history definition

-- Drop table

-- DROP TABLE contact_center.upload_history;

CREATE TABLE contact_center.upload_history ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, file_name varchar(255) NULL, CONSTRAINT upload_history_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE contact_center.upload_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.upload_history TO kcell_test_user;


-- contact_center.campaign_sort_fields definition

-- Drop table

-- DROP TABLE contact_center.campaign_sort_fields;

CREATE TABLE contact_center.campaign_sort_fields ( campaign_id int8 NOT NULL, field varchar(255) NULL, value varchar(255) NULL, CONSTRAINT campaign_sort_fields_value_check CHECK (((value)::text = ANY ((ARRAY['ASC'::character varying, 'DESC'::character varying, 'ASC_ALPHA'::character varying, 'DESC_ALPHA'::character varying])::text[]))), CONSTRAINT fks829uesiupi0lqb6ge6pgq06r FOREIGN KEY (campaign_id) REFERENCES contact_center.campaign(id));

-- Permissions

ALTER TABLE contact_center.campaign_sort_fields OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.campaign_sort_fields TO kcell_test_user;


-- contact_center.marks definition

-- Drop table

-- DROP TABLE contact_center.marks;

CREATE TABLE contact_center.marks ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, code varchar(255) NULL, "name" varchar(255) NULL, "type" varchar(255) NULL, parent_id int8 NULL, CONSTRAINT marks_pkey PRIMARY KEY (id), CONSTRAINT fkqfp5dcdhorj9kd3rbw1h4kf4l FOREIGN KEY (parent_id) REFERENCES contact_center.marks(id));

-- Permissions

ALTER TABLE contact_center.marks OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.marks TO kcell_test_user;


-- contact_center.schedule_campaign_days_of_week definition

-- Drop table

-- DROP TABLE contact_center.schedule_campaign_days_of_week;

CREATE TABLE contact_center.schedule_campaign_days_of_week ( schedule_campaign_id int8 NOT NULL, days_of_week varchar(255) NULL, CONSTRAINT fkkjq7ss48eeyf9kgv02isu6w3o FOREIGN KEY (schedule_campaign_id) REFERENCES contact_center.schedule_campaign(id));

-- Permissions

ALTER TABLE contact_center.schedule_campaign_days_of_week OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.schedule_campaign_days_of_week TO kcell_test_user;


-- contact_center.schedule_campaign_settings definition

-- Drop table

-- DROP TABLE contact_center.schedule_campaign_settings;

CREATE TABLE contact_center.schedule_campaign_settings ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, robot_id int8 NULL, skill_group_id int8 NULL, user_id int8 NULL, campaign_id int8 NULL, schedule_campaign_id int8 NULL, CONSTRAINT schedule_campaign_settings_pkey PRIMARY KEY (id), CONSTRAINT fkbi1jgyjbuqf9ffnhov7kqtl4l FOREIGN KEY (campaign_id) REFERENCES contact_center.campaign(id), CONSTRAINT fkoodfrf1qpsoinxv2rjvrxqjy8 FOREIGN KEY (schedule_campaign_id) REFERENCES contact_center.schedule_campaign(id));

-- Permissions

ALTER TABLE contact_center.schedule_campaign_settings OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.schedule_campaign_settings TO kcell_test_user;


-- contact_center.schedule_campaign_user definition

-- Drop table

-- DROP TABLE contact_center.schedule_campaign_user;

CREATE TABLE contact_center.schedule_campaign_user ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, fio text NULL, skill_group_id int8 NULL, "source" varchar(255) NULL, user_id int8 NULL, username text NULL, schedule_campaign_settings_id int8 NULL, CONSTRAINT schedule_campaign_user_pkey PRIMARY KEY (id), CONSTRAINT fksqwnh1xya0kfofn29ol3hngl6 FOREIGN KEY (schedule_campaign_settings_id) REFERENCES contact_center.schedule_campaign_settings(id));

-- Permissions

ALTER TABLE contact_center.schedule_campaign_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.schedule_campaign_user TO kcell_test_user;


-- contact_center.segment definition

-- Drop table

-- DROP TABLE contact_center.segment;

CREATE TABLE contact_center.segment ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, collection varchar(255) NULL, conditions jsonb NULL, dep_id varchar(255) NULL, description varchar(255) NULL, edit_date timestamptz(6) NULL, "name" varchar(255) NULL, campaign_id int8 NULL, CONSTRAINT segment_pkey PRIMARY KEY (id), CONSTRAINT fkifr26lf5gqgt69hij2xx1vt97 FOREIGN KEY (campaign_id) REFERENCES contact_center.campaign(id));

-- Permissions

ALTER TABLE contact_center.segment OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.segment TO kcell_test_user;


-- contact_center.skill_group_users definition

-- Drop table

-- DROP TABLE contact_center.skill_group_users;

CREATE TABLE contact_center.skill_group_users ( skill_group_id int8 NOT NULL, fio varchar(255) NULL, user_id int8 NULL, username varchar(255) NULL, CONSTRAINT fk1r9jg79hd089jt9r0ief3n6dg FOREIGN KEY (skill_group_id) REFERENCES contact_center.skill_group(id));

-- Permissions

ALTER TABLE contact_center.skill_group_users OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.skill_group_users TO kcell_test_user;


-- contact_center.task_match_client definition

-- Drop table

-- DROP TABLE contact_center.task_match_client;

CREATE TABLE contact_center.task_match_client ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, task_match_id int8 NULL, CONSTRAINT task_match_client_pkey PRIMARY KEY (id), CONSTRAINT fkih194g8b67jo2fjauor3nny4n FOREIGN KEY (task_match_id) REFERENCES contact_center.task_match(id));

-- Permissions

ALTER TABLE contact_center.task_match_client OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.task_match_client TO kcell_test_user;


-- contact_center.clients definition

-- Drop table

-- DROP TABLE contact_center.clients;

CREATE TABLE contact_center.clients ( client_id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, bin_iin varchar(255) NULL, client_code varchar(50) NULL, client_role varchar(50) NULL, client_type varchar(10) NULL, organizational_unit_id int8 NULL, sector_id int8 NULL, sector_name varchar(255) NULL, state varchar(50) NULL, status varchar(50) NULL, vip_client bool NULL, mark_id int8 NULL, CONSTRAINT clients_pkey PRIMARY KEY (client_id), CONSTRAINT fk4jkmnevqt0qunhhwbj1eeo7em FOREIGN KEY (mark_id) REFERENCES contact_center.marks(id));
CREATE INDEX idx_clients_type ON contact_center.clients USING btree (client_type);

-- Permissions

ALTER TABLE contact_center.clients OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.clients TO kcell_test_user;


-- contact_center.contacts definition

-- Drop table

-- DROP TABLE contact_center.contacts;

CREATE TABLE contact_center.contacts ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, accessibility varchar(255) NULL, contact_person_name varchar(255) NULL, contact_status varchar(50) NULL, contact_subtype varchar(50) NULL, contact_type varchar(50) NULL, contact_value varchar(255) NULL, convenient_time varchar(100) NULL, description varchar(255) NULL, is_actual bool NULL, is_primary bool NULL, marketing_consent bool NULL, organizational_unit_id int8 NULL, preferred_channel bool NULL, priority int4 NULL, processing_consent bool NULL, relationship varchar(100) NULL, verification_date timestamptz(6) NULL, verification_status varchar(50) NULL, client_id int8 NULL, CONSTRAINT contacts_pkey PRIMARY KEY (id), CONSTRAINT fk94mnsowcdm8tow68ha3xudt48 FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));
CREATE INDEX idx_contacts_client ON contact_center.contacts USING btree (client_id);

-- Permissions

ALTER TABLE contact_center.contacts OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.contacts TO kcell_test_user;


-- contact_center.contracts definition

-- Drop table

-- DROP TABLE contact_center.contracts;

CREATE TABLE contact_center.contracts ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, bin_iin varchar(12) NULL, borrower_name varchar(255) NULL, business_type varchar(100) NULL, cli_acc_code varchar(255) NULL, client_account_code varchar(255) NULL, collection_status varchar(50) NULL, contract_end_date timestamptz(6) NULL, contract_number varchar(100) NULL, contract_state varchar(255) NULL, contract_status varchar(50) NULL, credit_amount numeric(15, 2) NULL, credit_product_name varchar(255) NULL, credit_purpose varchar(255) NULL, credit_term_months int4 NULL, currency varchar(3) NULL, damu_guarantees bool NULL, delay_days int4 NULL, fine_amount numeric(15, 2) NULL, general_agreement varchar(100) NULL, ifrs_portfolio_type varchar(100) NULL, ifrs_provision_interest numeric(15, 2) NULL, ifrs_provision_interest_balance numeric(15, 2) NULL, ifrs_provision_percentage numeric(5, 2) NULL, ifrs_provision_principal numeric(15, 2) NULL, ifrs_provision_principal_balance numeric(15, 2) NULL, interest_debt numeric(15, 2) NULL, interest_rate numeric(6, 2) NULL, issue_date timestamptz(6) NULL, manager_p varchar(255) NULL, organizational_unit_id int8 NULL, overdue_days_interest int4 NULL, overdue_days_principal int4 NULL, overdue_interest_debt numeric(15, 2) NULL, overdue_principal_debt numeric(15, 2) NULL, penalty_amount numeric(15, 2) NULL, principal_debt numeric(15, 2) NULL, product_code varchar(255) NULL, project_manager varchar(255) NULL, receivables_debt numeric(15, 2) NULL, repayment_date int4 NULL, restructuring_date timestamptz(6) NULL, statname varchar(255) NULL, client_id int8 NULL, mark_id int8 NULL, CONSTRAINT contracts_pkey PRIMARY KEY (id), CONSTRAINT ukbx9jyu2cccdntb3ehrf0ojpfd UNIQUE (contract_number), CONSTRAINT fk3nki6ah8dnwmm7wn1megnbh8 FOREIGN KEY (mark_id) REFERENCES contact_center.marks(id), CONSTRAINT fkrqssit79jdlx2ch8ubajt6w4y FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));
CREATE INDEX idx_contracts_client ON contact_center.contracts USING btree (client_id);
CREATE INDEX idx_contracts_number ON contact_center.contracts USING btree (contract_number);

-- Permissions

ALTER TABLE contact_center.contracts OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.contracts TO kcell_test_user;


-- contact_center.governing_bodies definition

-- Drop table

-- DROP TABLE contact_center.governing_bodies;

CREATE TABLE contact_center.governing_bodies ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, client_name varchar(255) NULL, end_date timestamptz(6) NULL, governing_body_type varchar(100) NULL, is_actual bool NULL, role_position varchar(100) NULL, start_date timestamptz(6) NULL, client_id int8 NULL, CONSTRAINT governing_bodies_pkey PRIMARY KEY (id), CONSTRAINT fk5rpstlu6t3l5r0t9kynlb5upm FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));

-- Permissions

ALTER TABLE contact_center.governing_bodies OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.governing_bodies TO kcell_test_user;


-- contact_center.identity_documents definition

-- Drop table

-- DROP TABLE contact_center.identity_documents;

CREATE TABLE contact_center.identity_documents ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, document_code varchar(50) NULL, document_number varchar(50) NULL, document_scan_url varchar(255) NULL, document_series varchar(50) NULL, document_type varchar(255) NULL, expiry_date timestamptz(6) NULL, is_archived bool NULL, is_primary bool NULL, issue_date timestamptz(6) NULL, issued_by varchar(255) NULL, organizational_unit_id int8 NULL, client_id int8 NULL, CONSTRAINT identity_documents_pkey PRIMARY KEY (id), CONSTRAINT fkn7vhdd1jnhs5u3d09wcwvi6vg FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));

-- Permissions

ALTER TABLE contact_center.identity_documents OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.identity_documents TO kcell_test_user;


-- contact_center.individual_clients definition

-- Drop table

-- DROP TABLE contact_center.individual_clients;

CREATE TABLE contact_center.individual_clients ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, bankrot_fl bool NULL, birth_date timestamptz(6) NULL, birth_place varchar(255) NULL, children_count int4 NULL, citizenship varchar(50) NULL, first_name varchar(100) NULL, gender varchar(10) NULL, iin varchar(12) NULL, iin_status varchar(50) NULL, last_name varchar(100) NULL, marital_status varchar(50) NULL, middle_name varchar(100) NULL, photo_url varchar(50) NULL, resident bool NULL, client_id int8 NULL, CONSTRAINT individual_clients_pkey PRIMARY KEY (id), CONSTRAINT uklcrpn68xverashg7fui1qjb0a UNIQUE (client_id), CONSTRAINT fk1p3kccmlpb6e31m12gm492fq8 FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));
CREATE INDEX idx_individual_iin ON contact_center.individual_clients USING btree (iin);

-- Permissions

ALTER TABLE contact_center.individual_clients OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.individual_clients TO kcell_test_user;


-- contact_center.legal_entity_clients definition

-- Drop table

-- DROP TABLE contact_center.legal_entity_clients;

CREATE TABLE contact_center.legal_entity_clients ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, authorized_capital numeric(15, 2) NULL, bankrot_ul bool NULL, bin varchar(12) NULL, bin_status varchar(50) NULL, country_code varchar(3) NULL, egrul_link varchar(255) NULL, employee_count int4 NULL, full_name varchar(255) NULL, industry varchar(100) NULL, is_individual_entrepreneur bool NULL, legal_entity_status varchar(50) NULL, legal_entity_type varchar(50) NULL, oked varchar(20) NULL, registration_date timestamptz(6) NULL, registration_number varchar(50) NULL, registration_region varchar(100) NULL, resident bool NULL, short_name varchar(100) NULL, client_id int8 NULL, related_individual_client_id int8 NULL, CONSTRAINT legal_entity_clients_pkey PRIMARY KEY (id), CONSTRAINT ukh1jn40mded01o18q6at0inlhe UNIQUE (related_individual_client_id), CONSTRAINT ukihsfji9o0n15nu2d7m7fw6n0x UNIQUE (client_id), CONSTRAINT fkj0c6yhlk4oe6stums6k17bd9i FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id), CONSTRAINT fkn92sf5gqou1h5wfkjbvbj86sa FOREIGN KEY (related_individual_client_id) REFERENCES contact_center.individual_clients(id));
CREATE INDEX idx_legal_bin ON contact_center.legal_entity_clients USING btree (bin);

-- Permissions

ALTER TABLE contact_center.legal_entity_clients OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.legal_entity_clients TO kcell_test_user;


-- contact_center.management definition

-- Drop table

-- DROP TABLE contact_center.management;

CREATE TABLE contact_center.management ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, document_number varchar(50) NULL, document_scan_url varchar(255) NULL, document_type varchar(50) NULL, email varchar(100) NULL, full_name varchar(255) NULL, iin varchar(12) NULL, phone varchar(20) NULL, "position" varchar(100) NULL, legal_entity_client_id int8 NULL, CONSTRAINT management_pkey PRIMARY KEY (id), CONSTRAINT fk5bnayya4lu6f9ipukauj7ynfl FOREIGN KEY (legal_entity_client_id) REFERENCES contact_center.legal_entity_clients(id));

-- Permissions

ALTER TABLE contact_center.management OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.management TO kcell_test_user;


-- contact_center.misc_individual_data definition

-- Drop table

-- DROP TABLE contact_center.misc_individual_data;

CREATE TABLE contact_center.misc_individual_data ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, data_type varchar(50) NULL, data_value text NULL, notes text NULL, individual_client_id int8 NULL, CONSTRAINT misc_individual_data_pkey PRIMARY KEY (id), CONSTRAINT fkjwjpvunvvx5jrq3om5p4adpic FOREIGN KEY (individual_client_id) REFERENCES contact_center.individual_clients(id));

-- Permissions

ALTER TABLE contact_center.misc_individual_data OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.misc_individual_data TO kcell_test_user;


-- contact_center.payment_history definition

-- Drop table

-- DROP TABLE contact_center.payment_history;

CREATE TABLE contact_center.payment_history ( tra_id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, amount numeric(15, 2) NULL, channel varchar(255) NULL, contract_number varchar(255) NULL, currency varchar(255) NULL, operation_code varchar(255) NULL, operation_name varchar(255) NULL, organizational_unit_id int8 NULL, payment_date date NULL, client_id int8 NULL, contract_id int8 NULL, CONSTRAINT payment_history_pkey PRIMARY KEY (tra_id), CONSTRAINT fk8mx3tawfodklay4kcobx6urlv FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id), CONSTRAINT fkhw5fp2iib4550q8ekp77npfle FOREIGN KEY (contract_id) REFERENCES contact_center.contracts(id));

-- Permissions

ALTER TABLE contact_center.payment_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.payment_history TO kcell_test_user;


-- contact_center.payment_schedule definition

-- Drop table

-- DROP TABLE contact_center.payment_schedule;

CREATE TABLE contact_center.payment_schedule ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, commission_amount numeric(15, 2) NULL, interest_amount numeric(15, 2) NULL, payment_date timestamptz(6) NULL, principal_amount numeric(15, 2) NULL, remaining_balance numeric(15, 2) NULL, total_amount numeric(15, 2) NULL, contract_id int8 NULL, CONSTRAINT payment_schedule_pkey PRIMARY KEY (id), CONSTRAINT fkj72muwe941g4jaki9gof8yol7 FOREIGN KEY (contract_id) REFERENCES contact_center.contracts(id));

-- Permissions

ALTER TABLE contact_center.payment_schedule OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.payment_schedule TO kcell_test_user;


-- contact_center.processing_results definition

-- Drop table

-- DROP TABLE contact_center.processing_results;

CREATE TABLE contact_center.processing_results ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, next_processing_date timestamptz(6) NULL, processing_date timestamptz(6) NULL, processing_result varchar(500) NULL, promise_date timestamptz(6) NULL, responsible varchar(255) NULL, task_number varchar(255) NULL, client_id int8 NOT NULL, contract_id int8 NOT NULL, CONSTRAINT processing_results_pkey PRIMARY KEY (id), CONSTRAINT fkl39pqicnk0jx9p9atbfx191ua FOREIGN KEY (contract_id) REFERENCES contact_center.contracts(id), CONSTRAINT fkr7wnn0un12pri988y0wa9ack8 FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));

-- Permissions

ALTER TABLE contact_center.processing_results OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.processing_results TO kcell_test_user;


-- contact_center.related_companies definition

-- Drop table

-- DROP TABLE contact_center.related_companies;

CREATE TABLE contact_center.related_companies ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, bin varchar(12) NULL, contact_info text NULL, related_company_name varchar(255) NULL, relationship_type varchar(50) NULL, legal_entity_client_id int8 NULL, CONSTRAINT related_companies_pkey PRIMARY KEY (id), CONSTRAINT fk5vclxiggmxfk9cm8mi2dugwg5 FOREIGN KEY (legal_entity_client_id) REFERENCES contact_center.legal_entity_clients(id));

-- Permissions

ALTER TABLE contact_center.related_companies OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.related_companies TO kcell_test_user;


-- contact_center.result_managers definition

-- Drop table

-- DROP TABLE contact_center.result_managers;

CREATE TABLE contact_center.result_managers ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, "comment" varchar(255) NULL, create_date timestamp(6) NULL, fio varchar(255) NULL, next_processing_date timestamptz(6) NULL, promise_date timestamptz(6) NULL, "result" varchar(255) NULL, result_date timestamptz(6) NULL, user_name varchar(255) NULL, client_id int8 NULL, CONSTRAINT result_managers_pkey PRIMARY KEY (id), CONSTRAINT fkm4q0w791ev49vcujh95mq29a5 FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));

-- Permissions

ALTER TABLE contact_center.result_managers OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.result_managers TO kcell_test_user;


-- contact_center.risks_legal definition

-- Drop table

-- DROP TABLE contact_center.risks_legal;

CREATE TABLE contact_center.risks_legal ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, description text NULL, detection_date timestamptz(6) NULL, resolution_date timestamptz(6) NULL, resolution_status varchar(50) NULL, risk_level varchar(20) NULL, risk_type varchar(50) NULL, legal_entity_client_id int8 NULL, CONSTRAINT risks_legal_pkey PRIMARY KEY (id), CONSTRAINT fk69reqrbyaqvpggpg4xvq4bnpv FOREIGN KEY (legal_entity_client_id) REFERENCES contact_center.legal_entity_clients(id));

-- Permissions

ALTER TABLE contact_center.risks_legal OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.risks_legal TO kcell_test_user;


-- contact_center.schedule_campaign_robot definition

-- Drop table

-- DROP TABLE contact_center.schedule_campaign_robot;

CREATE TABLE contact_center.schedule_campaign_robot ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, description varchar(255) NULL, robot_id int8 NULL, robot_name varchar(255) NULL, schedule_campaign_settings_id int8 NULL, CONSTRAINT schedule_campaign_robot_pkey PRIMARY KEY (id), CONSTRAINT fk1pnfb0nashiott8emnpgr3xvn FOREIGN KEY (schedule_campaign_settings_id) REFERENCES contact_center.schedule_campaign_settings(id));

-- Permissions

ALTER TABLE contact_center.schedule_campaign_robot OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.schedule_campaign_robot TO kcell_test_user;


-- contact_center.socioeconomic_status definition

-- Drop table

-- DROP TABLE contact_center.socioeconomic_status;

CREATE TABLE contact_center.socioeconomic_status ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, additional_income numeric(15, 2) NULL, education_level varchar(100) NULL, employer varchar(255) NULL, employment_type varchar(100) NULL, experience_years int4 NULL, industry varchar(100) NULL, monthly_income numeric(15, 2) NULL, "position" varchar(100) NULL, individual_client_id int8 NULL, CONSTRAINT socioeconomic_status_pkey PRIMARY KEY (id), CONSTRAINT fkif226qogp1s6be4vk1f8f3wi5 FOREIGN KEY (individual_client_id) REFERENCES contact_center.individual_clients(id));

-- Permissions

ALTER TABLE contact_center.socioeconomic_status OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.socioeconomic_status TO kcell_test_user;


-- contact_center.addresses definition

-- Drop table

-- DROP TABLE contact_center.addresses;

CREATE TABLE contact_center.addresses ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, address varchar(255) NULL, address_type varchar(50) NULL, city varchar(100) NULL, country varchar(50) NULL, country_code varchar(3) NULL, is_verified bool NULL, notes text NULL, postal_code varchar(20) NULL, priority int4 NULL, region varchar(100) NULL, verification_date timestamptz(6) NULL, client_id int8 NULL, CONSTRAINT addresses_pkey PRIMARY KEY (id), CONSTRAINT fkrf3c1s9gxxx0wubkv5maokv9y FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));
CREATE INDEX idx_addresses_client ON contact_center.addresses USING btree (client_id);

-- Permissions

ALTER TABLE contact_center.addresses OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.addresses TO kcell_test_user;


-- contact_center.authorized_persons definition

-- Drop table

-- DROP TABLE contact_center.authorized_persons;

CREATE TABLE contact_center.authorized_persons ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, authority_status varchar(50) NULL, contact_description varchar(255) NULL, contact_subtype varchar(255) NULL, contact_type varchar(255) NULL, document_date date NULL, document_number varchar(255) NULL, full_name varchar(255) NULL, is_primary bool NULL, order_number varchar(255) NULL, organizational_unit_id int8 NULL, person_id int4 NULL, person_organizational_unit_id int8 NULL, person_role varchar(100) NULL, "position" varchar(100) NULL, client_id int8 NULL, CONSTRAINT authorized_persons_pkey PRIMARY KEY (id), CONSTRAINT fkgmddllh7lr1hexxf0vso855c FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));

-- Permissions

ALTER TABLE contact_center.authorized_persons OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.authorized_persons TO kcell_test_user;


-- contact_center.banking_products definition

-- Drop table

-- DROP TABLE contact_center.banking_products;

CREATE TABLE contact_center.banking_products ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, account_number varchar(50) NULL, balance numeric(15, 2) NULL, credit_limit numeric(15, 2) NULL, currency varchar(3) NULL, end_date timestamptz(6) NULL, interest_rate numeric(5, 2) NULL, product_category varchar(50) NULL, product_details text NULL, product_type varchar(50) NULL, start_date timestamptz(6) NULL, status varchar(50) NULL, client_id int8 NULL, CONSTRAINT banking_products_pkey PRIMARY KEY (id), CONSTRAINT fkbayvykhmjh7p7brqkfoe88u6b FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));
CREATE INDEX idx_banking_products_client ON contact_center.banking_products USING btree (client_id);
CREATE INDEX idx_banking_products_type ON contact_center.banking_products USING btree (product_type);

-- Permissions

ALTER TABLE contact_center.banking_products OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.banking_products TO kcell_test_user;


-- contact_center.beneficiaries definition

-- Drop table

-- DROP TABLE contact_center.beneficiaries;

CREATE TABLE contact_center.beneficiaries ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, beneficiary_type varchar(2) NULL, bin varchar(12) NULL, birth_date timestamptz(6) NULL, citizenship varchar(50) NULL, direct_ownership bool NULL, document_number varchar(50) NULL, document_type varchar(50) NULL, email varchar(100) NULL, full_name varchar(255) NULL, iin varchar(12) NULL, ownership_share numeric(5, 2) NULL, phone varchar(20) NULL, legal_entity_client_id int8 NULL, CONSTRAINT beneficiaries_pkey PRIMARY KEY (id), CONSTRAINT fkj6qwilgehcg4fuyyajyahll87 FOREIGN KEY (legal_entity_client_id) REFERENCES contact_center.legal_entity_clients(id));

-- Permissions

ALTER TABLE contact_center.beneficiaries OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.beneficiaries TO kcell_test_user;


-- contact_center.call_result definition

-- Drop table

-- DROP TABLE contact_center.call_result;

CREATE TABLE contact_center.call_result ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "comment" varchar(255) NULL, contact_id int8 NULL, contact_type varchar(255) NULL, contract varchar(255) NULL, create_date timestamptz(6) NULL, duration int8 NULL, ended_at timestamptz(6) NULL, "language" varchar(255) NULL, outcome varchar(255) NULL, phone_number varchar(255) NULL, promise_date timestamptz(6) NULL, reason_delay varchar(255) NULL, responsible varchar(255) NULL, "result" varchar(255) NULL, started_at timestamptz(6) NULL, campaign_id int8 NULL, executed_campaign_id int8 NULL, client_id int8 NOT NULL, CONSTRAINT call_result_pkey PRIMARY KEY (id), CONSTRAINT fk80vbt3ij0bvj74i2ahvlpjjux FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));

-- Permissions

ALTER TABLE contact_center.call_result OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.call_result TO kcell_test_user;


-- contact_center.campaign_task definition

-- Drop table

-- DROP TABLE contact_center.campaign_task;

CREATE TABLE contact_center.campaign_task ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, collection varchar(255) NULL, contract_number varchar(255) NULL, dep_id varchar(255) NULL, is_active bool NULL, is_reactivate bool NULL, is_worked bool NULL, last_action_date timestamptz(6) NULL, priority int4 NULL, reactivation_datetime timestamptz(6) NULL, stage_of_task varchar(255) NULL, task_number varchar(255) NULL, task_seq int8 NULL, user_name varchar(255) NULL, client_id int8 NOT NULL, manager_id int8 NULL, schedule_campaign_id int8 NOT NULL, CONSTRAINT campaign_task_pkey PRIMARY KEY (id), CONSTRAINT fk7pnv0igy3ox2hguxd9v4vhmd4 FOREIGN KEY (manager_id) REFERENCES contact_center.result_managers(id), CONSTRAINT fkawufca7limuyunfej6jkjt15j FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id), CONSTRAINT fkf7otpub3x8b4kmsfbn1lpd7qh FOREIGN KEY (schedule_campaign_id) REFERENCES contact_center.schedule_campaign(id));

-- Permissions

ALTER TABLE contact_center.campaign_task OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.campaign_task TO kcell_test_user;


-- contact_center.collateral_objects definition

-- Drop table

-- DROP TABLE contact_center.collateral_objects;

CREATE TABLE contact_center.collateral_objects ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, appraiser_name varchar(255) NULL, collateral_code varchar(255) NULL, collateral_condition varchar(255) NULL, current_market_value varchar(255) NULL, initial_collateral_value numeric(15, 2) NULL, initial_market_value numeric(15, 2) NULL, monitoring_date timestamptz(6) NULL, monitoring_executor varchar(255) NULL, monitoring_notes varchar(255) NULL, organizational_unit_id int8 NULL, contract_id int8 NULL, CONSTRAINT collateral_objects_pkey PRIMARY KEY (id), CONSTRAINT fked8dl9skbbpf647i7iqn88mdc FOREIGN KEY (contract_id) REFERENCES contact_center.contracts(id));

-- Permissions

ALTER TABLE contact_center.collateral_objects OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.collateral_objects TO kcell_test_user;


-- contact_center.collections definition

-- Drop table

-- DROP TABLE contact_center.collections;

CREATE TABLE contact_center.collections ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, collection_strategy varchar(100) NULL, contract_number varchar(50) NULL, contract_scan_url varchar(255) NULL, court_stage varchar(100) NULL, debt_amount numeric(15, 2) NULL, dpd int4 NULL, fine numeric(15, 2) NULL, history text NULL, last_contact_date timestamptz(6) NULL, lawyer_contact text NULL, manager_id uuid NULL, notification_status varchar(50) NULL, overdue_loan_interest numeric(15, 2) NULL, overdue_loan_principal numeric(15, 2) NULL, payment_plan text NULL, penalty numeric(15, 2) NULL, reason varchar(255) NULL, restructuring_date timestamptz(6) NULL, restructuring_plan text NULL, status varchar(50) NULL, taken_at timestamptz(6) NULL, credit_product_id int8 NULL, client_id int8 NULL, CONSTRAINT collections_pkey PRIMARY KEY (id), CONSTRAINT fk3nmvr2osae1jexa91bilm42fr FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id), CONSTRAINT fkks5y2lpxfuugs3xhg09dc7nso FOREIGN KEY (credit_product_id) REFERENCES contact_center.banking_products(id));
CREATE INDEX idx_collections_client ON contact_center.collections USING btree (client_id);
CREATE INDEX idx_collections_dpd ON contact_center.collections USING btree (client_id, dpd);
CREATE INDEX idx_collections_status ON contact_center.collections USING btree (status);

-- Permissions

ALTER TABLE contact_center.collections OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.collections TO kcell_test_user;


-- contact_center.communicate_result definition

-- Drop table

-- DROP TABLE contact_center.communicate_result;

CREATE TABLE contact_center.communicate_result ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, channel varchar(255) NULL, "comment" varchar(255) NULL, contact_id int8 NULL, create_date timestamptz(6) NULL, direction varchar(255) NULL, end_date timestamptz(6) NULL, promise_date timestamptz(6) NULL, responsible varchar(255) NULL, "result" text NULL, start_date timestamptz(6) NULL, contact_value varchar(255) NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, delivered_at timestamptz(6) NULL, message_type varchar(255) NULL, receiver_fio varchar(255) NULL, status varchar(255) NULL, subject varchar(255) NULL, task_number varchar(255) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, user_id uuid NULL, client_id int8 NOT NULL, client_contact_id int8 NOT NULL, CONSTRAINT communicate_result_pkey PRIMARY KEY (id), CONSTRAINT fk49od6nqncyqfm66latj81v2kg FOREIGN KEY (client_contact_id) REFERENCES contact_center.contacts(id), CONSTRAINT fktrm4h4fub4o6dbc53y17hxrtq FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id));

-- Permissions

ALTER TABLE contact_center.communicate_result OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.communicate_result TO kcell_test_user;


-- contact_center.communications definition

-- Drop table

-- DROP TABLE contact_center.communications;

CREATE TABLE contact_center.communications ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, action_link text NULL, channel varchar(50) NULL, communication_date timestamptz(6) NULL, communication_type varchar(50) NULL, communications_group varchar(20) NULL, description text NULL, priority varchar(20) NULL, record_url text NULL, "result" text NULL, status varchar(30) NULL, banking_product_id int8 NULL, client_id int8 NULL, manager_id uuid NULL, CONSTRAINT communications_pkey PRIMARY KEY (id), CONSTRAINT fk4s0jyibosxapsma3482r854xp FOREIGN KEY (banking_product_id) REFERENCES contact_center.banking_products(id), CONSTRAINT fkaxxegsuyggu54b20j7cj2y0co FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id), CONSTRAINT fkeyrxn15r0dev8j3cgeda861ks FOREIGN KEY (manager_id) REFERENCES contact_center.managers_user(id));
CREATE INDEX idx_communications_client ON contact_center.communications USING btree (client_id);
CREATE INDEX idx_communications_date ON contact_center.communications USING btree (communication_date);
CREATE INDEX idx_communications_type ON contact_center.communications USING btree (communication_type);

-- Permissions

ALTER TABLE contact_center.communications OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.communications TO kcell_test_user;


-- contact_center.contract_history definition

-- Drop table

-- DROP TABLE contact_center.contract_history;

CREATE TABLE contact_center.contract_history ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, archived_at timestamptz(6) NULL, bin_iin varchar(12) NULL, borrower_name varchar(255) NULL, business_type varchar(100) NULL, cli_acc_code varchar(255) NULL, client_account_code varchar(255) NULL, collection_status varchar(50) NULL, contract_end_date timestamptz(6) NULL, contract_number varchar(100) NULL, contract_state varchar(255) NULL, contract_status varchar(50) NULL, credit_amount numeric(15, 2) NULL, credit_product_name varchar(255) NULL, credit_purpose varchar(255) NULL, credit_term_months int4 NULL, currency varchar(3) NULL, damu_guarantees bool NULL, delay_days int4 NULL, fine_amount numeric(15, 2) NULL, general_agreement varchar(100) NULL, ifrs_portfolio_type varchar(100) NULL, ifrs_provision_interest numeric(15, 2) NULL, ifrs_provision_interest_balance numeric(15, 2) NULL, ifrs_provision_percentage numeric(5, 2) NULL, ifrs_provision_principal numeric(15, 2) NULL, ifrs_provision_principal_balance numeric(15, 2) NULL, interest_debt numeric(15, 2) NULL, interest_rate numeric(6, 2) NULL, issue_date timestamptz(6) NULL, manager_p varchar(255) NULL, organizational_unit_id int8 NULL, overdue_days_interest int4 NULL, overdue_days_principal int4 NULL, overdue_interest_debt numeric(15, 2) NULL, overdue_principal_debt numeric(15, 2) NULL, penalty_amount numeric(15, 2) NULL, principal_debt numeric(15, 2) NULL, product_code varchar(255) NULL, project_manager varchar(255) NULL, receivables_debt numeric(15, 2) NULL, repayment_date int4 NULL, restructuring_date timestamptz(6) NULL, statname varchar(255) NULL, client_id int8 NULL, contract_id int8 NULL, mark_id int8 NULL, CONSTRAINT contract_history_pkey PRIMARY KEY (id), CONSTRAINT fkceijaao8w6rl6133b8cmdqyso FOREIGN KEY (mark_id) REFERENCES contact_center.marks(id), CONSTRAINT fkfgjftleol9vcsf04vay7chom6 FOREIGN KEY (client_id) REFERENCES contact_center.clients(client_id), CONSTRAINT fkrf22gfq8wpe4qvpxyqnuv6mct FOREIGN KEY (contract_id) REFERENCES contact_center.contracts(id));

-- Permissions

ALTER TABLE contact_center.contract_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.contract_history TO kcell_test_user;


-- contact_center.credit_history_individual definition

-- Drop table

-- DROP TABLE contact_center.credit_history_individual;

CREATE TABLE contact_center.credit_history_individual ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, amount numeric(15, 2) NULL, close_date timestamptz(6) NULL, credit_type varchar(100) NULL, currency varchar(3) NULL, interest_rate numeric(5, 2) NULL, issue_date timestamptz(6) NULL, status varchar(50) NULL, term_months int4 NULL, credit_id int8 NULL, individual_client_id int8 NULL, CONSTRAINT credit_history_individual_pkey PRIMARY KEY (id), CONSTRAINT fk6urm7drt3oy0idcuisv0y4s2d FOREIGN KEY (individual_client_id) REFERENCES contact_center.individual_clients(id), CONSTRAINT fke80ciu5tyrgfmbsxye02ueydi FOREIGN KEY (credit_id) REFERENCES contact_center.banking_products(id));
CREATE INDEX idx_credit_history_individual ON contact_center.credit_history_individual USING btree (individual_client_id);

-- Permissions

ALTER TABLE contact_center.credit_history_individual OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.credit_history_individual TO kcell_test_user;


-- contact_center.financial_indicators definition

-- Drop table

-- DROP TABLE contact_center.financial_indicators;

CREATE TABLE contact_center.financial_indicators ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, annual_turnover numeric(15, 2) NULL, debt_load numeric(15, 2) NULL, financial_risk varchar(50) NULL, gross_profit numeric(15, 2) NULL, net_profit numeric(15, 2) NULL, "year" int4 NULL, legal_entity_client_id int8 NULL, CONSTRAINT financial_indicators_pkey PRIMARY KEY (id), CONSTRAINT fkp2u8tnfsvgkev3poh08k8rk3a FOREIGN KEY (legal_entity_client_id) REFERENCES contact_center.legal_entity_clients(id));

-- Permissions

ALTER TABLE contact_center.financial_indicators OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.financial_indicators TO kcell_test_user;


-- contact_center.guarantors definition

-- Drop table

-- DROP TABLE contact_center.guarantors;

CREATE TABLE contact_center.guarantors ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, bin varchar(12) NULL, document_date timestamptz(6) NULL, document_number varchar(50) NULL, document_scan_url varchar(255) NULL, document_type varchar(50) NULL, full_name varchar(255) NULL, guarantor_type varchar(2) NULL, iin varchar(12) NULL, phone varchar(20) NULL, legal_entity_client_id int8 NULL, CONSTRAINT guarantors_pkey PRIMARY KEY (id), CONSTRAINT fkmnifqijy8kdo75gv1ex02aaor FOREIGN KEY (legal_entity_client_id) REFERENCES contact_center.legal_entity_clients(id));

-- Permissions

ALTER TABLE contact_center.guarantors OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.guarantors TO kcell_test_user;


-- contact_center.collection_tasks definition

-- Drop table

-- DROP TABLE contact_center.collection_tasks;

CREATE TABLE contact_center.collection_tasks ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, appprove_date timestamptz(6) NULL, approver_name varchar(255) NULL, "comment" varchar(255) NULL, new_strategy varchar(255) NULL, old_strategy varchar(255) NULL, sender_name varchar(255) NULL, status varchar(255) NULL, collection_id int8 NULL, CONSTRAINT collection_tasks_pkey PRIMARY KEY (id), CONSTRAINT fkq2l8ux1dem6banuaqw85kwj1w FOREIGN KEY (collection_id) REFERENCES contact_center.collections(id));

-- Permissions

ALTER TABLE contact_center.collection_tasks OWNER TO kcell_test_user;
GRANT ALL ON TABLE contact_center.collection_tasks TO kcell_test_user;




-- Permissions

GRANT ALL ON SCHEMA contact_center TO kcell_test_user;