-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION pg_database_owner;

COMMENT ON SCHEMA public IS 'standard public schema';

-- DROP TYPE public."activity_status";

CREATE TYPE public."activity_status" AS ENUM (
	'NEW',
	'IN_PROGRESS',
	'WAITING_SCORING',
	'HOT',
	'THINKING',
	'UNLIKELY',
	'PAYMENT',
	'REJECTED');

-- DROP SEQUENCE public.activity_logs_id_seq;

CREATE SEQUENCE public.activity_logs_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.activity_logs_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE public.activity_logs_id_seq TO kcell_test_user;

-- DROP SEQUENCE public.b2c_activities_id_seq;

CREATE SEQUENCE public.b2c_activities_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.b2c_activities_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE public.b2c_activities_id_seq TO kcell_test_user;

-- DROP SEQUENCE public.users_id_seq;

CREATE SEQUENCE public.users_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.users_id_seq OWNER TO kcell_test_user;
GRANT ALL ON SEQUENCE public.users_id_seq TO kcell_test_user;
-- public.b2c_activities definition

-- Drop table

-- DROP TABLE public.b2c_activities;

CREATE TABLE public.b2c_activities ( id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, nx_sub_id varchar(50) NOT NULL, astrum_request_id varchar(50) NULL, status public."activity_status" DEFAULT 'NEW'::activity_status NOT NULL, source_channel varchar(50) NULL, department varchar(50) NULL, operator_id uuid NULL, phone varchar(20) NOT NULL, iin varchar(12) NULL, full_name varchar(255) NULL, city varchar(100) NULL, timezone varchar(50) NULL, next_call_at timestamptz NULL, created_at timestamptz DEFAULT now() NULL, updated_at timestamptz DEFAULT now() NULL, CONSTRAINT b2c_activities_astrum_request_id_key UNIQUE (astrum_request_id), CONSTRAINT b2c_activities_pkey PRIMARY KEY (id));
CREATE INDEX idx_act_next_call ON public.b2c_activities USING btree (next_call_at) WHERE (status <> 'REJECTED'::activity_status);
CREATE INDEX idx_act_nx_id ON public.b2c_activities USING btree (nx_sub_id);
CREATE INDEX idx_act_operator_status ON public.b2c_activities USING btree (operator_id, status);
CREATE INDEX idx_act_phone ON public.b2c_activities USING btree (phone);

-- Permissions

ALTER TABLE public.b2c_activities OWNER TO kcell_test_user;
GRANT ALL ON TABLE public.b2c_activities TO kcell_test_user;


-- public.activity_astrum_data definition

-- Drop table

-- DROP TABLE public.activity_astrum_data;

CREATE TABLE public.activity_astrum_data ( activity_id int8 NOT NULL, scoring_status varchar(50) NULL, approved_limit numeric(12, 2) NULL, raw_response_json jsonb NULL, updated_at timestamptz DEFAULT now() NULL, CONSTRAINT activity_astrum_data_pkey PRIMARY KEY (activity_id), CONSTRAINT activity_astrum_data_activity_id_fkey FOREIGN KEY (activity_id) REFERENCES public.b2c_activities(id) ON DELETE CASCADE);

-- Permissions

ALTER TABLE public.activity_astrum_data OWNER TO kcell_test_user;
GRANT ALL ON TABLE public.activity_astrum_data TO kcell_test_user;


-- public.activity_logs definition

-- Drop table

-- DROP TABLE public.activity_logs;

CREATE TABLE public.activity_logs ( id int8 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL, activity_id int8 NOT NULL, action_type varchar(50) NULL, operator_id uuid NOT NULL, "comment" text NULL, call_record_link varchar(255) NULL, created_at timestamptz DEFAULT now() NULL, CONSTRAINT activity_logs_pkey PRIMARY KEY (id), CONSTRAINT activity_logs_activity_id_fkey FOREIGN KEY (activity_id) REFERENCES public.b2c_activities(id));

-- Permissions

ALTER TABLE public.activity_logs OWNER TO kcell_test_user;
GRANT ALL ON TABLE public.activity_logs TO kcell_test_user;




-- Permissions

GRANT ALL ON SCHEMA public TO pg_database_owner;
GRANT USAGE ON SCHEMA public TO public;