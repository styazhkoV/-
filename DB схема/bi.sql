-- DROP SCHEMA bi;

CREATE SCHEMA bi AUTHORIZATION kcell_test_user;

-- DROP TYPE bi."emaildeliverytype";

CREATE TYPE bi."emaildeliverytype" AS ENUM (
	'attachment',
	'inline');

-- DROP TYPE bi."objecttype";

CREATE TYPE bi."objecttype" AS ENUM (
	'query',
	'chart',
	'dashboard',
	'dataset');

-- DROP TYPE bi."sliceemailreportformat";

CREATE TYPE bi."sliceemailreportformat" AS ENUM (
	'visualization',
	'data');

-- DROP TYPE bi."tagtype";

CREATE TYPE bi."tagtype" AS ENUM (
	'custom',
	'type',
	'owner',
	'favorited_by');

-- DROP SEQUENCE bi.ab_permission_id_seq;

CREATE SEQUENCE bi.ab_permission_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.ab_permission_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.ab_permission_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.ab_permission_view_id_seq;

CREATE SEQUENCE bi.ab_permission_view_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.ab_permission_view_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.ab_permission_view_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.ab_permission_view_role_id_seq;

CREATE SEQUENCE bi.ab_permission_view_role_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.ab_permission_view_role_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.ab_permission_view_role_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.ab_register_user_id_seq;

CREATE SEQUENCE bi.ab_register_user_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.ab_register_user_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.ab_register_user_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.ab_role_id_seq;

CREATE SEQUENCE bi.ab_role_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.ab_role_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.ab_role_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.ab_user_id_seq;

CREATE SEQUENCE bi.ab_user_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.ab_user_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.ab_user_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.ab_user_role_id_seq;

CREATE SEQUENCE bi.ab_user_role_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.ab_user_role_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.ab_user_role_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.ab_view_menu_id_seq;

CREATE SEQUENCE bi.ab_view_menu_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.ab_view_menu_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.ab_view_menu_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.annotation_id_seq;

CREATE SEQUENCE bi.annotation_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.annotation_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.annotation_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.annotation_layer_id_seq;

CREATE SEQUENCE bi.annotation_layer_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.annotation_layer_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.annotation_layer_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.cache_keys_id_seq;

CREATE SEQUENCE bi.cache_keys_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.cache_keys_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.cache_keys_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.css_templates_id_seq;

CREATE SEQUENCE bi.css_templates_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.css_templates_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.css_templates_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.dashboard_roles_id_seq;

CREATE SEQUENCE bi.dashboard_roles_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.dashboard_roles_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.dashboard_roles_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.dashboard_slices_id_seq;

CREATE SEQUENCE bi.dashboard_slices_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.dashboard_slices_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.dashboard_slices_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.dashboard_user_id_seq;

CREATE SEQUENCE bi.dashboard_user_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.dashboard_user_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.dashboard_user_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.dashboards_id_seq;

CREATE SEQUENCE bi.dashboards_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.dashboards_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.dashboards_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.database_user_oauth2_tokens_id_seq;

CREATE SEQUENCE bi.database_user_oauth2_tokens_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.database_user_oauth2_tokens_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.database_user_oauth2_tokens_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.dbs_id_seq;

CREATE SEQUENCE bi.dbs_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.dbs_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.dbs_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.dynamic_plugin_id_seq;

CREATE SEQUENCE bi.dynamic_plugin_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.dynamic_plugin_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.dynamic_plugin_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.favstar_id_seq;

CREATE SEQUENCE bi.favstar_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.favstar_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.favstar_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.key_value_id_seq;

CREATE SEQUENCE bi.key_value_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.key_value_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.key_value_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.keyvalue_id_seq;

CREATE SEQUENCE bi.keyvalue_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.keyvalue_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.keyvalue_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.logs_id_seq;

CREATE SEQUENCE bi.logs_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.logs_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.logs_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.query_id_seq;

CREATE SEQUENCE bi.query_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.query_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.query_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.report_execution_log_id_seq;

CREATE SEQUENCE bi.report_execution_log_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.report_execution_log_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.report_execution_log_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.report_recipient_id_seq;

CREATE SEQUENCE bi.report_recipient_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.report_recipient_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.report_recipient_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.report_schedule_id_seq;

CREATE SEQUENCE bi.report_schedule_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.report_schedule_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.report_schedule_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.report_schedule_user_id_seq;

CREATE SEQUENCE bi.report_schedule_user_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.report_schedule_user_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.report_schedule_user_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.rls_filter_roles_id_seq;

CREATE SEQUENCE bi.rls_filter_roles_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.rls_filter_roles_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.rls_filter_roles_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.rls_filter_tables_id_seq;

CREATE SEQUENCE bi.rls_filter_tables_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.rls_filter_tables_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.rls_filter_tables_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.row_level_security_filters_id_seq;

CREATE SEQUENCE bi.row_level_security_filters_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.row_level_security_filters_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.row_level_security_filters_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.saved_query_id_seq;

CREATE SEQUENCE bi.saved_query_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.saved_query_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.saved_query_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.slice_user_id_seq;

CREATE SEQUENCE bi.slice_user_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.slice_user_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.slice_user_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.slices_id_seq;

CREATE SEQUENCE bi.slices_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.slices_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.slices_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.sql_metrics_id_seq;

CREATE SEQUENCE bi.sql_metrics_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.sql_metrics_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.sql_metrics_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.sqlatable_user_id_seq;

CREATE SEQUENCE bi.sqlatable_user_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.sqlatable_user_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.sqlatable_user_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.ssh_tunnels_id_seq;

CREATE SEQUENCE bi.ssh_tunnels_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.ssh_tunnels_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.ssh_tunnels_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.tab_state_id_seq;

CREATE SEQUENCE bi.tab_state_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.tab_state_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.tab_state_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.table_columns_id_seq;

CREATE SEQUENCE bi.table_columns_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.table_columns_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.table_columns_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.table_schema_id_seq;

CREATE SEQUENCE bi.table_schema_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.table_schema_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.table_schema_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.tables_id_seq;

CREATE SEQUENCE bi.tables_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.tables_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.tables_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.tag_id_seq;

CREATE SEQUENCE bi.tag_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.tag_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.tag_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.tagged_object_id_seq;

CREATE SEQUENCE bi.tagged_object_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.tagged_object_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.tagged_object_id_seq TO kcell_test_user;

-- DROP SEQUENCE bi.user_attribute_id_seq;

CREATE SEQUENCE bi.user_attribute_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE bi.user_attribute_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE bi.user_attribute_id_seq TO kcell_test_user;
-- bi.ab_permission definition

-- Drop table

-- DROP TABLE bi.ab_permission;

CREATE TABLE bi.ab_permission ( id int4 NOT NULL, "name" varchar(100) NOT NULL, CONSTRAINT ab_permission_name_key UNIQUE (name), CONSTRAINT ab_permission_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE bi.ab_permission OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.ab_permission TO kcell_test_user;


-- bi.ab_register_user definition

-- Drop table

-- DROP TABLE bi.ab_register_user;

CREATE TABLE bi.ab_register_user ( id int4 NOT NULL, first_name varchar(64) NOT NULL, last_name varchar(64) NOT NULL, username varchar(64) NOT NULL, "password" varchar(256) NULL, email varchar(64) NOT NULL, registration_date timestamp NULL, registration_hash varchar(256) NULL, CONSTRAINT ab_register_user_pkey PRIMARY KEY (id), CONSTRAINT ab_register_user_username_key UNIQUE (username));

-- Permissions

ALTER TABLE bi.ab_register_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.ab_register_user TO kcell_test_user;


-- bi.ab_role definition

-- Drop table

-- DROP TABLE bi.ab_role;

CREATE TABLE bi.ab_role ( id int4 NOT NULL, "name" varchar(64) NOT NULL, CONSTRAINT ab_role_name_key UNIQUE (name), CONSTRAINT ab_role_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE bi.ab_role OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.ab_role TO kcell_test_user;


-- bi.ab_view_menu definition

-- Drop table

-- DROP TABLE bi.ab_view_menu;

CREATE TABLE bi.ab_view_menu ( id int4 NOT NULL, "name" varchar(255) NOT NULL, CONSTRAINT ab_view_menu_name_key UNIQUE (name), CONSTRAINT ab_view_menu_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE bi.ab_view_menu OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.ab_view_menu TO kcell_test_user;


-- bi.alembic_version definition

-- Drop table

-- DROP TABLE bi.alembic_version;

CREATE TABLE bi.alembic_version ( version_num varchar(32) NOT NULL, CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num));

-- Permissions

ALTER TABLE bi.alembic_version OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.alembic_version TO kcell_test_user;


-- bi.cache_keys definition

-- Drop table

-- DROP TABLE bi.cache_keys;

CREATE TABLE bi.cache_keys ( id serial4 NOT NULL, cache_key varchar(256) NOT NULL, cache_timeout int4 NULL, datasource_uid varchar(64) NOT NULL, created_on timestamp NULL, CONSTRAINT cache_keys_pkey PRIMARY KEY (id));
CREATE INDEX ix_cache_keys_datasource_uid ON bi.cache_keys USING btree (datasource_uid);

-- Permissions

ALTER TABLE bi.cache_keys OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.cache_keys TO kcell_test_user;


-- bi.keyvalue definition

-- Drop table

-- DROP TABLE bi.keyvalue;

CREATE TABLE bi.keyvalue ( id serial4 NOT NULL, value text NOT NULL, CONSTRAINT keyvalue_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE bi.keyvalue OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.keyvalue TO kcell_test_user;


-- bi.ab_permission_view definition

-- Drop table

-- DROP TABLE bi.ab_permission_view;

CREATE TABLE bi.ab_permission_view ( id int4 NOT NULL, permission_id int4 NULL, view_menu_id int4 NULL, CONSTRAINT ab_permission_view_permission_id_view_menu_id_key UNIQUE (permission_id, view_menu_id), CONSTRAINT ab_permission_view_pkey PRIMARY KEY (id), CONSTRAINT ab_permission_view_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES bi.ab_permission(id), CONSTRAINT ab_permission_view_view_menu_id_fkey FOREIGN KEY (view_menu_id) REFERENCES bi.ab_view_menu(id));
CREATE INDEX idx_permission_id ON bi.ab_permission_view USING btree (permission_id);
CREATE INDEX idx_view_menu_id ON bi.ab_permission_view USING btree (view_menu_id);

-- Permissions

ALTER TABLE bi.ab_permission_view OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.ab_permission_view TO kcell_test_user;


-- bi.ab_permission_view_role definition

-- Drop table

-- DROP TABLE bi.ab_permission_view_role;

CREATE TABLE bi.ab_permission_view_role ( id int4 NOT NULL, permission_view_id int4 NULL, role_id int4 NULL, CONSTRAINT ab_permission_view_role_permission_view_id_role_id_key UNIQUE (permission_view_id, role_id), CONSTRAINT ab_permission_view_role_pkey PRIMARY KEY (id), CONSTRAINT ab_permission_view_role_permission_view_id_fkey FOREIGN KEY (permission_view_id) REFERENCES bi.ab_permission_view(id), CONSTRAINT ab_permission_view_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES bi.ab_role(id));
CREATE INDEX idx_permission_view_id ON bi.ab_permission_view_role USING btree (permission_view_id);
CREATE INDEX idx_role_id ON bi.ab_permission_view_role USING btree (role_id);

-- Permissions

ALTER TABLE bi.ab_permission_view_role OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.ab_permission_view_role TO kcell_test_user;


-- bi.ab_user definition

-- Drop table

-- DROP TABLE bi.ab_user;

CREATE TABLE bi.ab_user ( id int4 NOT NULL, first_name varchar(64) NOT NULL, last_name varchar(64) NOT NULL, username varchar(64) NOT NULL, "password" varchar(256) NULL, active bool NULL, email varchar(320) NOT NULL, last_login timestamp NULL, login_count int4 NULL, fail_login_count int4 NULL, created_on timestamp NULL, changed_on timestamp NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, CONSTRAINT ab_user_email_key UNIQUE (email), CONSTRAINT ab_user_pkey PRIMARY KEY (id), CONSTRAINT ab_user_username_key UNIQUE (username), CONSTRAINT ab_user_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT ab_user_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.ab_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.ab_user TO kcell_test_user;


-- bi.ab_user_role definition

-- Drop table

-- DROP TABLE bi.ab_user_role;

CREATE TABLE bi.ab_user_role ( id int4 NOT NULL, user_id int4 NULL, role_id int4 NULL, CONSTRAINT ab_user_role_pkey PRIMARY KEY (id), CONSTRAINT ab_user_role_user_id_role_id_key UNIQUE (user_id, role_id), CONSTRAINT ab_user_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES bi.ab_role(id), CONSTRAINT ab_user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.ab_user_role OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.ab_user_role TO kcell_test_user;


-- bi.annotation_layer definition

-- Drop table

-- DROP TABLE bi.annotation_layer;

CREATE TABLE bi.annotation_layer ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, "name" varchar(250) NULL, descr text NULL, changed_by_fk int4 NULL, created_by_fk int4 NULL, CONSTRAINT annotation_layer_pkey PRIMARY KEY (id), CONSTRAINT annotation_layer_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT annotation_layer_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.annotation_layer OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.annotation_layer TO kcell_test_user;


-- bi.css_templates definition

-- Drop table

-- DROP TABLE bi.css_templates;

CREATE TABLE bi.css_templates ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, template_name varchar(250) NULL, css text NULL, changed_by_fk int4 NULL, created_by_fk int4 NULL, "uuid" uuid NULL, CONSTRAINT css_templates_pkey PRIMARY KEY (id), CONSTRAINT css_templates_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT css_templates_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.css_templates OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.css_templates TO kcell_test_user;


-- bi.dashboards definition

-- Drop table

-- DROP TABLE bi.dashboards;

CREATE TABLE bi.dashboards ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, dashboard_title varchar(500) NULL, position_json text NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, css text NULL, description text NULL, slug varchar(255) NULL, json_metadata text NULL, published bool NULL, "uuid" uuid NULL, certified_by text NULL, certification_details text NULL, is_managed_externally bool DEFAULT false NOT NULL, external_url text NULL, CONSTRAINT dashboards_pkey PRIMARY KEY (id), CONSTRAINT idx_unique_slug UNIQUE (slug), CONSTRAINT uq_dashboards_uuid UNIQUE (uuid), CONSTRAINT dashboards_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT dashboards_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.dashboards OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.dashboards TO kcell_test_user;


-- bi.dbs definition

-- Drop table

-- DROP TABLE bi.dbs;

CREATE TABLE bi.dbs ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, database_name varchar(250) NOT NULL, sqlalchemy_uri varchar(1024) NOT NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, "password" bytea NULL, cache_timeout int4 NULL, extra text NULL, select_as_create_table_as bool NULL, allow_ctas bool NULL, expose_in_sqllab bool NULL, force_ctas_schema varchar(250) NULL, allow_run_async bool NULL, allow_dml bool NULL, verbose_name varchar(250) NULL, impersonate_user bool NULL, allow_file_upload bool DEFAULT true NOT NULL, encrypted_extra bytea NULL, server_cert bytea NULL, allow_cvas bool NULL, "uuid" uuid NULL, configuration_method varchar(255) DEFAULT 'sqlalchemy_form'::character varying NULL, is_managed_externally bool DEFAULT false NOT NULL, external_url text NULL, CONSTRAINT dbs_database_name_key UNIQUE (database_name), CONSTRAINT dbs_pkey PRIMARY KEY (id), CONSTRAINT dbs_verbose_name_key UNIQUE (verbose_name), CONSTRAINT uq_dbs_uuid UNIQUE (uuid), CONSTRAINT dbs_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT dbs_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.dbs OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.dbs TO kcell_test_user;


-- bi.dynamic_plugin definition

-- Drop table

-- DROP TABLE bi.dynamic_plugin;

CREATE TABLE bi.dynamic_plugin ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, "name" varchar(50) NOT NULL, "key" varchar(50) NOT NULL, bundle_url varchar(1000) NOT NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, CONSTRAINT dynamic_plugin_key_key UNIQUE (key), CONSTRAINT dynamic_plugin_name_key UNIQUE (name), CONSTRAINT dynamic_plugin_pkey PRIMARY KEY (id), CONSTRAINT dynamic_plugin_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT dynamic_plugin_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.dynamic_plugin OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.dynamic_plugin TO kcell_test_user;


-- bi.embedded_dashboards definition

-- Drop table

-- DROP TABLE bi.embedded_dashboards;

CREATE TABLE bi.embedded_dashboards ( created_on timestamp NULL, changed_on timestamp NULL, allow_domain_list text NULL, "uuid" uuid NULL, dashboard_id int4 NOT NULL, changed_by_fk int4 NULL, created_by_fk int4 NULL, CONSTRAINT fk_embedded_dashboards_dashboard_id_dashboards FOREIGN KEY (dashboard_id) REFERENCES bi.dashboards(id) ON DELETE CASCADE);

-- Permissions

ALTER TABLE bi.embedded_dashboards OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.embedded_dashboards TO kcell_test_user;


-- bi.favstar definition

-- Drop table

-- DROP TABLE bi.favstar;

CREATE TABLE bi.favstar ( id serial4 NOT NULL, user_id int4 NULL, class_name varchar(50) NULL, obj_id int4 NULL, dttm timestamp NULL, "uuid" uuid NULL, CONSTRAINT favstar_pkey PRIMARY KEY (id), CONSTRAINT favstar_user_id_fkey FOREIGN KEY (user_id) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.favstar OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.favstar TO kcell_test_user;


-- bi.key_value definition

-- Drop table

-- DROP TABLE bi.key_value;

CREATE TABLE bi.key_value ( id serial4 NOT NULL, resource varchar(32) NOT NULL, value bytea NOT NULL, "uuid" uuid NULL, created_on timestamp NULL, created_by_fk int4 NULL, changed_on timestamp NULL, changed_by_fk int4 NULL, expires_on timestamp NULL, CONSTRAINT key_value_pkey PRIMARY KEY (id), CONSTRAINT key_value_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT key_value_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));
CREATE INDEX ix_key_value_expires_on ON bi.key_value USING btree (expires_on);
CREATE UNIQUE INDEX ix_key_value_uuid ON bi.key_value USING btree (uuid);

-- Permissions

ALTER TABLE bi.key_value OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.key_value TO kcell_test_user;


-- bi.logs definition

-- Drop table

-- DROP TABLE bi.logs;

CREATE TABLE bi.logs ( id serial4 NOT NULL, "action" varchar(512) NULL, user_id int4 NULL, "json" text NULL, dttm timestamp NULL, dashboard_id int4 NULL, slice_id int4 NULL, duration_ms int4 NULL, referrer varchar(1024) NULL, CONSTRAINT logs_pkey PRIMARY KEY (id), CONSTRAINT logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES bi.ab_user(id));
CREATE INDEX ix_logs_user_id_dttm ON bi.logs USING btree (user_id, dttm);

-- Permissions

ALTER TABLE bi.logs OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.logs TO kcell_test_user;


-- bi.query definition

-- Drop table

-- DROP TABLE bi.query;

CREATE TABLE bi.query ( id serial4 NOT NULL, client_id varchar(11) NOT NULL, database_id int4 NOT NULL, tmp_table_name varchar(256) NULL, tab_name varchar(256) NULL, sql_editor_id varchar(256) NULL, user_id int4 NULL, status varchar(16) NULL, "schema" varchar(256) NULL, "sql" text NULL, select_sql text NULL, executed_sql text NULL, "limit" int4 NULL, select_as_cta bool NULL, select_as_cta_used bool NULL, progress int4 NULL, "rows" int4 NULL, error_message text NULL, start_time numeric(20, 6) NULL, changed_on timestamp NULL, end_time numeric(20, 6) NULL, results_key varchar(64) NULL, start_running_time numeric(20, 6) NULL, end_result_backend_time numeric(20, 6) NULL, tracking_url text NULL, extra_json text NULL, tmp_schema_name varchar(256) NULL, ctas_method varchar(16) NULL, limiting_factor varchar(255) DEFAULT 'UNKNOWN'::character varying NULL, "catalog" varchar(256) NULL, CONSTRAINT client_id UNIQUE (client_id), CONSTRAINT query_pkey PRIMARY KEY (id), CONSTRAINT query_database_id_fkey FOREIGN KEY (database_id) REFERENCES bi.dbs(id), CONSTRAINT query_user_id_fkey FOREIGN KEY (user_id) REFERENCES bi.ab_user(id));
CREATE INDEX ix_query_results_key ON bi.query USING btree (results_key);
CREATE INDEX ix_sql_editor_id ON bi.query USING btree (sql_editor_id);
CREATE INDEX ti_user_id_changed_on ON bi.query USING btree (user_id, changed_on);

-- Permissions

ALTER TABLE bi.query OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.query TO kcell_test_user;


-- bi.row_level_security_filters definition

-- Drop table

-- DROP TABLE bi.row_level_security_filters;

CREATE TABLE bi.row_level_security_filters ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, clause text NOT NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, filter_type varchar(255) NULL, group_key varchar(255) NULL, "name" varchar(255) NOT NULL, description text NULL, CONSTRAINT row_level_security_filters_pkey PRIMARY KEY (id), CONSTRAINT uq_rls_name UNIQUE (name), CONSTRAINT row_level_security_filters_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT row_level_security_filters_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));
CREATE INDEX ix_row_level_security_filters_filter_type ON bi.row_level_security_filters USING btree (filter_type);

-- Permissions

ALTER TABLE bi.row_level_security_filters OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.row_level_security_filters TO kcell_test_user;


-- bi.saved_query definition

-- Drop table

-- DROP TABLE bi.saved_query;

CREATE TABLE bi.saved_query ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, user_id int4 NULL, db_id int4 NULL, "label" varchar(256) NULL, "schema" varchar(128) NULL, "sql" text NULL, description text NULL, changed_by_fk int4 NULL, created_by_fk int4 NULL, extra_json text NULL, last_run timestamp NULL, "rows" int4 NULL, "uuid" uuid NULL, template_parameters text NULL, "catalog" varchar(256) NULL, CONSTRAINT saved_query_pkey PRIMARY KEY (id), CONSTRAINT uq_saved_query_uuid UNIQUE (uuid), CONSTRAINT saved_query_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT saved_query_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT saved_query_db_id_fkey FOREIGN KEY (db_id) REFERENCES bi.dbs(id), CONSTRAINT saved_query_user_id_fkey FOREIGN KEY (user_id) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.saved_query OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.saved_query TO kcell_test_user;


-- bi.slices definition

-- Drop table

-- DROP TABLE bi.slices;

CREATE TABLE bi.slices ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, slice_name varchar(250) NULL, datasource_type varchar(200) NULL, datasource_name varchar(2000) NULL, viz_type varchar(250) NULL, params text NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, description text NULL, cache_timeout int4 NULL, perm varchar(2000) NULL, datasource_id int4 NULL, schema_perm varchar(1000) NULL, "uuid" uuid NULL, query_context text NULL, last_saved_at timestamp NULL, last_saved_by_fk int4 NULL, certified_by text NULL, certification_details text NULL, is_managed_externally bool DEFAULT false NOT NULL, external_url text NULL, catalog_perm varchar(1000) NULL, CONSTRAINT ck_chart_datasource CHECK (((datasource_type)::text = 'table'::text)), CONSTRAINT slices_pkey PRIMARY KEY (id), CONSTRAINT uq_slices_uuid UNIQUE (uuid), CONSTRAINT slices_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT slices_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT slices_last_saved_by_fk FOREIGN KEY (last_saved_by_fk) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.slices OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.slices TO kcell_test_user;


-- bi.ssh_tunnels definition

-- Drop table

-- DROP TABLE bi.ssh_tunnels;

CREATE TABLE bi.ssh_tunnels ( created_on timestamp NULL, changed_on timestamp NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, extra_json text NULL, "uuid" uuid NULL, id serial4 NOT NULL, database_id int4 NULL, server_address varchar(256) NULL, server_port int4 NULL, username bytea NULL, "password" bytea NULL, private_key bytea NULL, private_key_password bytea NULL, CONSTRAINT ssh_tunnels_pkey PRIMARY KEY (id), CONSTRAINT ssh_tunnels_database_id_fkey FOREIGN KEY (database_id) REFERENCES bi.dbs(id));
CREATE UNIQUE INDEX ix_ssh_tunnels_database_id ON bi.ssh_tunnels USING btree (database_id);
CREATE UNIQUE INDEX ix_ssh_tunnels_uuid ON bi.ssh_tunnels USING btree (uuid);

-- Permissions

ALTER TABLE bi.ssh_tunnels OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.ssh_tunnels TO kcell_test_user;


-- bi.tab_state definition

-- Drop table

-- DROP TABLE bi.tab_state;

CREATE TABLE bi.tab_state ( created_on timestamp NULL, changed_on timestamp NULL, extra_json text NULL, id serial4 NOT NULL, user_id int4 NULL, "label" varchar(256) NULL, active bool NULL, database_id int4 NULL, "schema" varchar(256) NULL, "sql" text NULL, query_limit int4 NULL, latest_query_id varchar(11) NULL, autorun bool NOT NULL, template_params text NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, hide_left_bar bool DEFAULT false NOT NULL, saved_query_id int4 NULL, "catalog" varchar(256) NULL, CONSTRAINT tab_state_pkey PRIMARY KEY (id), CONSTRAINT saved_query_id FOREIGN KEY (saved_query_id) REFERENCES bi.saved_query(id) ON DELETE SET NULL, CONSTRAINT tab_state_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT tab_state_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT tab_state_database_id_fkey FOREIGN KEY (database_id) REFERENCES bi.dbs(id) ON DELETE CASCADE, CONSTRAINT tab_state_latest_query_id_fkey FOREIGN KEY (latest_query_id) REFERENCES bi.query(client_id) ON DELETE SET NULL, CONSTRAINT tab_state_user_id_fkey FOREIGN KEY (user_id) REFERENCES bi.ab_user(id));
CREATE UNIQUE INDEX ix_tab_state_id ON bi.tab_state USING btree (id);

-- Permissions

ALTER TABLE bi.tab_state OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.tab_state TO kcell_test_user;


-- bi.table_schema definition

-- Drop table

-- DROP TABLE bi.table_schema;

CREATE TABLE bi.table_schema ( created_on timestamp NULL, changed_on timestamp NULL, extra_json text NULL, id serial4 NOT NULL, tab_state_id int4 NULL, database_id int4 NOT NULL, "schema" varchar(256) NULL, "table" varchar(256) NULL, description text NULL, expanded bool NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, "catalog" varchar(256) NULL, CONSTRAINT table_schema_pkey PRIMARY KEY (id), CONSTRAINT table_schema_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT table_schema_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT table_schema_database_id_fkey FOREIGN KEY (database_id) REFERENCES bi.dbs(id) ON DELETE CASCADE, CONSTRAINT table_schema_tab_state_id_fkey FOREIGN KEY (tab_state_id) REFERENCES bi.tab_state(id) ON DELETE CASCADE);
CREATE UNIQUE INDEX ix_table_schema_id ON bi.table_schema USING btree (id);

-- Permissions

ALTER TABLE bi.table_schema OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.table_schema TO kcell_test_user;


-- bi."tables" definition

-- Drop table

-- DROP TABLE bi."tables";

CREATE TABLE bi."tables" ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, table_name varchar(250) NOT NULL, main_dttm_col varchar(250) NULL, default_endpoint text NULL, database_id int4 NOT NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, "offset" int4 NULL, description text NULL, is_featured bool NULL, cache_timeout int4 NULL, "schema" varchar(255) NULL, "sql" text NULL, params text NULL, perm varchar(1000) NULL, filter_select_enabled bool NULL, fetch_values_predicate text NULL, is_sqllab_view bool DEFAULT false NULL, template_params text NULL, schema_perm varchar(1000) NULL, extra text NULL, "uuid" uuid NULL, is_managed_externally bool DEFAULT false NOT NULL, external_url text NULL, normalize_columns bool DEFAULT false NULL, always_filter_main_dttm bool DEFAULT false NULL, "catalog" varchar(256) NULL, catalog_perm varchar(1000) NULL, CONSTRAINT _customer_location_uc UNIQUE (database_id, schema, table_name), CONSTRAINT tables_pkey PRIMARY KEY (id), CONSTRAINT uq_tables_uuid UNIQUE (uuid), CONSTRAINT tables_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT tables_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT tables_database_id_fkey FOREIGN KEY (database_id) REFERENCES bi.dbs(id));

-- Permissions

ALTER TABLE bi."tables" OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi."tables" TO kcell_test_user;


-- bi.tag definition

-- Drop table

-- DROP TABLE bi.tag;

CREATE TABLE bi.tag ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, "name" varchar(250) NULL, "type" varchar NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, description text NULL, CONSTRAINT tag_name_key UNIQUE (name), CONSTRAINT tag_pkey PRIMARY KEY (id), CONSTRAINT tag_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT tag_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.tag OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.tag TO kcell_test_user;


-- bi.tagged_object definition

-- Drop table

-- DROP TABLE bi.tagged_object;

CREATE TABLE bi.tagged_object ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, tag_id int4 NULL, object_id int4 NULL, object_type varchar NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, CONSTRAINT tagged_object_pkey PRIMARY KEY (id), CONSTRAINT uix_tagged_object UNIQUE (tag_id, object_id, object_type), CONSTRAINT tagged_object_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT tagged_object_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT tagged_object_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES bi.tag(id));
CREATE INDEX ix_tagged_object_object_id ON bi.tagged_object USING btree (object_id);

-- Permissions

ALTER TABLE bi.tagged_object OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.tagged_object TO kcell_test_user;


-- bi.user_attribute definition

-- Drop table

-- DROP TABLE bi.user_attribute;

CREATE TABLE bi.user_attribute ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, user_id int4 NULL, welcome_dashboard_id int4 NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, avatar_url varchar(100) NULL, CONSTRAINT user_attribute_pkey PRIMARY KEY (id), CONSTRAINT user_attribute_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT user_attribute_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT user_attribute_user_id_fkey FOREIGN KEY (user_id) REFERENCES bi.ab_user(id), CONSTRAINT user_attribute_welcome_dashboard_id_fkey FOREIGN KEY (welcome_dashboard_id) REFERENCES bi.dashboards(id));

-- Permissions

ALTER TABLE bi.user_attribute OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.user_attribute TO kcell_test_user;


-- bi.user_favorite_tag definition

-- Drop table

-- DROP TABLE bi.user_favorite_tag;

CREATE TABLE bi.user_favorite_tag ( user_id int4 NOT NULL, tag_id int4 NOT NULL, CONSTRAINT user_favorite_tag_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES bi.tag(id), CONSTRAINT user_favorite_tag_user_id_fkey FOREIGN KEY (user_id) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.user_favorite_tag OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.user_favorite_tag TO kcell_test_user;


-- bi.annotation definition

-- Drop table

-- DROP TABLE bi.annotation;

CREATE TABLE bi.annotation ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, start_dttm timestamp NULL, end_dttm timestamp NULL, layer_id int4 NULL, short_descr varchar(500) NULL, long_descr text NULL, changed_by_fk int4 NULL, created_by_fk int4 NULL, json_metadata text NULL, CONSTRAINT annotation_pkey PRIMARY KEY (id), CONSTRAINT annotation_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT annotation_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT annotation_layer_id_fkey FOREIGN KEY (layer_id) REFERENCES bi.annotation_layer(id));
CREATE INDEX ti_dag_state ON bi.annotation USING btree (layer_id, start_dttm, end_dttm);

-- Permissions

ALTER TABLE bi.annotation OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.annotation TO kcell_test_user;


-- bi.dashboard_roles definition

-- Drop table

-- DROP TABLE bi.dashboard_roles;

CREATE TABLE bi.dashboard_roles ( id serial4 NOT NULL, role_id int4 NOT NULL, dashboard_id int4 NULL, CONSTRAINT dashboard_roles_pkey PRIMARY KEY (id), CONSTRAINT fk_dashboard_roles_dashboard_id_dashboards FOREIGN KEY (dashboard_id) REFERENCES bi.dashboards(id) ON DELETE CASCADE, CONSTRAINT fk_dashboard_roles_role_id_ab_role FOREIGN KEY (role_id) REFERENCES bi.ab_role(id) ON DELETE CASCADE);

-- Permissions

ALTER TABLE bi.dashboard_roles OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.dashboard_roles TO kcell_test_user;


-- bi.dashboard_slices definition

-- Drop table

-- DROP TABLE bi.dashboard_slices;

CREATE TABLE bi.dashboard_slices ( id serial4 NOT NULL, dashboard_id int4 NULL, slice_id int4 NULL, CONSTRAINT dashboard_slices_pkey PRIMARY KEY (id), CONSTRAINT uq_dashboard_slice UNIQUE (dashboard_id, slice_id), CONSTRAINT fk_dashboard_slices_dashboard_id_dashboards FOREIGN KEY (dashboard_id) REFERENCES bi.dashboards(id) ON DELETE CASCADE, CONSTRAINT fk_dashboard_slices_slice_id_slices FOREIGN KEY (slice_id) REFERENCES bi.slices(id) ON DELETE CASCADE);

-- Permissions

ALTER TABLE bi.dashboard_slices OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.dashboard_slices TO kcell_test_user;


-- bi.dashboard_user definition

-- Drop table

-- DROP TABLE bi.dashboard_user;

CREATE TABLE bi.dashboard_user ( id serial4 NOT NULL, user_id int4 NULL, dashboard_id int4 NULL, CONSTRAINT dashboard_user_pkey PRIMARY KEY (id), CONSTRAINT fk_dashboard_user_dashboard_id_dashboards FOREIGN KEY (dashboard_id) REFERENCES bi.dashboards(id) ON DELETE CASCADE, CONSTRAINT fk_dashboard_user_user_id_ab_user FOREIGN KEY (user_id) REFERENCES bi.ab_user(id) ON DELETE CASCADE);

-- Permissions

ALTER TABLE bi.dashboard_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.dashboard_user TO kcell_test_user;


-- bi.database_user_oauth2_tokens definition

-- Drop table

-- DROP TABLE bi.database_user_oauth2_tokens;

CREATE TABLE bi.database_user_oauth2_tokens ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, user_id int4 NOT NULL, database_id int4 NOT NULL, access_token bytea NULL, access_token_expiration timestamp NULL, refresh_token bytea NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, CONSTRAINT database_user_oauth2_tokens_pkey PRIMARY KEY (id), CONSTRAINT database_user_oauth2_tokens_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT database_user_oauth2_tokens_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT database_user_oauth2_tokens_database_id_fkey FOREIGN KEY (database_id) REFERENCES bi.dbs(id) ON DELETE CASCADE, CONSTRAINT database_user_oauth2_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES bi.ab_user(id) ON DELETE CASCADE);
CREATE INDEX idx_user_id_database_id ON bi.database_user_oauth2_tokens USING btree (user_id, database_id);

-- Permissions

ALTER TABLE bi.database_user_oauth2_tokens OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.database_user_oauth2_tokens TO kcell_test_user;


-- bi.report_schedule definition

-- Drop table

-- DROP TABLE bi.report_schedule;

CREATE TABLE bi.report_schedule ( id serial4 NOT NULL, "type" varchar(50) NOT NULL, "name" varchar(150) NOT NULL, description text NULL, context_markdown text NULL, active bool NULL, crontab varchar(1000) NOT NULL, "sql" text NULL, chart_id int4 NULL, dashboard_id int4 NULL, database_id int4 NULL, last_eval_dttm timestamp NULL, last_state varchar(50) NULL, "last_value" float8 NULL, last_value_row_json text NULL, validator_type varchar(100) NULL, validator_config_json text NULL, log_retention int4 NULL, grace_period int4 NULL, created_on timestamp NULL, changed_on timestamp NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, working_timeout int4 NULL, report_format varchar(50) DEFAULT 'PNG'::character varying NULL, creation_method varchar(255) DEFAULT 'alerts_reports'::character varying NULL, timezone varchar(100) DEFAULT 'UTC'::character varying NOT NULL, extra_json text NOT NULL, force_screenshot bool NULL, custom_width int4 NULL, custom_height int4 NULL, email_subject varchar(255) NULL, CONSTRAINT report_schedule_pkey PRIMARY KEY (id), CONSTRAINT uq_report_schedule_name_type UNIQUE (name, type), CONSTRAINT report_schedule_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT report_schedule_chart_id_fkey FOREIGN KEY (chart_id) REFERENCES bi.slices(id), CONSTRAINT report_schedule_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT report_schedule_dashboard_id_fkey FOREIGN KEY (dashboard_id) REFERENCES bi.dashboards(id), CONSTRAINT report_schedule_database_id_fkey FOREIGN KEY (database_id) REFERENCES bi.dbs(id));
CREATE INDEX ix_creation_method ON bi.report_schedule USING btree (creation_method);
CREATE INDEX ix_report_schedule_active ON bi.report_schedule USING btree (active);

-- Permissions

ALTER TABLE bi.report_schedule OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.report_schedule TO kcell_test_user;


-- bi.report_schedule_user definition

-- Drop table

-- DROP TABLE bi.report_schedule_user;

CREATE TABLE bi.report_schedule_user ( id serial4 NOT NULL, user_id int4 NOT NULL, report_schedule_id int4 NOT NULL, CONSTRAINT report_schedule_user_pkey PRIMARY KEY (id), CONSTRAINT fk_report_schedule_user_report_schedule_id_report_schedule FOREIGN KEY (report_schedule_id) REFERENCES bi.report_schedule(id) ON DELETE CASCADE, CONSTRAINT fk_report_schedule_user_user_id_ab_user FOREIGN KEY (user_id) REFERENCES bi.ab_user(id) ON DELETE CASCADE);

-- Permissions

ALTER TABLE bi.report_schedule_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.report_schedule_user TO kcell_test_user;


-- bi.rls_filter_roles definition

-- Drop table

-- DROP TABLE bi.rls_filter_roles;

CREATE TABLE bi.rls_filter_roles ( id serial4 NOT NULL, role_id int4 NOT NULL, rls_filter_id int4 NULL, CONSTRAINT rls_filter_roles_pkey PRIMARY KEY (id), CONSTRAINT rls_filter_roles_rls_filter_id_fkey FOREIGN KEY (rls_filter_id) REFERENCES bi.row_level_security_filters(id), CONSTRAINT rls_filter_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES bi.ab_role(id));

-- Permissions

ALTER TABLE bi.rls_filter_roles OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.rls_filter_roles TO kcell_test_user;


-- bi.rls_filter_tables definition

-- Drop table

-- DROP TABLE bi.rls_filter_tables;

CREATE TABLE bi.rls_filter_tables ( id serial4 NOT NULL, table_id int4 NULL, rls_filter_id int4 NULL, CONSTRAINT rls_filter_tables_pkey PRIMARY KEY (id), CONSTRAINT rls_filter_tables_rls_filter_id_fkey FOREIGN KEY (rls_filter_id) REFERENCES bi.row_level_security_filters(id), CONSTRAINT rls_filter_tables_table_id_fkey FOREIGN KEY (table_id) REFERENCES bi."tables"(id));

-- Permissions

ALTER TABLE bi.rls_filter_tables OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.rls_filter_tables TO kcell_test_user;


-- bi.slice_user definition

-- Drop table

-- DROP TABLE bi.slice_user;

CREATE TABLE bi.slice_user ( id serial4 NOT NULL, user_id int4 NULL, slice_id int4 NULL, CONSTRAINT slice_user_pkey PRIMARY KEY (id), CONSTRAINT fk_slice_user_slice_id_slices FOREIGN KEY (slice_id) REFERENCES bi.slices(id) ON DELETE CASCADE, CONSTRAINT fk_slice_user_user_id_ab_user FOREIGN KEY (user_id) REFERENCES bi.ab_user(id) ON DELETE CASCADE);

-- Permissions

ALTER TABLE bi.slice_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.slice_user TO kcell_test_user;


-- bi.sql_metrics definition

-- Drop table

-- DROP TABLE bi.sql_metrics;

CREATE TABLE bi.sql_metrics ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, metric_name varchar(255) NOT NULL, verbose_name varchar(1024) NULL, metric_type varchar(32) NULL, table_id int4 NULL, "expression" text NOT NULL, description text NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, d3format varchar(128) NULL, warning_text text NULL, extra text NULL, "uuid" uuid NULL, currency varchar(128) NULL, CONSTRAINT sql_metrics_pkey PRIMARY KEY (id), CONSTRAINT uq_sql_metrics_metric_name UNIQUE (metric_name, table_id), CONSTRAINT uq_sql_metrics_uuid UNIQUE (uuid), CONSTRAINT fk_sql_metrics_table_id_tables FOREIGN KEY (table_id) REFERENCES bi."tables"(id) ON DELETE CASCADE, CONSTRAINT sql_metrics_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT sql_metrics_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.sql_metrics OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.sql_metrics TO kcell_test_user;


-- bi.sqlatable_user definition

-- Drop table

-- DROP TABLE bi.sqlatable_user;

CREATE TABLE bi.sqlatable_user ( id serial4 NOT NULL, user_id int4 NULL, table_id int4 NULL, CONSTRAINT sqlatable_user_pkey PRIMARY KEY (id), CONSTRAINT fk_sqlatable_user_table_id_tables FOREIGN KEY (table_id) REFERENCES bi."tables"(id) ON DELETE CASCADE, CONSTRAINT fk_sqlatable_user_user_id_ab_user FOREIGN KEY (user_id) REFERENCES bi.ab_user(id) ON DELETE CASCADE);

-- Permissions

ALTER TABLE bi.sqlatable_user OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.sqlatable_user TO kcell_test_user;


-- bi.table_columns definition

-- Drop table

-- DROP TABLE bi.table_columns;

CREATE TABLE bi.table_columns ( created_on timestamp NULL, changed_on timestamp NULL, id serial4 NOT NULL, table_id int4 NULL, column_name varchar(255) NOT NULL, is_dttm bool NULL, is_active bool NULL, "type" text NULL, groupby bool NULL, filterable bool NULL, description text NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, "expression" text NULL, verbose_name varchar(1024) NULL, python_date_format varchar(255) NULL, "uuid" uuid NULL, extra text NULL, advanced_data_type varchar(255) NULL, CONSTRAINT table_columns_pkey PRIMARY KEY (id), CONSTRAINT uq_table_columns_column_name UNIQUE (column_name, table_id), CONSTRAINT uq_table_columns_uuid UNIQUE (uuid), CONSTRAINT fk_table_columns_table_id_tables FOREIGN KEY (table_id) REFERENCES bi."tables"(id) ON DELETE CASCADE, CONSTRAINT table_columns_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT table_columns_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id));

-- Permissions

ALTER TABLE bi.table_columns OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.table_columns TO kcell_test_user;


-- bi.report_execution_log definition

-- Drop table

-- DROP TABLE bi.report_execution_log;

CREATE TABLE bi.report_execution_log ( id serial4 NOT NULL, scheduled_dttm timestamp NOT NULL, start_dttm timestamp NULL, end_dttm timestamp NULL, value float8 NULL, value_row_json text NULL, state varchar(50) NOT NULL, error_message text NULL, report_schedule_id int4 NOT NULL, "uuid" uuid NULL, CONSTRAINT report_execution_log_pkey PRIMARY KEY (id), CONSTRAINT report_execution_log_report_schedule_id_fkey FOREIGN KEY (report_schedule_id) REFERENCES bi.report_schedule(id));
CREATE INDEX ix_report_execution_log_report_schedule_id ON bi.report_execution_log USING btree (report_schedule_id);
CREATE INDEX ix_report_execution_log_start_dttm ON bi.report_execution_log USING btree (start_dttm);

-- Permissions

ALTER TABLE bi.report_execution_log OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.report_execution_log TO kcell_test_user;


-- bi.report_recipient definition

-- Drop table

-- DROP TABLE bi.report_recipient;

CREATE TABLE bi.report_recipient ( id serial4 NOT NULL, "type" varchar(50) NOT NULL, recipient_config_json text NULL, report_schedule_id int4 NOT NULL, created_on timestamp NULL, changed_on timestamp NULL, created_by_fk int4 NULL, changed_by_fk int4 NULL, CONSTRAINT report_recipient_pkey PRIMARY KEY (id), CONSTRAINT report_recipient_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT report_recipient_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES bi.ab_user(id), CONSTRAINT report_recipient_report_schedule_id_fkey FOREIGN KEY (report_schedule_id) REFERENCES bi.report_schedule(id));
CREATE INDEX ix_report_recipient_report_schedule_id ON bi.report_recipient USING btree (report_schedule_id);

-- Permissions

ALTER TABLE bi.report_recipient OWNER TO kcell_test_user;
GRANT ALL ON TABLE bi.report_recipient TO kcell_test_user;




-- Permissions

GRANT ALL ON SCHEMA bi TO kcell_test_user;