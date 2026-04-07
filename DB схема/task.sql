-- DROP SCHEMA task;

CREATE SCHEMA task AUTHORIZATION kcell_test_user;

-- DROP SEQUENCE task.auditors_id_seq;

CREATE SEQUENCE task.auditors_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE task.auditors_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE task.auditors_id_seq TO kcell_test_user;

-- DROP SEQUENCE task.responsibles_id_seq;

CREATE SEQUENCE task.responsibles_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE task.responsibles_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE task.responsibles_id_seq TO kcell_test_user;

-- DROP SEQUENCE task.task_history_id_seq;

CREATE SEQUENCE task.task_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE task.task_history_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE task.task_history_id_seq TO kcell_test_user;

-- DROP SEQUENCE task.task_manager_execution_id_seq;

CREATE SEQUENCE task.task_manager_execution_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE task.task_manager_execution_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE task.task_manager_execution_id_seq TO kcell_test_user;

-- DROP SEQUENCE task.task_manager_file_id_id_seq;

CREATE SEQUENCE task.task_manager_file_id_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE task.task_manager_file_id_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE task.task_manager_file_id_id_seq TO kcell_test_user;

-- DROP SEQUENCE task.task_manager_id_seq;

CREATE SEQUENCE task.task_manager_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE task.task_manager_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE task.task_manager_id_seq TO kcell_test_user;

-- DROP SEQUENCE task.task_status_priority_id_seq;

CREATE SEQUENCE task.task_status_priority_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE task.task_status_priority_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE task.task_status_priority_id_seq TO kcell_test_user;
-- task.databasechangelog definition

-- Drop table

-- DROP TABLE task.databasechangelog;

CREATE TABLE task.databasechangelog ( id varchar(255) NOT NULL, author varchar(255) NOT NULL, filename varchar(255) NOT NULL, dateexecuted timestamp NOT NULL, orderexecuted int4 NOT NULL, exectype varchar(10) NOT NULL, md5sum varchar(35) NULL, description varchar(255) NULL, "comments" varchar(255) NULL, tag varchar(255) NULL, liquibase varchar(20) NULL, contexts varchar(255) NULL, labels varchar(255) NULL, deployment_id varchar(10) NULL);

-- Permissions

ALTER TABLE task.databasechangelog OWNER TO kcell_test_user;
GRANT ALL ON TABLE task.databasechangelog TO kcell_test_user;


-- task.databasechangeloglock definition

-- Drop table

-- DROP TABLE task.databasechangeloglock;

CREATE TABLE task.databasechangeloglock ( id int4 NOT NULL, "locked" bool NOT NULL, lockgranted timestamp NULL, lockedby varchar(255) NULL, CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE task.databasechangeloglock OWNER TO kcell_test_user;
GRANT ALL ON TABLE task.databasechangeloglock TO kcell_test_user;


-- task.task_manager definition

-- Drop table

-- DROP TABLE task.task_manager;

CREATE TABLE task.task_manager ( id bigserial NOT NULL, created_date timestamptz DEFAULT now() NOT NULL, created_by uuid NULL, updated_date timestamptz NULL, updated_by uuid NULL, deleted_date timestamptz NULL, deleted_by uuid NULL, start_date timestamptz NULL, expiration_date timestamptz NULL, ended_date timestamptz NULL, manager_id int8 NULL, task_name varchar(100) NOT NULL, expected_result varchar(255) NULL, description varchar(255) NULL, "comment" varchar(255) NULL, status varchar(255) NOT NULL, CONSTRAINT task_manager_pkey PRIMARY KEY (id));
CREATE INDEX idx_tm_deleted_date ON task.task_manager USING btree (deleted_date);
CREATE INDEX idx_tm_expiration_date ON task.task_manager USING btree (expiration_date);
CREATE INDEX idx_tm_manager_id ON task.task_manager USING btree (manager_id);
CREATE INDEX idx_tm_start_date ON task.task_manager USING btree (start_date);
CREATE INDEX idx_tm_status ON task.task_manager USING btree (status);

-- Permissions

ALTER TABLE task.task_manager OWNER TO kcell_test_user;
GRANT ALL ON TABLE task.task_manager TO kcell_test_user;


-- task.task_manager_execution definition

-- Drop table

-- DROP TABLE task.task_manager_execution;

CREATE TABLE task.task_manager_execution ( id bigserial NOT NULL, created_date timestamptz DEFAULT now() NOT NULL, updated_date timestamptz NULL, deleted_date timestamptz NULL, status varchar(50) NOT NULL, manager varchar(50) NULL, "role" varchar(50) NULL, CONSTRAINT task_manager_execution_pkey PRIMARY KEY (id));
CREATE INDEX idx_tme_role ON task.task_manager_execution USING btree (role);
CREATE INDEX idx_tme_status ON task.task_manager_execution USING btree (status);

-- Permissions

ALTER TABLE task.task_manager_execution OWNER TO kcell_test_user;
GRANT ALL ON TABLE task.task_manager_execution TO kcell_test_user;


-- task.task_status_priority definition

-- Drop table

-- DROP TABLE task.task_status_priority;

CREATE TABLE task.task_status_priority ( id bigserial NOT NULL, status_key varchar(255) NOT NULL, priority int8 NOT NULL, CONSTRAINT task_status_priority_pkey PRIMARY KEY (id));
CREATE INDEX idx_task_status_priority_priority ON task.task_status_priority USING btree (priority);
CREATE UNIQUE INDEX uk_task_status_priority_status_key ON task.task_status_priority USING btree (status_key);

-- Permissions

ALTER TABLE task.task_status_priority OWNER TO kcell_test_user;
GRANT ALL ON TABLE task.task_status_priority TO kcell_test_user;


-- task.auditors definition

-- Drop table

-- DROP TABLE task.auditors;

CREATE TABLE task.auditors ( id bigserial NOT NULL, task_manager_id int8 NOT NULL, user_id int8 NOT NULL, created_date timestamptz DEFAULT now() NOT NULL, deleted_date timestamptz NULL, deleted_by uuid NULL, created_by uuid NULL, CONSTRAINT auditors_pkey PRIMARY KEY (id), CONSTRAINT fk_auditors_task_manager FOREIGN KEY (task_manager_id) REFERENCES task.task_manager(id));
CREATE INDEX idx_aud_task_manager_id ON task.auditors USING btree (task_manager_id);
CREATE INDEX idx_aud_user_id ON task.auditors USING btree (user_id);

-- Permissions

ALTER TABLE task.auditors OWNER TO kcell_test_user;
GRANT ALL ON TABLE task.auditors TO kcell_test_user;


-- task.responsibles definition

-- Drop table

-- DROP TABLE task.responsibles;

CREATE TABLE task.responsibles ( id bigserial NOT NULL, task_manager_id int8 NOT NULL, user_id int8 NOT NULL, created_date timestamptz DEFAULT now() NOT NULL, deleted_date timestamptz NULL, deleted_by uuid NULL, created_by uuid NULL, CONSTRAINT responsibles_pkey PRIMARY KEY (id), CONSTRAINT fk_responsibles_task_manager FOREIGN KEY (task_manager_id) REFERENCES task.task_manager(id));
CREATE INDEX idx_resp_task_manager_id ON task.responsibles USING btree (task_manager_id);
CREATE INDEX idx_resp_user_id ON task.responsibles USING btree (user_id);

-- Permissions

ALTER TABLE task.responsibles OWNER TO kcell_test_user;
GRANT ALL ON TABLE task.responsibles TO kcell_test_user;


-- task.task_manager_file_id definition

-- Drop table

-- DROP TABLE task.task_manager_file_id;

CREATE TABLE task.task_manager_file_id ( id bigserial NOT NULL, task_manager_id int8 NOT NULL, created_date timestamptz DEFAULT now() NOT NULL, created_by uuid NULL, deleted_date timestamptz NULL, deleted_by uuid NULL, file_id varchar(100) NULL, CONSTRAINT task_manager_file_id_pkey PRIMARY KEY (id), CONSTRAINT fk_task_manager_file_task_manager FOREIGN KEY (task_manager_id) REFERENCES task.task_manager(id));
CREATE INDEX idx_tmf_file_id ON task.task_manager_file_id USING btree (file_id);
CREATE INDEX idx_tmf_task_manager_id ON task.task_manager_file_id USING btree (task_manager_id);

-- Permissions

ALTER TABLE task.task_manager_file_id OWNER TO kcell_test_user;
GRANT ALL ON TABLE task.task_manager_file_id TO kcell_test_user;


-- task.task_history definition

-- Drop table

-- DROP TABLE task.task_history;

CREATE TABLE task.task_history ( id bigserial NOT NULL, task_manager_id int8 NOT NULL, responsible_id int8 NULL, auditor_id int8 NULL, file_id int8 NULL, created_date timestamptz DEFAULT now() NOT NULL, created_by uuid NULL, colomn varchar(255) NOT NULL, value_old varchar(255) NULL, value_new varchar(255) NULL, CONSTRAINT task_history_pkey PRIMARY KEY (id), CONSTRAINT fk_task_history_auditor FOREIGN KEY (auditor_id) REFERENCES task.auditors(id), CONSTRAINT fk_task_history_file FOREIGN KEY (file_id) REFERENCES task.task_manager_file_id(id), CONSTRAINT fk_task_history_responsible FOREIGN KEY (responsible_id) REFERENCES task.responsibles(id), CONSTRAINT fk_task_history_task_manager FOREIGN KEY (task_manager_id) REFERENCES task.task_manager(id));
CREATE INDEX idx_th_created_date ON task.task_history USING btree (created_date);
CREATE INDEX idx_th_task_manager_id ON task.task_history USING btree (task_manager_id);

-- Permissions

ALTER TABLE task.task_history OWNER TO kcell_test_user;
GRANT ALL ON TABLE task.task_history TO kcell_test_user;




-- Permissions

GRANT ALL ON SCHEMA task TO kcell_test_user;