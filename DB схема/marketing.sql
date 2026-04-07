-- DROP SCHEMA marketing;

CREATE SCHEMA marketing AUTHORIZATION kcell_test_user;

-- DROP SEQUENCE marketing.addresses_id_seq;

CREATE SEQUENCE marketing.addresses_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.addresses_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.addresses_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.authorized_persons_id_seq;

CREATE SEQUENCE marketing.authorized_persons_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.authorized_persons_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.authorized_persons_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.banking_products_id_seq;

CREATE SEQUENCE marketing.banking_products_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.banking_products_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.banking_products_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.beneficiaries_id_seq;

CREATE SEQUENCE marketing.beneficiaries_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.beneficiaries_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.beneficiaries_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.call_result_id_seq;

CREATE SEQUENCE marketing.call_result_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.call_result_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.call_result_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.campaign_id_seq;

CREATE SEQUENCE marketing.campaign_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.campaign_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.campaign_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.campaign_task_id_seq;

CREATE SEQUENCE marketing.campaign_task_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.campaign_task_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.campaign_task_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.channel_seq;

CREATE SEQUENCE marketing.channel_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.channel_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.channel_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.collateral_objects_id_seq;

CREATE SEQUENCE marketing.collateral_objects_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.collateral_objects_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.collateral_objects_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.collection_tasks_id_seq;

CREATE SEQUENCE marketing.collection_tasks_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.collection_tasks_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.collection_tasks_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.collections_id_seq;

CREATE SEQUENCE marketing.collections_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.collections_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.collections_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.communicate_result_id_seq;

CREATE SEQUENCE marketing.communicate_result_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.communicate_result_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.communicate_result_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.communication_contact_center_id_seq;

CREATE SEQUENCE marketing.communication_contact_center_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.communication_contact_center_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.communication_contact_center_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.communications_id_seq;

CREATE SEQUENCE marketing.communications_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.communications_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.communications_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.contacts_id_seq;

CREATE SEQUENCE marketing.contacts_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.contacts_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.contacts_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.contract_history_id_seq;

CREATE SEQUENCE marketing.contract_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.contract_history_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.contract_history_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.contracts_id_seq;

CREATE SEQUENCE marketing.contracts_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.contracts_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.contracts_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.credit_history_individual_id_seq;

CREATE SEQUENCE marketing.credit_history_individual_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.credit_history_individual_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.credit_history_individual_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.financial_indicators_id_seq;

CREATE SEQUENCE marketing.financial_indicators_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.financial_indicators_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.financial_indicators_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.governing_bodies_id_seq;

CREATE SEQUENCE marketing.governing_bodies_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.governing_bodies_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.governing_bodies_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.guarantors_id_seq;

CREATE SEQUENCE marketing.guarantors_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.guarantors_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.guarantors_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.identity_documents_id_seq;

CREATE SEQUENCE marketing.identity_documents_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.identity_documents_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.identity_documents_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.individual_clients_id_seq;

CREATE SEQUENCE marketing.individual_clients_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.individual_clients_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.individual_clients_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.lead_appeals_history_id_seq;

CREATE SEQUENCE marketing.lead_appeals_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.lead_appeals_history_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.lead_appeals_history_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.lead_appeals_id_seq;

CREATE SEQUENCE marketing.lead_appeals_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.lead_appeals_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.lead_appeals_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.legal_entity_clients_id_seq;

CREATE SEQUENCE marketing.legal_entity_clients_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.legal_entity_clients_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.legal_entity_clients_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.management_id_seq;

CREATE SEQUENCE marketing.management_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.management_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.management_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.marketing_task_id_seq;

CREATE SEQUENCE marketing.marketing_task_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.marketing_task_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.marketing_task_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.marks_id_seq;

CREATE SEQUENCE marketing.marks_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.marks_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.marks_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.misc_individual_data_id_seq;

CREATE SEQUENCE marketing.misc_individual_data_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.misc_individual_data_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.misc_individual_data_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.payment_schedule_id_seq;

CREATE SEQUENCE marketing.payment_schedule_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.payment_schedule_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.payment_schedule_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.priority_collection_id_seq;

CREATE SEQUENCE marketing.priority_collection_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.priority_collection_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.priority_collection_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.processing_results_id_seq;

CREATE SEQUENCE marketing.processing_results_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.processing_results_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.processing_results_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.related_companies_id_seq;

CREATE SEQUENCE marketing.related_companies_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.related_companies_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.related_companies_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.result_managers_id_seq;

CREATE SEQUENCE marketing.result_managers_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.result_managers_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.result_managers_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.risks_legal_id_seq;

CREATE SEQUENCE marketing.risks_legal_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.risks_legal_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.risks_legal_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.schedule_campaign_robot_seq;

CREATE SEQUENCE marketing.schedule_campaign_robot_seq
	INCREMENT BY 50
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.schedule_campaign_robot_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.schedule_campaign_robot_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.schedule_campaign_seq;

CREATE SEQUENCE marketing.schedule_campaign_seq
	INCREMENT BY 50
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.schedule_campaign_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.schedule_campaign_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.schedule_campaign_settings_seq;

CREATE SEQUENCE marketing.schedule_campaign_settings_seq
	INCREMENT BY 50
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.schedule_campaign_settings_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.schedule_campaign_settings_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.schedule_campaign_user_seq;

CREATE SEQUENCE marketing.schedule_campaign_user_seq
	INCREMENT BY 50
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.schedule_campaign_user_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.schedule_campaign_user_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.segment_seq;

CREATE SEQUENCE marketing.segment_seq
	INCREMENT BY 50
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.segment_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.segment_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.skill_group_seq;

CREATE SEQUENCE marketing.skill_group_seq
	INCREMENT BY 50
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.skill_group_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.skill_group_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.socioeconomic_status_id_seq;

CREATE SEQUENCE marketing.socioeconomic_status_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.socioeconomic_status_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.socioeconomic_status_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.task_match_client_id_seq;

CREATE SEQUENCE marketing.task_match_client_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.task_match_client_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.task_match_client_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.task_match_id_seq;

CREATE SEQUENCE marketing.task_match_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.task_match_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.task_match_id_seq TO kcell_test_user;

-- DROP SEQUENCE marketing.upload_history_id_seq;

CREATE SEQUENCE marketing.upload_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE marketing.upload_history_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE marketing.upload_history_id_seq TO kcell_test_user;
-- marketing.campaign definition

-- Drop table

-- DROP TABLE marketing.campaign;

CREATE TABLE marketing.campaign ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, collection varchar(255) NULL, dep_id varchar(255) NULL, "name" varchar(255) NULL, segments jsonb NULL, username jsonb NULL, CONSTRAINT campaign_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.campaign OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.campaign TO kcell_test_user;


-- marketing.channel definition

-- Drop table

-- DROP TABLE marketing.channel;

CREATE TABLE marketing.channel ( id int8 NOT NULL, manager bool NULL, robot bool NULL, sms bool NULL, whatsapp bool NULL, CONSTRAINT channel_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.channel OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.channel TO kcell_test_user;


-- marketing.communication_contact_center definition

-- Drop table

-- DROP TABLE marketing.communication_contact_center;

CREATE TABLE marketing.communication_contact_center ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, callback_date date NULL, callback_purpose varchar(255) NULL, callback_time time(6) NULL, channel varchar(255) NULL, client_id int8 NULL, "comment" text NULL, "date" timestamptz(6) NOT NULL, "result" varchar(255) NULL, theme varchar(255) NULL, user_fio varchar(255) NULL, user_id int8 NULL, CONSTRAINT communication_contact_center_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.communication_contact_center OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.communication_contact_center TO kcell_test_user;


-- marketing.databasechangelog definition

-- Drop table

-- DROP TABLE marketing.databasechangelog;

CREATE TABLE marketing.databasechangelog ( id varchar(255) NOT NULL, author varchar(255) NOT NULL, filename varchar(255) NOT NULL, dateexecuted timestamp NOT NULL, orderexecuted int4 NOT NULL, exectype varchar(10) NOT NULL, md5sum varchar(35) NULL, description varchar(255) NULL, "comments" varchar(255) NULL, tag varchar(255) NULL, liquibase varchar(20) NULL, contexts varchar(255) NULL, labels varchar(255) NULL, deployment_id varchar(10) NULL);

-- Permissions

ALTER TABLE marketing.databasechangelog OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.databasechangelog TO kcell_test_user;


-- marketing.databasechangeloglock definition

-- Drop table

-- DROP TABLE marketing.databasechangeloglock;

CREATE TABLE marketing.databasechangeloglock ( id int4 NOT NULL, "locked" bool NOT NULL, lockgranted timestamp NULL, lockedby varchar(255) NULL, CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.databasechangeloglock OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.databasechangeloglock TO kcell_test_user;


-- marketing.lead_appeals definition

-- Drop table

-- DROP TABLE marketing.lead_appeals;

CREATE TABLE marketing.lead_appeals ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, campaign varchar(255) NULL, category varchar(50) NULL, channel varchar(255) NULL, client_id int8 NULL, client_type varchar(100) NULL, "comment" varchar(1000) NULL, contact_id int8 NOT NULL, created_date timestamptz(6) NOT NULL, deleted bool NULL, file_id varchar(100) NULL, fio varchar(255) NULL, manager_id int8 NULL, product varchar(255) NULL, status varchar(50) NOT NULL, theme varchar(255) NULL, "type" varchar(50) NULL, unit_id int8 NULL, updated_date timestamptz(6) NULL, CONSTRAINT lead_appeals_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.lead_appeals OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.lead_appeals TO kcell_test_user;


-- marketing.lead_appeals_history definition

-- Drop table

-- DROP TABLE marketing.lead_appeals_history;

CREATE TABLE marketing.lead_appeals_history ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "comment" varchar(250) NULL, created_date timestamptz(6) NOT NULL, file_id varchar(100) NULL, lead_appeals_id int8 NOT NULL, manager_id int8 NULL, status varchar(50) NOT NULL, "type" varchar(50) NULL, CONSTRAINT lead_appeals_history_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.lead_appeals_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.lead_appeals_history TO kcell_test_user;


-- marketing.managers_user definition

-- Drop table

-- DROP TABLE marketing.managers_user;

CREATE TABLE marketing.managers_user ( id uuid NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, email varchar(100) NULL, full_name varchar(255) NULL, organizational_unit_id int8 NULL, phone varchar(20) NULL, "position" varchar(100) NULL, "role" varchar(50) NULL, status varchar(30) NULL, CONSTRAINT managers_user_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.managers_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.managers_user TO kcell_test_user;


-- marketing.marketing_task definition

-- Drop table

-- DROP TABLE marketing.marketing_task;

CREATE TABLE marketing.marketing_task ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, channel varchar(100) NULL, created_date timestamptz(6) NOT NULL, ended_date timestamptz(6) NULL, expiration_date timestamptz(6) NOT NULL, lead_appeals_id int8 NOT NULL, manager_id int8 NULL, "type" varchar(100) NULL, CONSTRAINT marketing_task_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.marketing_task OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.marketing_task TO kcell_test_user;


-- marketing.priority_collection definition

-- Drop table

-- DROP TABLE marketing.priority_collection;

CREATE TABLE marketing.priority_collection ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, color varchar(255) NULL, max_days_without_work int4 NULL, min_days_without_work int4 NULL, priority int4 NULL, status varchar(255) NULL, "type" varchar(255) NULL, CONSTRAINT priority_collection_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.priority_collection OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.priority_collection TO kcell_test_user;


-- marketing.schedule_campaign definition

-- Drop table

-- DROP TABLE marketing.schedule_campaign;

CREATE TABLE marketing.schedule_campaign ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, channel varchar(255) NULL, collection varchar(255) NULL, dep_id varchar(255) NULL, end_time timestamptz(6) NULL, is_active bool NULL, last_activate_date timestamptz(6) NULL, "name" varchar(255) NULL, start_time timestamptz(6) NULL, CONSTRAINT schedule_campaign_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.schedule_campaign OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.schedule_campaign TO kcell_test_user;


-- marketing.skill_group definition

-- Drop table

-- DROP TABLE marketing.skill_group;

CREATE TABLE marketing.skill_group ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, collection varchar(255) NULL, dep_id varchar(255) NULL, "name" varchar(255) NULL, CONSTRAINT skill_group_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.skill_group OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.skill_group TO kcell_test_user;


-- marketing.task_match definition

-- Drop table

-- DROP TABLE marketing.task_match;

CREATE TABLE marketing.task_match ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, company_client_count int4 NULL, "date" timestamptz(6) NULL, is_matched bool NULL, "name" varchar(255) NULL, task_client_count int4 NULL, user_name varchar(255) NULL, CONSTRAINT task_match_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.task_match OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.task_match TO kcell_test_user;


-- marketing.upload_history definition

-- Drop table

-- DROP TABLE marketing.upload_history;

CREATE TABLE marketing.upload_history ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, file_name varchar(255) NULL, CONSTRAINT upload_history_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE marketing.upload_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.upload_history TO kcell_test_user;


-- marketing.campaign_sort_fields definition

-- Drop table

-- DROP TABLE marketing.campaign_sort_fields;

CREATE TABLE marketing.campaign_sort_fields ( campaign_id int8 NOT NULL, field varchar(255) NULL, value varchar(255) NULL, CONSTRAINT campaign_sort_fields_value_check CHECK (((value)::text = ANY ((ARRAY['ASC'::character varying, 'DESC'::character varying, 'ASC_ALPHA'::character varying, 'DESC_ALPHA'::character varying])::text[]))), CONSTRAINT fks829uesiupi0lqb6ge6pgq06r FOREIGN KEY (campaign_id) REFERENCES marketing.campaign(id));

-- Permissions

ALTER TABLE marketing.campaign_sort_fields OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.campaign_sort_fields TO kcell_test_user;


-- marketing.marks definition

-- Drop table

-- DROP TABLE marketing.marks;

CREATE TABLE marketing.marks ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, code varchar(255) NULL, "name" varchar(255) NULL, "type" varchar(255) NULL, parent_id int8 NULL, CONSTRAINT marks_pkey PRIMARY KEY (id), CONSTRAINT fkqfp5dcdhorj9kd3rbw1h4kf4l FOREIGN KEY (parent_id) REFERENCES marketing.marks(id));

-- Permissions

ALTER TABLE marketing.marks OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.marks TO kcell_test_user;


-- marketing.schedule_campaign_days_of_week definition

-- Drop table

-- DROP TABLE marketing.schedule_campaign_days_of_week;

CREATE TABLE marketing.schedule_campaign_days_of_week ( schedule_campaign_id int8 NOT NULL, days_of_week varchar(255) NULL, CONSTRAINT fkkjq7ss48eeyf9kgv02isu6w3o FOREIGN KEY (schedule_campaign_id) REFERENCES marketing.schedule_campaign(id));

-- Permissions

ALTER TABLE marketing.schedule_campaign_days_of_week OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.schedule_campaign_days_of_week TO kcell_test_user;


-- marketing.schedule_campaign_settings definition

-- Drop table

-- DROP TABLE marketing.schedule_campaign_settings;

CREATE TABLE marketing.schedule_campaign_settings ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, robot_id int8 NULL, skill_group_id int8 NULL, user_id int8 NULL, campaign_id int8 NULL, schedule_campaign_id int8 NULL, CONSTRAINT schedule_campaign_settings_pkey PRIMARY KEY (id), CONSTRAINT fkbi1jgyjbuqf9ffnhov7kqtl4l FOREIGN KEY (campaign_id) REFERENCES marketing.campaign(id), CONSTRAINT fkoodfrf1qpsoinxv2rjvrxqjy8 FOREIGN KEY (schedule_campaign_id) REFERENCES marketing.schedule_campaign(id));

-- Permissions

ALTER TABLE marketing.schedule_campaign_settings OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.schedule_campaign_settings TO kcell_test_user;


-- marketing.schedule_campaign_user definition

-- Drop table

-- DROP TABLE marketing.schedule_campaign_user;

CREATE TABLE marketing.schedule_campaign_user ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, fio text NULL, skill_group_id int8 NULL, "source" varchar(255) NULL, user_id int8 NULL, username text NULL, schedule_campaign_settings_id int8 NULL, CONSTRAINT schedule_campaign_user_pkey PRIMARY KEY (id), CONSTRAINT fksqwnh1xya0kfofn29ol3hngl6 FOREIGN KEY (schedule_campaign_settings_id) REFERENCES marketing.schedule_campaign_settings(id));

-- Permissions

ALTER TABLE marketing.schedule_campaign_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.schedule_campaign_user TO kcell_test_user;


-- marketing.segment definition

-- Drop table

-- DROP TABLE marketing.segment;

CREATE TABLE marketing.segment ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, collection varchar(255) NULL, conditions jsonb NULL, dep_id varchar(255) NULL, description varchar(255) NULL, edit_date timestamptz(6) NULL, "name" varchar(255) NULL, campaign_id int8 NULL, CONSTRAINT segment_pkey PRIMARY KEY (id), CONSTRAINT fkifr26lf5gqgt69hij2xx1vt97 FOREIGN KEY (campaign_id) REFERENCES marketing.campaign(id));

-- Permissions

ALTER TABLE marketing.segment OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.segment TO kcell_test_user;


-- marketing.skill_group_users definition

-- Drop table

-- DROP TABLE marketing.skill_group_users;

CREATE TABLE marketing.skill_group_users ( skill_group_id int8 NOT NULL, fio varchar(255) NULL, user_id int8 NULL, username varchar(255) NULL, CONSTRAINT fk1r9jg79hd089jt9r0ief3n6dg FOREIGN KEY (skill_group_id) REFERENCES marketing.skill_group(id));

-- Permissions

ALTER TABLE marketing.skill_group_users OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.skill_group_users TO kcell_test_user;


-- marketing.task_match_client definition

-- Drop table

-- DROP TABLE marketing.task_match_client;

CREATE TABLE marketing.task_match_client ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, client_id int8 NULL, task_match_id int8 NULL, CONSTRAINT task_match_client_pkey PRIMARY KEY (id), CONSTRAINT fkih194g8b67jo2fjauor3nny4n FOREIGN KEY (task_match_id) REFERENCES marketing.task_match(id));

-- Permissions

ALTER TABLE marketing.task_match_client OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.task_match_client TO kcell_test_user;


-- marketing.clients definition

-- Drop table

-- DROP TABLE marketing.clients;

CREATE TABLE marketing.clients ( client_id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, bin_iin varchar(255) NULL, client_code varchar(50) NULL, client_role varchar(50) NULL, client_type varchar(10) NULL, organizational_unit_id int8 NULL, sector_id int8 NULL, sector_name varchar(255) NULL, state varchar(50) NULL, status varchar(50) NULL, vip_client bool NULL, mark_id int8 NULL, CONSTRAINT clients_pkey PRIMARY KEY (client_id), CONSTRAINT fk4jkmnevqt0qunhhwbj1eeo7em FOREIGN KEY (mark_id) REFERENCES marketing.marks(id));
CREATE INDEX idx_clients_type ON marketing.clients USING btree (client_type);

-- Permissions

ALTER TABLE marketing.clients OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.clients TO kcell_test_user;


-- marketing.contacts definition

-- Drop table

-- DROP TABLE marketing.contacts;

CREATE TABLE marketing.contacts ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, accessibility varchar(255) NULL, contact_person_name varchar(255) NULL, contact_status varchar(50) NULL, contact_subtype varchar(50) NULL, contact_type varchar(50) NULL, contact_value varchar(255) NULL, convenient_time varchar(100) NULL, description varchar(255) NULL, is_actual bool NULL, is_primary bool NULL, marketing_consent bool NULL, organizational_unit_id int8 NULL, preferred_channel bool NULL, priority int4 NULL, processing_consent bool NULL, relationship varchar(100) NULL, verification_date timestamptz(6) NULL, verification_status varchar(50) NULL, client_id int8 NULL, CONSTRAINT contacts_pkey PRIMARY KEY (id), CONSTRAINT fk94mnsowcdm8tow68ha3xudt48 FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));
CREATE INDEX idx_contacts_client ON marketing.contacts USING btree (client_id);

-- Permissions

ALTER TABLE marketing.contacts OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.contacts TO kcell_test_user;


-- marketing.contracts definition

-- Drop table

-- DROP TABLE marketing.contracts;

CREATE TABLE marketing.contracts ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, bin_iin varchar(12) NULL, borrower_name varchar(255) NULL, business_type varchar(100) NULL, cli_acc_code varchar(255) NULL, client_account_code varchar(255) NULL, collection_status varchar(50) NULL, contract_end_date timestamptz(6) NULL, contract_number varchar(100) NULL, contract_state varchar(255) NULL, contract_status varchar(50) NULL, credit_amount numeric(15, 2) NULL, credit_product_name varchar(255) NULL, credit_purpose varchar(255) NULL, credit_term_months int4 NULL, currency varchar(3) NULL, damu_guarantees bool NULL, delay_days int4 NULL, fine_amount numeric(15, 2) NULL, general_agreement varchar(100) NULL, ifrs_portfolio_type varchar(100) NULL, ifrs_provision_interest numeric(15, 2) NULL, ifrs_provision_interest_balance numeric(15, 2) NULL, ifrs_provision_percentage numeric(5, 2) NULL, ifrs_provision_principal numeric(15, 2) NULL, ifrs_provision_principal_balance numeric(15, 2) NULL, interest_debt numeric(15, 2) NULL, interest_rate numeric(6, 2) NULL, issue_date timestamptz(6) NULL, manager_p varchar(255) NULL, organizational_unit_id int8 NULL, overdue_days_interest int4 NULL, overdue_days_principal int4 NULL, overdue_interest_debt numeric(15, 2) NULL, overdue_principal_debt numeric(15, 2) NULL, penalty_amount numeric(15, 2) NULL, principal_debt numeric(15, 2) NULL, product_code varchar(255) NULL, project_manager varchar(255) NULL, receivables_debt numeric(15, 2) NULL, repayment_date int4 NULL, restructuring_date timestamptz(6) NULL, statname varchar(255) NULL, client_id int8 NULL, mark_id int8 NULL, CONSTRAINT contracts_pkey PRIMARY KEY (id), CONSTRAINT ukbx9jyu2cccdntb3ehrf0ojpfd UNIQUE (contract_number), CONSTRAINT fk3nki6ah8dnwmm7wn1megnbh8 FOREIGN KEY (mark_id) REFERENCES marketing.marks(id), CONSTRAINT fkrqssit79jdlx2ch8ubajt6w4y FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));
CREATE INDEX idx_contracts_client ON marketing.contracts USING btree (client_id);
CREATE INDEX idx_contracts_number ON marketing.contracts USING btree (contract_number);

-- Permissions

ALTER TABLE marketing.contracts OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.contracts TO kcell_test_user;


-- marketing.governing_bodies definition

-- Drop table

-- DROP TABLE marketing.governing_bodies;

CREATE TABLE marketing.governing_bodies ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, client_name varchar(255) NULL, end_date timestamptz(6) NULL, governing_body_type varchar(100) NULL, is_actual bool NULL, role_position varchar(100) NULL, start_date timestamptz(6) NULL, client_id int8 NULL, CONSTRAINT governing_bodies_pkey PRIMARY KEY (id), CONSTRAINT fk5rpstlu6t3l5r0t9kynlb5upm FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));

-- Permissions

ALTER TABLE marketing.governing_bodies OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.governing_bodies TO kcell_test_user;


-- marketing.identity_documents definition

-- Drop table

-- DROP TABLE marketing.identity_documents;

CREATE TABLE marketing.identity_documents ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, document_code varchar(50) NULL, document_number varchar(50) NULL, document_scan_url varchar(255) NULL, document_series varchar(50) NULL, document_type varchar(255) NULL, expiry_date timestamptz(6) NULL, is_archived bool NULL, is_primary bool NULL, issue_date timestamptz(6) NULL, issued_by varchar(255) NULL, organizational_unit_id int8 NULL, client_id int8 NULL, CONSTRAINT identity_documents_pkey PRIMARY KEY (id), CONSTRAINT fkn7vhdd1jnhs5u3d09wcwvi6vg FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));

-- Permissions

ALTER TABLE marketing.identity_documents OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.identity_documents TO kcell_test_user;


-- marketing.individual_clients definition

-- Drop table

-- DROP TABLE marketing.individual_clients;

CREATE TABLE marketing.individual_clients ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, bankrot_fl bool NULL, birth_date timestamptz(6) NULL, birth_place varchar(255) NULL, children_count int4 NULL, citizenship varchar(50) NULL, first_name varchar(100) NULL, gender varchar(10) NULL, iin varchar(12) NULL, iin_status varchar(50) NULL, last_name varchar(100) NULL, marital_status varchar(50) NULL, middle_name varchar(100) NULL, photo_url varchar(50) NULL, resident bool NULL, client_id int8 NULL, CONSTRAINT individual_clients_pkey PRIMARY KEY (id), CONSTRAINT uklcrpn68xverashg7fui1qjb0a UNIQUE (client_id), CONSTRAINT fk1p3kccmlpb6e31m12gm492fq8 FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));
CREATE INDEX idx_individual_iin ON marketing.individual_clients USING btree (iin);

-- Permissions

ALTER TABLE marketing.individual_clients OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.individual_clients TO kcell_test_user;


-- marketing.legal_entity_clients definition

-- Drop table

-- DROP TABLE marketing.legal_entity_clients;

CREATE TABLE marketing.legal_entity_clients ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, authorized_capital numeric(15, 2) NULL, bankrot_ul bool NULL, bin varchar(12) NULL, bin_status varchar(50) NULL, country_code varchar(3) NULL, egrul_link varchar(255) NULL, employee_count int4 NULL, full_name varchar(255) NULL, industry varchar(100) NULL, is_individual_entrepreneur bool NULL, legal_entity_status varchar(50) NULL, legal_entity_type varchar(50) NULL, oked varchar(20) NULL, registration_date timestamptz(6) NULL, registration_number varchar(50) NULL, registration_region varchar(100) NULL, resident bool NULL, short_name varchar(100) NULL, client_id int8 NULL, related_individual_client_id int8 NULL, CONSTRAINT legal_entity_clients_pkey PRIMARY KEY (id), CONSTRAINT ukh1jn40mded01o18q6at0inlhe UNIQUE (related_individual_client_id), CONSTRAINT ukihsfji9o0n15nu2d7m7fw6n0x UNIQUE (client_id), CONSTRAINT fkj0c6yhlk4oe6stums6k17bd9i FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id), CONSTRAINT fkn92sf5gqou1h5wfkjbvbj86sa FOREIGN KEY (related_individual_client_id) REFERENCES marketing.individual_clients(id));
CREATE INDEX idx_legal_bin ON marketing.legal_entity_clients USING btree (bin);

-- Permissions

ALTER TABLE marketing.legal_entity_clients OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.legal_entity_clients TO kcell_test_user;


-- marketing.management definition

-- Drop table

-- DROP TABLE marketing.management;

CREATE TABLE marketing.management ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, document_number varchar(50) NULL, document_scan_url varchar(255) NULL, document_type varchar(50) NULL, email varchar(100) NULL, full_name varchar(255) NULL, iin varchar(12) NULL, phone varchar(20) NULL, "position" varchar(100) NULL, legal_entity_client_id int8 NULL, CONSTRAINT management_pkey PRIMARY KEY (id), CONSTRAINT fk5bnayya4lu6f9ipukauj7ynfl FOREIGN KEY (legal_entity_client_id) REFERENCES marketing.legal_entity_clients(id));

-- Permissions

ALTER TABLE marketing.management OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.management TO kcell_test_user;


-- marketing.misc_individual_data definition

-- Drop table

-- DROP TABLE marketing.misc_individual_data;

CREATE TABLE marketing.misc_individual_data ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, data_type varchar(50) NULL, data_value text NULL, notes text NULL, individual_client_id int8 NULL, CONSTRAINT misc_individual_data_pkey PRIMARY KEY (id), CONSTRAINT fkjwjpvunvvx5jrq3om5p4adpic FOREIGN KEY (individual_client_id) REFERENCES marketing.individual_clients(id));

-- Permissions

ALTER TABLE marketing.misc_individual_data OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.misc_individual_data TO kcell_test_user;


-- marketing.payment_history definition

-- Drop table

-- DROP TABLE marketing.payment_history;

CREATE TABLE marketing.payment_history ( tra_id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, amount numeric(15, 2) NULL, channel varchar(255) NULL, contract_number varchar(255) NULL, currency varchar(255) NULL, operation_code varchar(255) NULL, operation_name varchar(255) NULL, organizational_unit_id int8 NULL, payment_date date NULL, client_id int8 NULL, contract_id int8 NULL, CONSTRAINT payment_history_pkey PRIMARY KEY (tra_id), CONSTRAINT fk8mx3tawfodklay4kcobx6urlv FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id), CONSTRAINT fkhw5fp2iib4550q8ekp77npfle FOREIGN KEY (contract_id) REFERENCES marketing.contracts(id));

-- Permissions

ALTER TABLE marketing.payment_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.payment_history TO kcell_test_user;


-- marketing.payment_schedule definition

-- Drop table

-- DROP TABLE marketing.payment_schedule;

CREATE TABLE marketing.payment_schedule ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, commission_amount numeric(15, 2) NULL, interest_amount numeric(15, 2) NULL, payment_date timestamptz(6) NULL, principal_amount numeric(15, 2) NULL, remaining_balance numeric(15, 2) NULL, total_amount numeric(15, 2) NULL, contract_id int8 NULL, CONSTRAINT payment_schedule_pkey PRIMARY KEY (id), CONSTRAINT fkj72muwe941g4jaki9gof8yol7 FOREIGN KEY (contract_id) REFERENCES marketing.contracts(id));

-- Permissions

ALTER TABLE marketing.payment_schedule OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.payment_schedule TO kcell_test_user;


-- marketing.processing_results definition

-- Drop table

-- DROP TABLE marketing.processing_results;

CREATE TABLE marketing.processing_results ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, next_processing_date timestamptz(6) NULL, processing_date timestamptz(6) NULL, processing_result varchar(500) NULL, promise_date timestamptz(6) NULL, responsible varchar(255) NULL, task_number varchar(255) NULL, client_id int8 NOT NULL, contract_id int8 NOT NULL, CONSTRAINT processing_results_pkey PRIMARY KEY (id), CONSTRAINT fkl39pqicnk0jx9p9atbfx191ua FOREIGN KEY (contract_id) REFERENCES marketing.contracts(id), CONSTRAINT fkr7wnn0un12pri988y0wa9ack8 FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));

-- Permissions

ALTER TABLE marketing.processing_results OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.processing_results TO kcell_test_user;


-- marketing.related_companies definition

-- Drop table

-- DROP TABLE marketing.related_companies;

CREATE TABLE marketing.related_companies ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, bin varchar(12) NULL, contact_info text NULL, related_company_name varchar(255) NULL, relationship_type varchar(50) NULL, legal_entity_client_id int8 NULL, CONSTRAINT related_companies_pkey PRIMARY KEY (id), CONSTRAINT fk5vclxiggmxfk9cm8mi2dugwg5 FOREIGN KEY (legal_entity_client_id) REFERENCES marketing.legal_entity_clients(id));

-- Permissions

ALTER TABLE marketing.related_companies OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.related_companies TO kcell_test_user;


-- marketing.result_managers definition

-- Drop table

-- DROP TABLE marketing.result_managers;

CREATE TABLE marketing.result_managers ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, "comment" varchar(255) NULL, create_date timestamp(6) NULL, fio varchar(255) NULL, next_processing_date timestamptz(6) NULL, promise_date timestamptz(6) NULL, "result" varchar(255) NULL, result_date timestamptz(6) NULL, user_name varchar(255) NULL, client_id int8 NULL, CONSTRAINT result_managers_pkey PRIMARY KEY (id), CONSTRAINT fkm4q0w791ev49vcujh95mq29a5 FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));

-- Permissions

ALTER TABLE marketing.result_managers OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.result_managers TO kcell_test_user;


-- marketing.risks_legal definition

-- Drop table

-- DROP TABLE marketing.risks_legal;

CREATE TABLE marketing.risks_legal ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, description text NULL, detection_date timestamptz(6) NULL, resolution_date timestamptz(6) NULL, resolution_status varchar(50) NULL, risk_level varchar(20) NULL, risk_type varchar(50) NULL, legal_entity_client_id int8 NULL, CONSTRAINT risks_legal_pkey PRIMARY KEY (id), CONSTRAINT fk69reqrbyaqvpggpg4xvq4bnpv FOREIGN KEY (legal_entity_client_id) REFERENCES marketing.legal_entity_clients(id));

-- Permissions

ALTER TABLE marketing.risks_legal OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.risks_legal TO kcell_test_user;


-- marketing.schedule_campaign_robot definition

-- Drop table

-- DROP TABLE marketing.schedule_campaign_robot;

CREATE TABLE marketing.schedule_campaign_robot ( id int8 NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, description varchar(255) NULL, robot_id int8 NULL, robot_name varchar(255) NULL, schedule_campaign_settings_id int8 NULL, CONSTRAINT schedule_campaign_robot_pkey PRIMARY KEY (id), CONSTRAINT fk1pnfb0nashiott8emnpgr3xvn FOREIGN KEY (schedule_campaign_settings_id) REFERENCES marketing.schedule_campaign_settings(id));

-- Permissions

ALTER TABLE marketing.schedule_campaign_robot OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.schedule_campaign_robot TO kcell_test_user;


-- marketing.socioeconomic_status definition

-- Drop table

-- DROP TABLE marketing.socioeconomic_status;

CREATE TABLE marketing.socioeconomic_status ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, additional_income numeric(15, 2) NULL, education_level varchar(100) NULL, employer varchar(255) NULL, employment_type varchar(100) NULL, experience_years int4 NULL, industry varchar(100) NULL, monthly_income numeric(15, 2) NULL, "position" varchar(100) NULL, individual_client_id int8 NULL, CONSTRAINT socioeconomic_status_pkey PRIMARY KEY (id), CONSTRAINT fkif226qogp1s6be4vk1f8f3wi5 FOREIGN KEY (individual_client_id) REFERENCES marketing.individual_clients(id));

-- Permissions

ALTER TABLE marketing.socioeconomic_status OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.socioeconomic_status TO kcell_test_user;


-- marketing.addresses definition

-- Drop table

-- DROP TABLE marketing.addresses;

CREATE TABLE marketing.addresses ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, address varchar(255) NULL, address_type varchar(50) NULL, city varchar(100) NULL, country varchar(50) NULL, country_code varchar(3) NULL, is_verified bool NULL, notes text NULL, postal_code varchar(20) NULL, priority int4 NULL, region varchar(100) NULL, verification_date timestamptz(6) NULL, client_id int8 NULL, CONSTRAINT addresses_pkey PRIMARY KEY (id), CONSTRAINT fkrf3c1s9gxxx0wubkv5maokv9y FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));
CREATE INDEX idx_addresses_client ON marketing.addresses USING btree (client_id);

-- Permissions

ALTER TABLE marketing.addresses OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.addresses TO kcell_test_user;


-- marketing.authorized_persons definition

-- Drop table

-- DROP TABLE marketing.authorized_persons;

CREATE TABLE marketing.authorized_persons ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, authority_status varchar(50) NULL, contact_description varchar(255) NULL, contact_subtype varchar(255) NULL, contact_type varchar(255) NULL, document_date date NULL, document_number varchar(255) NULL, full_name varchar(255) NULL, is_primary bool NULL, order_number varchar(255) NULL, organizational_unit_id int8 NULL, person_id int4 NULL, person_organizational_unit_id int8 NULL, person_role varchar(100) NULL, "position" varchar(100) NULL, client_id int8 NULL, CONSTRAINT authorized_persons_pkey PRIMARY KEY (id), CONSTRAINT fkgmddllh7lr1hexxf0vso855c FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));

-- Permissions

ALTER TABLE marketing.authorized_persons OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.authorized_persons TO kcell_test_user;


-- marketing.banking_products definition

-- Drop table

-- DROP TABLE marketing.banking_products;

CREATE TABLE marketing.banking_products ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, account_number varchar(50) NULL, balance numeric(15, 2) NULL, credit_limit numeric(15, 2) NULL, currency varchar(3) NULL, end_date timestamptz(6) NULL, interest_rate numeric(5, 2) NULL, product_category varchar(50) NULL, product_details text NULL, product_type varchar(50) NULL, start_date timestamptz(6) NULL, status varchar(50) NULL, client_id int8 NULL, CONSTRAINT banking_products_pkey PRIMARY KEY (id), CONSTRAINT fkbayvykhmjh7p7brqkfoe88u6b FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));
CREATE INDEX idx_banking_products_client ON marketing.banking_products USING btree (client_id);
CREATE INDEX idx_banking_products_type ON marketing.banking_products USING btree (product_type);

-- Permissions

ALTER TABLE marketing.banking_products OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.banking_products TO kcell_test_user;


-- marketing.beneficiaries definition

-- Drop table

-- DROP TABLE marketing.beneficiaries;

CREATE TABLE marketing.beneficiaries ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, beneficiary_type varchar(2) NULL, bin varchar(12) NULL, birth_date timestamptz(6) NULL, citizenship varchar(50) NULL, direct_ownership bool NULL, document_number varchar(50) NULL, document_type varchar(50) NULL, email varchar(100) NULL, full_name varchar(255) NULL, iin varchar(12) NULL, ownership_share numeric(5, 2) NULL, phone varchar(20) NULL, legal_entity_client_id int8 NULL, CONSTRAINT beneficiaries_pkey PRIMARY KEY (id), CONSTRAINT fkj6qwilgehcg4fuyyajyahll87 FOREIGN KEY (legal_entity_client_id) REFERENCES marketing.legal_entity_clients(id));

-- Permissions

ALTER TABLE marketing.beneficiaries OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.beneficiaries TO kcell_test_user;


-- marketing.call_result definition

-- Drop table

-- DROP TABLE marketing.call_result;

CREATE TABLE marketing.call_result ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, "comment" varchar(255) NULL, contact_id int8 NULL, contact_type varchar(255) NULL, contract varchar(255) NULL, create_date timestamptz(6) NULL, duration int8 NULL, ended_at timestamptz(6) NULL, "language" varchar(255) NULL, outcome varchar(255) NULL, phone_number varchar(255) NULL, promise_date timestamptz(6) NULL, reason_delay varchar(255) NULL, responsible varchar(255) NULL, "result" varchar(255) NULL, started_at timestamptz(6) NULL, campaign_id int8 NULL, executed_campaign_id int8 NULL, client_id int8 NOT NULL, CONSTRAINT call_result_pkey PRIMARY KEY (id), CONSTRAINT fk80vbt3ij0bvj74i2ahvlpjjux FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));

-- Permissions

ALTER TABLE marketing.call_result OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.call_result TO kcell_test_user;


-- marketing.campaign_task definition

-- Drop table

-- DROP TABLE marketing.campaign_task;

CREATE TABLE marketing.campaign_task ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, collection varchar(255) NULL, contract_number varchar(255) NULL, dep_id varchar(255) NULL, is_active bool NULL, is_reactivate bool NULL, is_worked bool NULL, last_action_date timestamptz(6) NULL, priority int4 NULL, reactivation_datetime timestamptz(6) NULL, stage_of_task varchar(255) NULL, task_number varchar(255) NULL, task_seq int8 NULL, user_name varchar(255) NULL, client_id int8 NOT NULL, manager_id int8 NULL, schedule_campaign_id int8 NOT NULL, CONSTRAINT campaign_task_pkey PRIMARY KEY (id), CONSTRAINT fk7pnv0igy3ox2hguxd9v4vhmd4 FOREIGN KEY (manager_id) REFERENCES marketing.result_managers(id), CONSTRAINT fkawufca7limuyunfej6jkjt15j FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id), CONSTRAINT fkf7otpub3x8b4kmsfbn1lpd7qh FOREIGN KEY (schedule_campaign_id) REFERENCES marketing.schedule_campaign(id));

-- Permissions

ALTER TABLE marketing.campaign_task OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.campaign_task TO kcell_test_user;


-- marketing.collateral_objects definition

-- Drop table

-- DROP TABLE marketing.collateral_objects;

CREATE TABLE marketing.collateral_objects ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, appraiser_name varchar(255) NULL, collateral_code varchar(255) NULL, collateral_condition varchar(255) NULL, current_market_value varchar(255) NULL, initial_collateral_value numeric(15, 2) NULL, initial_market_value numeric(15, 2) NULL, monitoring_date timestamptz(6) NULL, monitoring_executor varchar(255) NULL, monitoring_notes varchar(255) NULL, organizational_unit_id int8 NULL, contract_id int8 NULL, CONSTRAINT collateral_objects_pkey PRIMARY KEY (id), CONSTRAINT fked8dl9skbbpf647i7iqn88mdc FOREIGN KEY (contract_id) REFERENCES marketing.contracts(id));

-- Permissions

ALTER TABLE marketing.collateral_objects OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.collateral_objects TO kcell_test_user;


-- marketing.collections definition

-- Drop table

-- DROP TABLE marketing.collections;

CREATE TABLE marketing.collections ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, collection_strategy varchar(100) NULL, contract_number varchar(50) NULL, contract_scan_url varchar(255) NULL, court_stage varchar(100) NULL, debt_amount numeric(15, 2) NULL, dpd int4 NULL, fine numeric(15, 2) NULL, history text NULL, last_contact_date timestamptz(6) NULL, lawyer_contact text NULL, manager_id uuid NULL, notification_status varchar(50) NULL, overdue_loan_interest numeric(15, 2) NULL, overdue_loan_principal numeric(15, 2) NULL, payment_plan text NULL, penalty numeric(15, 2) NULL, reason varchar(255) NULL, restructuring_date timestamptz(6) NULL, restructuring_plan text NULL, status varchar(50) NULL, taken_at timestamptz(6) NULL, credit_product_id int8 NULL, client_id int8 NULL, CONSTRAINT collections_pkey PRIMARY KEY (id), CONSTRAINT fk3nmvr2osae1jexa91bilm42fr FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id), CONSTRAINT fkks5y2lpxfuugs3xhg09dc7nso FOREIGN KEY (credit_product_id) REFERENCES marketing.banking_products(id));
CREATE INDEX idx_collections_client ON marketing.collections USING btree (client_id);
CREATE INDEX idx_collections_dpd ON marketing.collections USING btree (client_id, dpd);
CREATE INDEX idx_collections_status ON marketing.collections USING btree (status);

-- Permissions

ALTER TABLE marketing.collections OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.collections TO kcell_test_user;


-- marketing.communicate_result definition

-- Drop table

-- DROP TABLE marketing.communicate_result;

CREATE TABLE marketing.communicate_result ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, channel varchar(255) NULL, "comment" varchar(255) NULL, contact_id int8 NULL, create_date timestamptz(6) NULL, direction varchar(255) NULL, end_date timestamptz(6) NULL, promise_date timestamptz(6) NULL, responsible varchar(255) NULL, "result" text NULL, start_date timestamptz(6) NULL, contact_value varchar(255) NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, delivered_at timestamptz(6) NULL, message_type varchar(255) NULL, receiver_fio varchar(255) NULL, status varchar(255) NULL, subject varchar(255) NULL, task_number varchar(255) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, user_id uuid NULL, client_id int8 NOT NULL, client_contact_id int8 NOT NULL, CONSTRAINT communicate_result_pkey PRIMARY KEY (id), CONSTRAINT fk49od6nqncyqfm66latj81v2kg FOREIGN KEY (client_contact_id) REFERENCES marketing.contacts(id), CONSTRAINT fktrm4h4fub4o6dbc53y17hxrtq FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id));

-- Permissions

ALTER TABLE marketing.communicate_result OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.communicate_result TO kcell_test_user;


-- marketing.communications definition

-- Drop table

-- DROP TABLE marketing.communications;

CREATE TABLE marketing.communications ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, action_link text NULL, channel varchar(50) NULL, communication_date timestamptz(6) NULL, communication_type varchar(50) NULL, communications_group varchar(20) NULL, description text NULL, priority varchar(20) NULL, record_url text NULL, "result" text NULL, status varchar(30) NULL, banking_product_id int8 NULL, client_id int8 NULL, manager_id uuid NULL, CONSTRAINT communications_pkey PRIMARY KEY (id), CONSTRAINT fk4s0jyibosxapsma3482r854xp FOREIGN KEY (banking_product_id) REFERENCES marketing.banking_products(id), CONSTRAINT fkaxxegsuyggu54b20j7cj2y0co FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id), CONSTRAINT fkeyrxn15r0dev8j3cgeda861ks FOREIGN KEY (manager_id) REFERENCES marketing.managers_user(id));
CREATE INDEX idx_communications_client ON marketing.communications USING btree (client_id);
CREATE INDEX idx_communications_date ON marketing.communications USING btree (communication_date);
CREATE INDEX idx_communications_type ON marketing.communications USING btree (communication_type);

-- Permissions

ALTER TABLE marketing.communications OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.communications TO kcell_test_user;


-- marketing.contract_history definition

-- Drop table

-- DROP TABLE marketing.contract_history;

CREATE TABLE marketing.contract_history ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, archived_at timestamptz(6) NULL, bin_iin varchar(12) NULL, borrower_name varchar(255) NULL, business_type varchar(100) NULL, cli_acc_code varchar(255) NULL, client_account_code varchar(255) NULL, collection_status varchar(50) NULL, contract_end_date timestamptz(6) NULL, contract_number varchar(100) NULL, contract_state varchar(255) NULL, contract_status varchar(50) NULL, credit_amount numeric(15, 2) NULL, credit_product_name varchar(255) NULL, credit_purpose varchar(255) NULL, credit_term_months int4 NULL, currency varchar(3) NULL, damu_guarantees bool NULL, delay_days int4 NULL, fine_amount numeric(15, 2) NULL, general_agreement varchar(100) NULL, ifrs_portfolio_type varchar(100) NULL, ifrs_provision_interest numeric(15, 2) NULL, ifrs_provision_interest_balance numeric(15, 2) NULL, ifrs_provision_percentage numeric(5, 2) NULL, ifrs_provision_principal numeric(15, 2) NULL, ifrs_provision_principal_balance numeric(15, 2) NULL, interest_debt numeric(15, 2) NULL, interest_rate numeric(6, 2) NULL, issue_date timestamptz(6) NULL, manager_p varchar(255) NULL, organizational_unit_id int8 NULL, overdue_days_interest int4 NULL, overdue_days_principal int4 NULL, overdue_interest_debt numeric(15, 2) NULL, overdue_principal_debt numeric(15, 2) NULL, penalty_amount numeric(15, 2) NULL, principal_debt numeric(15, 2) NULL, product_code varchar(255) NULL, project_manager varchar(255) NULL, receivables_debt numeric(15, 2) NULL, repayment_date int4 NULL, restructuring_date timestamptz(6) NULL, statname varchar(255) NULL, client_id int8 NULL, contract_id int8 NULL, mark_id int8 NULL, CONSTRAINT contract_history_pkey PRIMARY KEY (id), CONSTRAINT fkceijaao8w6rl6133b8cmdqyso FOREIGN KEY (mark_id) REFERENCES marketing.marks(id), CONSTRAINT fkfgjftleol9vcsf04vay7chom6 FOREIGN KEY (client_id) REFERENCES marketing.clients(client_id), CONSTRAINT fkrf22gfq8wpe4qvpxyqnuv6mct FOREIGN KEY (contract_id) REFERENCES marketing.contracts(id));

-- Permissions

ALTER TABLE marketing.contract_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.contract_history TO kcell_test_user;


-- marketing.credit_history_individual definition

-- Drop table

-- DROP TABLE marketing.credit_history_individual;

CREATE TABLE marketing.credit_history_individual ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, amount numeric(15, 2) NULL, close_date timestamptz(6) NULL, credit_type varchar(100) NULL, currency varchar(3) NULL, interest_rate numeric(5, 2) NULL, issue_date timestamptz(6) NULL, status varchar(50) NULL, term_months int4 NULL, credit_id int8 NULL, individual_client_id int8 NULL, CONSTRAINT credit_history_individual_pkey PRIMARY KEY (id), CONSTRAINT fk6urm7drt3oy0idcuisv0y4s2d FOREIGN KEY (individual_client_id) REFERENCES marketing.individual_clients(id), CONSTRAINT fke80ciu5tyrgfmbsxye02ueydi FOREIGN KEY (credit_id) REFERENCES marketing.banking_products(id));
CREATE INDEX idx_credit_history_individual ON marketing.credit_history_individual USING btree (individual_client_id);

-- Permissions

ALTER TABLE marketing.credit_history_individual OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.credit_history_individual TO kcell_test_user;


-- marketing.financial_indicators definition

-- Drop table

-- DROP TABLE marketing.financial_indicators;

CREATE TABLE marketing.financial_indicators ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, annual_turnover numeric(15, 2) NULL, debt_load numeric(15, 2) NULL, financial_risk varchar(50) NULL, gross_profit numeric(15, 2) NULL, net_profit numeric(15, 2) NULL, "year" int4 NULL, legal_entity_client_id int8 NULL, CONSTRAINT financial_indicators_pkey PRIMARY KEY (id), CONSTRAINT fkp2u8tnfsvgkev3poh08k8rk3a FOREIGN KEY (legal_entity_client_id) REFERENCES marketing.legal_entity_clients(id));

-- Permissions

ALTER TABLE marketing.financial_indicators OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.financial_indicators TO kcell_test_user;


-- marketing.guarantors definition

-- Drop table

-- DROP TABLE marketing.guarantors;

CREATE TABLE marketing.guarantors ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, bin varchar(12) NULL, document_date timestamptz(6) NULL, document_number varchar(50) NULL, document_scan_url varchar(255) NULL, document_type varchar(50) NULL, full_name varchar(255) NULL, guarantor_type varchar(2) NULL, iin varchar(12) NULL, phone varchar(20) NULL, legal_entity_client_id int8 NULL, CONSTRAINT guarantors_pkey PRIMARY KEY (id), CONSTRAINT fkmnifqijy8kdo75gv1ex02aaor FOREIGN KEY (legal_entity_client_id) REFERENCES marketing.legal_entity_clients(id));

-- Permissions

ALTER TABLE marketing.guarantors OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.guarantors TO kcell_test_user;


-- marketing.collection_tasks definition

-- Drop table

-- DROP TABLE marketing.collection_tasks;

CREATE TABLE marketing.collection_tasks ( id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, created_at timestamptz(6) NULL, created_by uuid NULL, deleted_at timestamptz(6) NULL, updated_at timestamptz(6) NULL, updated_by uuid NULL, appprove_date timestamptz(6) NULL, approver_name varchar(255) NULL, "comment" varchar(255) NULL, new_strategy varchar(255) NULL, old_strategy varchar(255) NULL, sender_name varchar(255) NULL, status varchar(255) NULL, collection_id int8 NULL, CONSTRAINT collection_tasks_pkey PRIMARY KEY (id), CONSTRAINT fkq2l8ux1dem6banuaqw85kwj1w FOREIGN KEY (collection_id) REFERENCES marketing.collections(id));

-- Permissions

ALTER TABLE marketing.collection_tasks OWNER TO kcell_test_user;
GRANT ALL ON TABLE marketing.collection_tasks TO kcell_test_user;




-- Permissions

GRANT ALL ON SCHEMA marketing TO kcell_test_user;