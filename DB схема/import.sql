-- DROP SCHEMA "import";

CREATE SCHEMA "import" AUTHORIZATION kcell_test_user;

-- DROP SEQUENCE "import".aliases_id_seq;

CREATE SEQUENCE "import".aliases_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE "import".aliases_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE "import".aliases_id_seq TO kcell_test_user;

-- DROP SEQUENCE "import".audit_log_id_seq;

CREATE SEQUENCE "import".audit_log_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE "import".audit_log_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE "import".audit_log_id_seq TO kcell_test_user;

-- DROP SEQUENCE "import".field_mappings_id_seq;

CREATE SEQUENCE "import".field_mappings_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE "import".field_mappings_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE "import".field_mappings_id_seq TO kcell_test_user;

-- DROP SEQUENCE "import".import_snapshots_id_seq;

CREATE SEQUENCE "import".import_snapshots_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE "import".import_snapshots_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE "import".import_snapshots_id_seq TO kcell_test_user;

-- DROP SEQUENCE "import".synonyms_id_seq;

CREATE SEQUENCE "import".synonyms_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE "import".synonyms_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE "import".synonyms_id_seq TO kcell_test_user;
-- "import".alembic_version definition

-- Drop table

-- DROP TABLE "import".alembic_version;

CREATE TABLE "import".alembic_version ( version_num varchar(32) NOT NULL, CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num));

-- Permissions

ALTER TABLE "import".alembic_version OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".alembic_version TO kcell_test_user;


-- "import".aliases definition

-- Drop table

-- DROP TABLE "import".aliases;

CREATE TABLE "import".aliases ( id serial4 NOT NULL, "source" varchar NOT NULL, "target" varchar NOT NULL, ref_table varchar NOT NULL, created_at timestamp DEFAULT now() NOT NULL, CONSTRAINT aliases_pkey PRIMARY KEY (id));
CREATE UNIQUE INDEX uq_aliases_source_ref ON import.aliases USING btree (lower((source)::text), ref_table);

-- Permissions

ALTER TABLE "import".aliases OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".aliases TO kcell_test_user;


-- "import".apscheduler_jobs definition

-- Drop table

-- DROP TABLE "import".apscheduler_jobs;

CREATE TABLE "import".apscheduler_jobs ( id varchar(191) NOT NULL, next_run_time float8 NULL, job_state bytea NOT NULL, CONSTRAINT apscheduler_jobs_pkey PRIMARY KEY (id));
CREATE INDEX ix_import_apscheduler_jobs_next_run_time ON import.apscheduler_jobs USING btree (next_run_time);

-- Permissions

ALTER TABLE "import".apscheduler_jobs OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".apscheduler_jobs TO kcell_test_user;


-- "import".audit_log definition

-- Drop table

-- DROP TABLE "import".audit_log;

CREATE TABLE "import".audit_log ( id serial4 NOT NULL, event_type varchar NOT NULL, document_id uuid NULL, session_id uuid NULL, payload jsonb NULL, created_at timestamptz DEFAULT now() NOT NULL, CONSTRAINT pk_audit_log PRIMARY KEY (id));
CREATE INDEX ix_audit_log_created_at ON import.audit_log USING btree (created_at DESC);
CREATE INDEX ix_audit_log_document_id ON import.audit_log USING btree (document_id);

-- Permissions

ALTER TABLE "import".audit_log OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".audit_log TO kcell_test_user;


-- "import".document_sessions definition

-- Drop table

-- DROP TABLE "import".document_sessions;

CREATE TABLE "import".document_sessions ( id uuid DEFAULT gen_random_uuid() NOT NULL, status varchar DEFAULT 'draft'::character varying NOT NULL, extracted_fields jsonb NULL, expires_at timestamptz NULL, created_at timestamptz DEFAULT now() NOT NULL, CONSTRAINT ck_document_sessions_status CHECK (((status)::text = ANY ((ARRAY['draft'::character varying, 'confirmed'::character varying, 'processed'::character varying, 'expired'::character varying])::text[]))), CONSTRAINT pk_document_sessions PRIMARY KEY (id));
CREATE INDEX ix_document_sessions_created_at ON import.document_sessions USING btree (created_at DESC);
CREATE INDEX ix_document_sessions_status ON import.document_sessions USING btree (status);

-- Permissions

ALTER TABLE "import".document_sessions OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".document_sessions TO kcell_test_user;


-- "import".document_templates definition

-- Drop table

-- DROP TABLE "import".document_templates;

CREATE TABLE "import".document_templates ( id uuid DEFAULT gen_random_uuid() NOT NULL, product_code varchar NOT NULL, doc_type varchar NOT NULL, display_name varchar NULL, field_definitions jsonb NOT NULL, is_active bool DEFAULT true NOT NULL, created_at timestamptz DEFAULT now() NOT NULL, CONSTRAINT pk_document_templates PRIMARY KEY (id));
CREATE INDEX ix_document_templates_product_code ON import.document_templates USING btree (product_code);
CREATE UNIQUE INDEX uq_document_templates_product_doc_type ON import.document_templates USING btree (product_code, doc_type);

-- Permissions

ALTER TABLE "import".document_templates OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".document_templates TO kcell_test_user;


-- "import".field_mappings definition

-- Drop table

-- DROP TABLE "import".field_mappings;

CREATE TABLE "import".field_mappings ( id serial4 NOT NULL, field_name varchar NOT NULL, table_name varchar NOT NULL, ru_label varchar NOT NULL, is_alias bool DEFAULT false NOT NULL, alias_for_field varchar NULL, created_at timestamp DEFAULT now() NOT NULL, is_active bool DEFAULT true NOT NULL, data_type varchar NULL, CONSTRAINT field_mappings_pkey PRIMARY KEY (id), CONSTRAINT uq_field_mappings UNIQUE (field_name, table_name, ru_label));

-- Permissions

ALTER TABLE "import".field_mappings OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".field_mappings TO kcell_test_user;


-- "import".synonyms definition

-- Drop table

-- DROP TABLE "import".synonyms;

CREATE TABLE "import".synonyms ( id serial4 NOT NULL, synonym varchar NOT NULL, table_name varchar NOT NULL, field_name varchar NOT NULL, created_at timestamp DEFAULT now() NOT NULL, CONSTRAINT synonyms_pkey PRIMARY KEY (id), CONSTRAINT uq_synonyms UNIQUE (synonym, table_name, field_name));
CREATE INDEX ix_synonyms_synonym ON import.synonyms USING btree (synonym);

-- Permissions

ALTER TABLE "import".synonyms OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".synonyms TO kcell_test_user;


-- "import".documents definition

-- Drop table

-- DROP TABLE "import".documents;

CREATE TABLE "import".documents ( id uuid DEFAULT gen_random_uuid() NOT NULL, client_id int4 NULL, doc_type varchar DEFAULT '''UNKNOWN'''::character varying NOT NULL, product_code varchar NULL, s3_key varchar NULL, extracted_fields jsonb NULL, enrichment_status varchar DEFAULT '''pending'''::character varying NOT NULL, file_hash varchar NULL, created_at timestamptz DEFAULT now() NOT NULL, file_name varchar NULL, file_size int8 NULL, retry_count int4 DEFAULT 0 NOT NULL, last_retry_at timestamptz NULL, CONSTRAINT ck_documents_doc_type CHECK (((doc_type)::text = ANY ((ARRAY['CONTRACT'::character varying, 'SUPPLEMENTARY_AGREEMENT'::character varying, 'APPLICATION'::character varying, 'REGISTRATION_FORM'::character varying, 'TERMINATION_AGREEMENT'::character varying, 'ACCEPTANCE_ACT'::character varying, 'COMMERCIAL_PROPOSAL'::character varying, 'NDA'::character varying, 'QUESTIONNAIRE'::character varying, 'GUARANTEE_LETTER'::character varying, 'POWER_OF_ATTORNEY'::character varying, 'BANK_DETAILS'::character varying, 'HEAD_APPOINTMENT'::character varying, 'VAT_CERTIFICATE'::character varying, 'REGISTRATION_CERT'::character varying, 'UNKNOWN'::character varying])::text[]))), CONSTRAINT pk_documents PRIMARY KEY (id));
CREATE INDEX ix_documents_client_id ON import.documents USING btree (client_id);
CREATE INDEX ix_documents_doc_type ON import.documents USING btree (doc_type);
CREATE INDEX ix_documents_product_code ON import.documents USING btree (product_code);

-- Permissions

ALTER TABLE "import".documents OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".documents TO kcell_test_user;


-- "import".import_batches definition

-- Drop table

-- DROP TABLE "import".import_batches;

CREATE TABLE "import".import_batches ( id uuid DEFAULT gen_random_uuid() NOT NULL, session_id uuid NOT NULL, status varchar DEFAULT 'active'::character varying NOT NULL, created_at timestamptz DEFAULT now() NOT NULL, completed_at timestamptz NULL, total_rows int4 DEFAULT 0 NOT NULL, processed_rows int4 DEFAULT 0 NOT NULL, created_count int4 DEFAULT 0 NOT NULL, updated_count int4 DEFAULT 0 NOT NULL, error_count int4 DEFAULT 0 NOT NULL, skipped_count int4 DEFAULT 0 NOT NULL, error_message text NULL, CONSTRAINT import_batches_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE "import".import_batches OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".import_batches TO kcell_test_user;


-- "import".import_errors definition

-- Drop table

-- DROP TABLE "import".import_errors;

CREATE TABLE "import".import_errors ( id uuid DEFAULT gen_random_uuid() NOT NULL, session_id uuid NOT NULL, "row_number" int4 NOT NULL, column_name varchar NULL, error_type varchar NOT NULL, error_message text NOT NULL, raw_value text NULL, batch_id uuid NULL, match_method varchar(20) NULL, CONSTRAINT import_errors_pkey PRIMARY KEY (id));
CREATE INDEX ix_import_errors_batch_id ON import.import_errors USING btree (batch_id);
CREATE INDEX ix_import_errors_session_id ON import.import_errors USING btree (session_id);

-- Permissions

ALTER TABLE "import".import_errors OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".import_errors TO kcell_test_user;


-- "import".import_sessions definition

-- Drop table

-- DROP TABLE "import".import_sessions;

CREATE TABLE "import".import_sessions ( id uuid DEFAULT gen_random_uuid() NOT NULL, filename varchar NOT NULL, format varchar NOT NULL, file_path varchar NOT NULL, size_bytes int4 NOT NULL, "encoding" varchar NULL, "delimiter" varchar NULL, "columns" varchar NOT NULL, row_count int4 NOT NULL, status varchar DEFAULT 'pending'::character varying NOT NULL, mapping_config jsonb NULL, created_at timestamp DEFAULT now() NOT NULL, processed_rows int4 DEFAULT 0 NOT NULL, created_count int4 DEFAULT 0 NOT NULL, updated_count int4 DEFAULT 0 NOT NULL, error_count int4 DEFAULT 0 NOT NULL, skipped_count int4 DEFAULT 0 NOT NULL, started_at timestamptz NULL, finished_at timestamptz NULL, dedup_strategy varchar NULL, dedup_field varchar NULL, error_message text NULL, is_dry_run bool DEFAULT false NOT NULL, blank_policy varchar NULL, protected_fields jsonb NULL, batch_id uuid NULL, target_entity varchar NULL, tags jsonb NULL, owner_assignment varchar NULL, processed_file_rows int4 DEFAULT 0 NOT NULL, db_rows_written int4 DEFAULT 0 NOT NULL, CONSTRAINT import_sessions_pkey PRIMARY KEY (id));
CREATE INDEX ix_import_sessions_created_at ON import.import_sessions USING btree (created_at DESC);
CREATE INDEX ix_import_sessions_status ON import.import_sessions USING btree (status);
CREATE INDEX ix_import_sessions_tags ON import.import_sessions USING gin (tags);

-- Permissions

ALTER TABLE "import".import_sessions OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".import_sessions TO kcell_test_user;


-- "import".import_snapshots definition

-- Drop table

-- DROP TABLE "import".import_snapshots;

CREATE TABLE "import".import_snapshots ( id serial4 NOT NULL, batch_id uuid NOT NULL, target_table varchar NOT NULL, record_id int4 NOT NULL, operation varchar NOT NULL, old_values jsonb NULL, new_values jsonb NULL, created_at timestamptz DEFAULT now() NOT NULL, CONSTRAINT import_snapshots_pkey PRIMARY KEY (id));
CREATE INDEX ix_import_snapshots_batch_id ON import.import_snapshots USING btree (batch_id);
CREATE INDEX ix_import_snapshots_record ON import.import_snapshots USING btree (target_table, record_id);

-- Permissions

ALTER TABLE "import".import_snapshots OWNER TO kcell_test_user;
GRANT ALL ON TABLE "import".import_snapshots TO kcell_test_user;


-- "import".documents foreign keys

ALTER TABLE "import".documents ADD CONSTRAINT fk_documents_client_id_clients FOREIGN KEY (client_id) REFERENCES client.clients(id);


-- "import".import_batches foreign keys

ALTER TABLE "import".import_batches ADD CONSTRAINT import_batches_session_id_fkey FOREIGN KEY (session_id) REFERENCES "import".import_sessions(id);


-- "import".import_errors foreign keys

ALTER TABLE "import".import_errors ADD CONSTRAINT import_errors_batch_id_fkey FOREIGN KEY (batch_id) REFERENCES "import".import_batches(id) ON DELETE SET NULL;
ALTER TABLE "import".import_errors ADD CONSTRAINT import_errors_session_id_fkey FOREIGN KEY (session_id) REFERENCES "import".import_sessions(id) ON DELETE CASCADE;


-- "import".import_sessions foreign keys

ALTER TABLE "import".import_sessions ADD CONSTRAINT fk_sessions_batch FOREIGN KEY (batch_id) REFERENCES "import".import_batches(id);


-- "import".import_snapshots foreign keys

ALTER TABLE "import".import_snapshots ADD CONSTRAINT import_snapshots_batch_id_fkey FOREIGN KEY (batch_id) REFERENCES "import".import_batches(id);




-- Permissions

GRANT ALL ON SCHEMA "import" TO kcell_test_user;