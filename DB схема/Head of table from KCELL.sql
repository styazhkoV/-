CREATE SCHEMA "client";

CREATE SCHEMA "import";

CREATE SCHEMA "users";

CREATE TABLE "client"."clients" (
  "id" bigint PRIMARY KEY,
  "client_type_id" bigint,
  "residency_id" bigint,
  "language_id" bigint,
  "city_region_id" bigint,
  "vip_status_id" bigint,
  "code_word" varchar(100),
  "credit_limit_increase_allowed" boolean DEFAULT false,
  "current_balance" numeric(38,2),
  "charged_amount" numeric(38,2),
  "remaining_balance" numeric(38,2),
  "has_corp_cabinet" boolean DEFAULT false,
  "has_mobile_app" boolean DEFAULT false,
  "is_active" boolean DEFAULT true,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now()),
  "status" varchar(255),
  "bin_iin" varchar(12) UNIQUE
);

CREATE TABLE "client"."clients_b2b" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint UNIQUE,
  "bin_iin" varchar(12) UNIQUE,
  "company_name" varchar(300),
  "logo_url" varchar(500),
  "segment_id" bigint,
  "industry_id" bigint,
  "category_id" bigint,
  "legal_form_id" bigint,
  "department_id" bigint,
  "acquisition_employee_id" bigint,
  "retention_employee_id" bigint,
  "acquisition_head_id" bigint,
  "retention_head_id" bigint,
  "payment_terms" varchar(200),
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now()),
  "contact_person_full_name" varchar(255),
  "contact_person_position" varchar(255),
  "email" varchar(255)
);

CREATE TABLE "client"."clients_b2c" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint UNIQUE,
  "iin" varchar(12) UNIQUE,
  "last_name" varchar(100),
  "first_name" varchar(100),
  "middle_name" varchar(100),
  "gender_id" bigint,
  "date_of_birth" date,
  "password_hash" varchar(255),
  "income_amount" numeric(18,2),
  "income_source_id" bigint,
  "marital_status_id" bigint,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now()),
  "phone_b2c" varchar(20),
  "email" varchar(255),
  "language" varchar(255),
  "residency" varchar(255),
  "secret_word" varchar(255)
);

CREATE TABLE "client"."individual_clients" (
  "id" bigint PRIMARY KEY,
  "bankrot_fl" boolean,
  "birth_date" varchar(255),
  "birth_place" varchar(255),
  "children_count" integer,
  "citizenship" varchar(50),
  "first_name" varchar(100),
  "gender" varchar(10),
  "iin" varchar(12),
  "iin_status" varchar(50),
  "last_name" varchar(100),
  "marital_status" varchar(50),
  "middle_name" varchar(100),
  "photo_url" varchar(50),
  "resident" boolean,
  "client_id" bigint UNIQUE
);

CREATE TABLE "client"."contacts" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "last_name" varchar(255),
  "first_name" varchar(255),
  "middle_name" varchar(255),
  "gender_id" bigint,
  "position" varchar(255),
  "residency_id" bigint,
  "code_word" varchar(255),
  "verification_password" varchar(255),
  "client_type_id" bigint,
  "role_id" bigint,
  "language_id" bigint,
  "date_of_birth" date,
  "do_not_disturb" boolean DEFAULT false,
  "is_active" boolean DEFAULT true,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."contracts" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "registration_number" varchar(255) UNIQUE,
  "start_date" date,
  "end_date" date,
  "contract_type_id" bigint,
  "status_id" bigint,
  "responsible_kcell_id" bigint,
  "responsible_contact_id" bigint,
  "billing_account_id" bigint,
  "balance" numeric(38,2) DEFAULT 0,
  "total_amount" numeric(38,2) DEFAULT 0,
  "payment_form_id" bigint,
  "is_debtor" boolean DEFAULT false,
  "residual_value" numeric(38,2),
  "currency_id" bigint,
  "parent_contract_id" bigint,
  "is_open_incomplete" boolean DEFAULT false,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now()),
  "contract_number" varchar(255)
);

CREATE TABLE "client"."billing_accounts" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "account_number" varchar(50) UNIQUE,
  "balance" numeric(38,2) DEFAULT 0,
  "debt_amount" numeric(38,2) DEFAULT 0,
  "credit_limit" numeric(38,2) DEFAULT 0,
  "remaining_limit" numeric(38,2) DEFAULT 0,
  "credit_limit_increase_allowed" boolean DEFAULT false,
  "is_active" boolean DEFAULT true,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."bank_details" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "bank_name" varchar(255),
  "bik" varchar(255),
  "account_number" varchar(50),
  "iban" varchar(255),
  "is_primary" boolean DEFAULT false,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now()),
  "account_owner" varchar(255)
);

CREATE TABLE "client"."authorized_persons" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "last_name" varchar(100),
  "first_name" varchar(100),
  "middle_name" varchar(100),
  "iin" varchar(12),
  "phone" varchar(20),
  "authority_description" varchar(255),
  "is_active" boolean DEFAULT true,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now()),
  "email" varchar(200),
  "verification_password" varchar(255)
);

CREATE TABLE "client"."powers_of_attorney" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "contact_id" bigint,
  "poa_type_id" bigint,
  "document_type_id" bigint,
  "start_date" date,
  "end_date" date,
  "status" varchar(255) DEFAULT 'active',
  "file_name" varchar(255),
  "file_path" varchar(255),
  "expiry_notification_sent" boolean DEFAULT false,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now()),
  "authorized_person_id" bigint
);

CREATE TABLE "client"."governing_bodies" (
  "id" bigint PRIMARY KEY,
  "client_name" varchar(255),
  "end_date" timestamptz,
  "governing_body_type" varchar(100),
  "is_actual" boolean,
  "role_position" varchar(100),
  "start_date" timestamptz,
  "client_id" bigint
);

CREATE TABLE "client"."subsidiaries" (
  "id" bigint PRIMARY KEY,
  "parent_client_id" bigint,
  "company_name" varchar(255),
  "bin" varchar(255),
  "city_region_id" bigint,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."client_addresses" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "address_type_id" bigint,
  "city_region_id" bigint,
  "full_address" text,
  "postal_code" varchar(255),
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now()),
  "actual_address" varchar(255),
  "legal_address" varchar(255)
);

CREATE TABLE "client"."client_contact" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "contact_type_id" bigint,
  "value" varchar(300),
  "is_primary" boolean DEFAULT false,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."client_id_documents" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "document_type_id" bigint,
  "document_number" varchar(50),
  "issued_by" varchar(300),
  "issue_date" date,
  "expiry_date" date,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."client_phone_numbers" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "phone_number" varchar(255),
  "brand_id" bigint,
  "is_active" boolean DEFAULT true,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."client_products" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "product_id" bigint,
  "activated_at" timestamp,
  "deactivated_at" timestamp,
  "is_active" boolean DEFAULT true,
  "created_at" timestamp DEFAULT (now()),
  "name" varchar(255)
);

CREATE TABLE "client"."client_requirements" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "description" text,
  "created_by" bigint,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."client_requirement_attachments" (
  "id" bigint PRIMARY KEY,
  "requirement_id" bigint,
  "file_name" varchar(255),
  "file_path" varchar(255),
  "file_size" bigint,
  "uploaded_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."client_restrictions" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "restriction_type_id" bigint,
  "description" varchar(255),
  "is_active" boolean DEFAULT true,
  "start_date" timestamp DEFAULT (now()),
  "end_date" timestamp,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."contact_addresses" (
  "id" bigint PRIMARY KEY,
  "contact_id" bigint,
  "address_type_id" bigint,
  "city_region_id" bigint,
  "full_address" text,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."contact_careers" (
  "id" bigint PRIMARY KEY,
  "contact_id" bigint,
  "company_name" varchar(255),
  "position" varchar(255),
  "start_date" date,
  "end_date" date,
  "is_current" boolean DEFAULT false,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."contact_contact" (
  "id" bigint PRIMARY KEY,
  "contact_id" bigint,
  "contact_type_id" bigint,
  "value" varchar(300),
  "is_primary" boolean DEFAULT false,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."contact_id_documents" (
  "id" bigint PRIMARY KEY,
  "contact_id" bigint,
  "document_type_id" bigint,
  "document_number" varchar(255),
  "issued_by" varchar(255),
  "expiry_date" date,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."contract_documents" (
  "id" bigint PRIMARY KEY,
  "contract_id" bigint,
  "document_type_id" bigint,
  "file_name" varchar(500),
  "file_path" varchar(1000),
  "file_size" bigint,
  "uploaded_by" bigint,
  "uploaded_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."contract_history" (
  "id" bigint PRIMARY KEY,
  "archived_at" timestamptz,
  "bin_iin" varchar(12),
  "borrower_name" varchar(255),
  "business_type" varchar(100),
  "client_account_code" varchar(255),
  "collection_status" varchar(50),
  "contract_end_date" timestamptz,
  "contract_number" varchar(100),
  "contract_state" varchar(255),
  "contract_status" varchar(50),
  "credit_amount" numeric(15,2),
  "credit_product_name" varchar(255),
  "credit_purpose" varchar(255),
  "credit_term_months" integer,
  "currency" varchar(3),
  "damu_guarantees" boolean,
  "delay_days" integer,
  "fine_amount" numeric(15,2),
  "general_agreement" varchar(100),
  "ifrs_portfolio_type" varchar(100),
  "ifrs_provision_interest" numeric(15,2),
  "ifrs_provision_interest_balance" numeric(15,2),
  "ifrs_provision_percentage" numeric(5,2),
  "ifrs_provision_principal" numeric(15,2),
  "ifrs_provision_principal_balance" numeric(15,2),
  "interest_debt" numeric(15,2),
  "interest_rate" numeric(6,2),
  "issue_date" timestamptz,
  "organizational_unit_id" bigint,
  "overdue_days_interest" integer,
  "overdue_days_principal" integer,
  "overdue_interest_debt" numeric(15,2),
  "overdue_principal_debt" numeric(15,2),
  "penalty_amount" numeric(15,2),
  "principal_debt" numeric(15,2),
  "product_code" varchar(255),
  "project_manager" varchar(255),
  "receivables_debt" numeric(15,2),
  "repayment_date" varchar(255),
  "restructuring_date" timestamptz,
  "statname" varchar(255),
  "client_id" bigint,
  "contract_id" bigint,
  "mark_id" bigint
);

CREATE TABLE "client"."contract_products" (
  "id" bigint PRIMARY KEY,
  "contract_id" bigint,
  "product_id" bigint,
  "service_start_date" date,
  "service_end_date" date,
  "quantity" integer DEFAULT 1,
  "one_time_fee" numeric(38,2) DEFAULT 0,
  "monthly_fee" numeric(38,2) DEFAULT 0,
  "promotion" varchar(300),
  "discount" numeric(38,2) DEFAULT 0,
  "total_amount" numeric(38,2) DEFAULT 0,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."contract_templates" (
  "id" bigint PRIMARY KEY,
  "contract_type_id" bigint,
  "template_name" varchar(200),
  "template_file_path" varchar(500),
  "is_active" boolean DEFAULT true,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."related_contracts" (
  "id" bigint PRIMARY KEY,
  "contract_id" bigint,
  "related_contract_id" bigint,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."identity_documents" (
  "id" bigint PRIMARY KEY,
  "document_code" varchar(50),
  "document_number" varchar(50),
  "document_scan_url" varchar(255),
  "document_series" varchar(50),
  "document_type" varchar(255),
  "expiry_date" timestamptz,
  "is_archived" boolean,
  "is_primary" boolean,
  "issue_date" timestamptz,
  "issued_by" varchar(255),
  "organizational_unit_id" bigint,
  "client_id" bigint
);

CREATE TABLE "client"."documents" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "document_type_id" bigint,
  "category" varchar(20),
  "status" varchar(255) DEFAULT 'active',
  "file_name" varchar(255),
  "file_path" varchar(255),
  "file_size" bigint,
  "uploaded_by" bigint,
  "uploaded_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."activities" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "activity_type" varchar(255),
  "subject" varchar(255),
  "description" text,
  "source" varchar(255),
  "source_id" bigint,
  "created_by" bigint,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."tickets" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "external_ticket_id" varchar(255),
  "status" varchar(255),
  "subject" varchar(255),
  "description" text,
  "assigned_to" bigint,
  "created_at" timestamp DEFAULT (now()),
  "updated_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."marks" (
  "id" bigint PRIMARY KEY,
  "code" varchar(255),
  "name" varchar(255),
  "type" varchar(255),
  "parent_id" bigint
);

CREATE TABLE "client"."products_services" (
  "id" bigint PRIMARY KEY,
  "name" varchar(255),
  "description" varchar(255),
  "product_type" varchar(255),
  "is_active" boolean DEFAULT true,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."special_tariff_plans" (
  "id" bigint PRIMARY KEY,
  "client_id" bigint,
  "product_id" bigint,
  "description" text,
  "is_active" boolean DEFAULT true,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."payment_history" (
  "tra_id" bigint PRIMARY KEY,
  "amount" numeric(15,2),
  "channel" varchar(255),
  "contract_number" varchar(255),
  "currency" varchar(255),
  "operation_code" varchar(255),
  "operation_name" varchar(255),
  "organizational_unit_id" bigint,
  "payment_date" date,
  "client_id" bigint,
  "contract_id" bigint
);

CREATE TABLE "client"."payment_schedule" (
  "id" bigint PRIMARY KEY,
  "commission_amount" numeric(15,2),
  "interest_amount" numeric(15,2),
  "payment_date" timestamptz,
  "principal_amount" numeric(15,2),
  "remaining_balance" numeric(15,2),
  "total_amount" numeric(15,2),
  "contract_id" bigint
);

CREATE TABLE "client"."credit_history_individual" (
  "id" bigint PRIMARY KEY,
  "amount" numeric(15,2),
  "close_date" timestamptz,
  "credit_type" varchar(100),
  "currency" varchar(3),
  "interest_rate" numeric(5,2),
  "issue_date" timestamptz,
  "status" varchar(50),
  "term_months" integer,
  "individual_client_id" bigint
);

CREATE TABLE "client"."communicate_result" (
  "id" bigint PRIMARY KEY,
  "appeal" varchar(255),
  "call_type" varchar(255),
  "channel" varchar(255),
  "comment" varchar(255),
  "contact_value" varchar(255),
  "create_date" timestamptz,
  "created_at" timestamptz,
  "created_by" uuid,
  "date" timestamptz,
  "deleted_at" timestamptz,
  "delivered_at" timestamptz,
  "direction" varchar(255),
  "message_type" varchar(255),
  "promise_date" timestamptz,
  "receiver_fio" varchar(255),
  "responsible" varchar(255),
  "result" varchar(255),
  "status" varchar(255),
  "subject" varchar(255),
  "task_number" varchar(255),
  "topic" varchar(255),
  "updated_at" timestamptz,
  "updated_by" uuid,
  "user_id" uuid,
  "client_id" bigint NOT NULL,
  "contact_id" bigint,
  "end_date" timestamptz,
  "start_date" timestamptz,
  "client_contact_id" bigint,
  "contract_id" bigint
);

CREATE TABLE "client"."call_result" (
  "id" bigint PRIMARY KEY,
  "campaign_id" bigint,
  "comment" varchar(255),
  "contact_person" varchar(255),
  "contact_type" varchar(255),
  "create_date" timestamptz,
  "executed_campaign_id" bigint,
  "phone_number" varchar(255),
  "promise_date" timestamptz,
  "reason_delay" varchar(255),
  "responsible" varchar(255),
  "result" varchar(255),
  "client_id" bigint
);

CREATE TABLE "client"."processing_results" (
  "id" bigint PRIMARY KEY,
  "comment" varchar(255),
  "next_processing_date" timestamptz,
  "processing_comment" varchar(255),
  "processing_date" timestamptz,
  "processing_result" varchar(500),
  "promise_date" timestamptz,
  "responsible" varchar(255),
  "task_number" varchar(255),
  "client_id" bigint NOT NULL,
  "contract_id" bigint NOT NULL
);

CREATE TABLE "client"."campaign" (
  "id" bigint PRIMARY KEY,
  "collection" varchar(255),
  "dep_id" varchar(255),
  "name" varchar(255),
  "segments" jsonb,
  "srv_dep_code" varchar(255),
  "username" jsonb
);

CREATE TABLE "client"."campaign_sort_fields" (
  "campaign_id" bigint NOT NULL,
  "field" varchar(255),
  "value" varchar(255)
);

CREATE TABLE "client"."campaign_task" (
  "id" bigint PRIMARY KEY,
  "aim" varchar(100),
  "auto_closed" boolean,
  "collection" varchar(255),
  "comment" varchar(255),
  "contract_number" varchar(255),
  "dep_id" varchar(255),
  "expiration_date" timestamptz,
  "is_active" boolean,
  "is_reactivate" boolean,
  "is_worked" boolean,
  "last_action_date" timestamptz,
  "priority" integer,
  "reactivation_datetime" timestamptz,
  "srv_dep_code" varchar(255),
  "stage_of_task" varchar(255),
  "status" varchar(255),
  "task_completion_date" timestamptz,
  "task_number" varchar(255),
  "task_seq" bigint,
  "type" varchar(255),
  "user_name" varchar(255),
  "client_id" bigint NOT NULL,
  "manager_id" bigint,
  "schedule_campaign_id" bigint
);

CREATE TABLE "client"."campaign_task_history" (
  "id" uuid PRIMARY KEY,
  "aim" varchar(100),
  "auto_closed" boolean,
  "campaign_task_id" bigint NOT NULL,
  "changed_at" timestamptz NOT NULL,
  "changed_by" varchar(100),
  "collection" varchar(255),
  "comment" varchar(255),
  "contract_number" varchar(255),
  "created_at" timestamptz,
  "created_by" varchar(255),
  "deleted_at" timestamptz,
  "dep_id" varchar(255),
  "expiration_date" timestamptz,
  "is_active" boolean,
  "is_reactivate" boolean,
  "is_worked" boolean,
  "last_action_date" timestamptz,
  "operation" varchar(10) NOT NULL,
  "priority" integer,
  "reactivation_datetime" timestamptz,
  "srv_dep_code" varchar(255),
  "stage_of_task" varchar(255),
  "status" varchar(255),
  "task_completion_date" timestamptz,
  "task_number" varchar(255),
  "task_seq" bigint,
  "type" varchar(255),
  "updated_at" timestamptz,
  "updated_by" varchar(255),
  "user_name" varchar(255),
  "client_id" bigint,
  "manager_id" bigint,
  "schedule_campaign_id" bigint
);

CREATE TABLE "client"."schedule_campaign" (
  "id" bigint PRIMARY KEY,
  "assign_manager_user_id" bigint,
  "channel" varchar(255),
  "collection" varchar(255),
  "dep_id" varchar(255),
  "end_time" timestamptz,
  "is_active" boolean,
  "last_activate_date" timestamptz,
  "name" varchar(255),
  "srv_dep_code" varchar(255),
  "start_time" timestamptz
);

CREATE TABLE "client"."schedule_campaign_days_of_week" (
  "schedule_campaign_id" bigint NOT NULL,
  "days_of_week" varchar(255)
);

CREATE TABLE "client"."schedule_campaign_robot" (
  "id" bigint PRIMARY KEY,
  "description" varchar(255),
  "robot_id" bigint,
  "robot_name" varchar(255),
  "schedule_campaign_settings_id" bigint
);

CREATE TABLE "client"."schedule_campaign_settings" (
  "id" bigint PRIMARY KEY,
  "robot_id" bigint,
  "skill_group_id" bigint,
  "user_id" bigint,
  "campaign_id" bigint,
  "schedule_campaign_id" bigint UNIQUE,
  "schedule_campaign_user_id" bigint UNIQUE
);

CREATE TABLE "client"."schedule_campaign_user" (
  "id" bigint PRIMARY KEY,
  "fio" text,
  "skill_group_id" bigint,
  "source" varchar(255),
  "user_id" bigint,
  "username" text,
  "schedule_campaign_settings_id" bigint UNIQUE
);

CREATE TABLE "client"."segment" (
  "id" bigint PRIMARY KEY,
  "collection" varchar(255),
  "conditions" jsonb,
  "dep_id" varchar(255),
  "description" varchar(255),
  "edit_date" timestamptz,
  "name" varchar(255)
);

CREATE TABLE "client"."skill_group" (
  "id" bigint PRIMARY KEY,
  "collection" varchar(255),
  "dep_id" varchar(255),
  "name" varchar(255),
  "srv_dep_code" varchar(255)
);

CREATE TABLE "client"."skill_group_users" (
  "skill_group_id" bigint NOT NULL,
  "fio" varchar(255),
  "user_id" bigint,
  "username" varchar(255)
);

CREATE TABLE "client"."managers_user" (
  "id" uuid PRIMARY KEY,
  "full_name" varchar(255),
  "position" varchar(100),
  "organizational_unit_id" bigint,
  "email" varchar(100),
  "phone" varchar(20),
  "role" varchar(50),
  "status" varchar(30),
  "created_at" timestamp,
  "updated_at" timestamp,
  "deleted_at" timestamp,
  "created_by" varchar(255),
  "updated_by" varchar(255)
);

CREATE TABLE "client"."result_managers" (
  "id" bigint PRIMARY KEY,
  "comment" varchar(255),
  "create_date" timestamp,
  "fio" varchar(255),
  "next_processing_date" timestamptz,
  "promise_date" timestamptz,
  "result" varchar(255),
  "result_date" timestamptz,
  "user_name" varchar(255),
  "client_id" bigint
);

CREATE TABLE "client"."priority_collection" (
  "id" bigint PRIMARY KEY,
  "color" varchar(255),
  "max_days_without_work" integer,
  "min_days_without_work" integer,
  "priority" integer,
  "status" varchar(255),
  "type" varchar(255)
);

CREATE TABLE "client"."poa_change_history" (
  "id" bigint PRIMARY KEY,
  "poa_id" bigint,
  "field_changed" varchar(255),
  "old_value" varchar(255),
  "new_value" varchar(255),
  "changed_by" bigint,
  "changed_at" timestamp DEFAULT (now())
);

CREATE TABLE "client"."upload_history" (
  "id" bigint PRIMARY KEY,
  "file_name" varchar(255)
);

CREATE TABLE "client"."ref_address_types" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_brands" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_cities_regions" (
  "id" bigint PRIMARY KEY,
  "name" varchar(255),
  "region" varchar(255)
);

CREATE TABLE "client"."ref_client_categories" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_client_types" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_contact_info_types" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_contact_roles" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100)
);

CREATE TABLE "client"."ref_contract_statuses" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_contract_types" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_currencies" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_departments" (
  "id" bigint PRIMARY KEY,
  "name" varchar(200) NOT NULL,
  "parent_id" bigint
);

CREATE TABLE "client"."ref_document_types" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100)
);

CREATE TABLE "client"."ref_genders" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_id_document_types" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_income_sources" (
  "id" bigint PRIMARY KEY,
  "name" varchar(200)
);

CREATE TABLE "client"."ref_industries" (
  "id" bigint PRIMARY KEY,
  "name" varchar(100)
);

CREATE TABLE "client"."ref_languages" (
  "id" bigint PRIMARY KEY,
  "code" varchar(255) UNIQUE,
  "name" varchar(255)
);

CREATE TABLE "client"."ref_legal_forms" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100)
);

CREATE TABLE "client"."ref_marital_statuses" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100)
);

CREATE TABLE "client"."ref_payment_forms" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100)
);

CREATE TABLE "client"."ref_poa_types" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100)
);

CREATE TABLE "client"."ref_residencies" (
  "id" bigint PRIMARY KEY,
  "code" varchar(255) UNIQUE,
  "name" varchar(255)
);

CREATE TABLE "client"."ref_restriction_types" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(100) NOT NULL
);

CREATE TABLE "client"."ref_segments" (
  "id" bigint PRIMARY KEY,
  "name" varchar(100)
);

CREATE TABLE "client"."ref_vip_statuses" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) UNIQUE,
  "name" varchar(255) NOT NULL
);

CREATE TABLE "import"."aliases" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "source" varchar NOT NULL,
  "target" varchar NOT NULL,
  "ref_table" varchar NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT (now())
);

CREATE TABLE "import"."field_mappings" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "field_name" varchar NOT NULL,
  "table_name" varchar NOT NULL,
  "ru_label" varchar NOT NULL,
  "is_alias" boolean NOT NULL DEFAULT false,
  "alias_for_field" varchar,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "is_active" boolean NOT NULL DEFAULT true,
  "data_type" varchar
);

CREATE TABLE "import"."import_batches" (
  "id" uuid PRIMARY KEY DEFAULT (gen_random_uuid()),
  "session_id" uuid NOT NULL,
  "status" varchar NOT NULL DEFAULT 'active',
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "completed_at" timestamptz,
  "total_rows" integer NOT NULL DEFAULT 0,
  "processed_rows" integer NOT NULL DEFAULT 0,
  "created_count" integer NOT NULL DEFAULT 0,
  "updated_count" integer NOT NULL DEFAULT 0,
  "error_count" integer NOT NULL DEFAULT 0,
  "skipped_count" integer NOT NULL DEFAULT 0,
  "error_message" text
);

CREATE TABLE "import"."import_errors" (
  "id" uuid PRIMARY KEY DEFAULT (gen_random_uuid()),
  "session_id" uuid NOT NULL,
  "row_number" integer NOT NULL,
  "column_name" varchar,
  "error_type" varchar NOT NULL,
  "error_message" text NOT NULL,
  "raw_value" text,
  "batch_id" uuid,
  "match_method" varchar(20)
);

CREATE TABLE "import"."import_sessions" (
  "id" uuid PRIMARY KEY DEFAULT (gen_random_uuid()),
  "filename" varchar NOT NULL,
  "format" varchar NOT NULL,
  "file_path" varchar NOT NULL,
  "size_bytes" integer NOT NULL,
  "encoding" varchar,
  "delimiter" varchar,
  "columns" varchar NOT NULL,
  "row_count" integer NOT NULL,
  "status" varchar NOT NULL DEFAULT 'pending',
  "mapping_config" jsonb,
  "created_at" timestamp NOT NULL DEFAULT (now()),
  "processed_rows" integer NOT NULL DEFAULT 0,
  "created_count" integer NOT NULL DEFAULT 0,
  "updated_count" integer NOT NULL DEFAULT 0,
  "error_count" integer NOT NULL DEFAULT 0,
  "skipped_count" integer NOT NULL DEFAULT 0,
  "started_at" timestamptz,
  "finished_at" timestamptz,
  "dedup_strategy" varchar,
  "dedup_field" varchar,
  "error_message" text,
  "is_dry_run" boolean NOT NULL DEFAULT false,
  "blank_policy" varchar,
  "protected_fields" jsonb,
  "batch_id" uuid,
  "target_entity" varchar,
  "tags" jsonb,
  "owner_assignment" varchar,
  "processed_file_rows" integer NOT NULL DEFAULT 0,
  "db_rows_written" integer NOT NULL DEFAULT 0
);

CREATE TABLE "import"."import_snapshots" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "batch_id" uuid NOT NULL,
  "target_table" varchar NOT NULL,
  "record_id" integer NOT NULL,
  "operation" varchar NOT NULL,
  "old_values" jsonb,
  "new_values" jsonb,
  "created_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "import"."synonyms" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "synonym" varchar NOT NULL,
  "table_name" varchar NOT NULL,
  "field_name" varchar NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT (now())
);

CREATE TABLE "users"."users" (
  "id" bigint PRIMARY KEY,
  "fio" varchar(255),
  "username" varchar(255) UNIQUE,
  "email" varchar(255),
  "phone" varchar(255),
  "password" varchar(255),
  "atc_password" varchar(255),
  "status" varchar(255),
  "description" varchar(255),
  "structure" varchar(255),
  "collection" varchar(255),
  "module" varchar(255),
  "avatar_base64" oid,
  "avatar_uuid" varchar(255),
  "keycloak_id" uuid,
  "role_id" bigint,
  "organization_id" bigint,
  "org_contains_all_children" boolean DEFAULT false,
  "created_at" timestamptz,
  "updated_at" timestamptz,
  "deleted_at" timestamptz,
  "created_by" uuid,
  "updated_by" uuid
);

CREATE TABLE "users"."role" (
  "id" bigint PRIMARY KEY,
  "code" varchar(255) UNIQUE,
  "description" varchar(255),
  "created_at" timestamptz,
  "updated_at" timestamptz,
  "deleted_at" timestamptz,
  "created_by" uuid,
  "updated_by" uuid
);

CREATE TABLE "users"."role_subordination" (
  "id" uuid PRIMARY KEY,
  "id_role_parent" bigint NOT NULL,
  "id_role_child" bigint NOT NULL,
  "created_at" timestamptz,
  "updated_at" timestamptz,
  "deleted_at" timestamptz,
  "created_by" uuid,
  "updated_by" uuid
);

CREATE TABLE "users"."role_permissions" (
  "role_id" bigint NOT NULL,
  "api_id" bigint NOT NULL,
  "create" boolean,
  "read" boolean,
  "update" boolean,
  "delete" boolean,
  PRIMARY KEY ("role_id", "api_id")
);

CREATE TABLE "users"."api" (
  "id" bigint PRIMARY KEY,
  "code" varchar(255),
  "description" varchar(255),
  "root_path" varchar(255),
  "created_at" timestamptz,
  "updated_at" timestamptz,
  "deleted_at" timestamptz,
  "created_by" uuid,
  "updated_by" uuid
);

CREATE TABLE "users"."organizational_units" (
  "id" bigint PRIMARY KEY,
  "code" varchar(20) NOT NULL,
  "name" varchar(200) NOT NULL,
  "level" integer NOT NULL,
  "parent_id" bigint,
  "created_at" timestamp,
  "updated_at" timestamp,
  "deleted_at" timestamp,
  "created_by" uuid,
  "updated_by" uuid
);

CREATE TABLE "users"."user_organizational_units" (
  "user_id" bigint NOT NULL,
  "organizational_unit_id" bigint NOT NULL
);

CREATE TABLE "users"."user_srv_dep_codes" (
  "user_id" bigint NOT NULL,
  "srv_dep_code" varchar(255)
);

CREATE TABLE "users"."user_status_log" (
  "id" bigint PRIMARY KEY,
  "user_id" bigint NOT NULL,
  "status" varchar(255) NOT NULL,
  "start_time" timestamptz NOT NULL,
  "end_time" timestamptz
);

CREATE TABLE "users"."token" (
  "id" bigint PRIMARY KEY,
  "user_id" bigint,
  "token" varchar(255),
  "expiry_date" timestamptz
);

CREATE TABLE "users"."dashboards" (
  "id" bigint PRIMARY KEY,
  "key" varchar(255) UNIQUE NOT NULL,
  "name" varchar(255) NOT NULL,
  "status" varchar(255)
);

CREATE TABLE "users"."dashboard_attributes" (
  "id" bigint PRIMARY KEY,
  "dashboard_id" bigint NOT NULL,
  "name" varchar(255) NOT NULL,
  "type" varchar(255) NOT NULL,
  "value" double precision NOT NULL,
  "difference" double precision,
  "unit" varchar(255)
);

CREATE TABLE "users"."dashboard_role" (
  "id" bigint PRIMARY KEY,
  "dashboard_id" bigint NOT NULL,
  "role_id" bigint NOT NULL
);

COMMENT ON COLUMN "client"."clients"."client_type_id" IS 'Тип клиента';

COMMENT ON COLUMN "client"."clients"."residency_id" IS 'Резидентство';

COMMENT ON COLUMN "client"."clients"."language_id" IS 'Язык обслуживания';

COMMENT ON COLUMN "client"."clients"."city_region_id" IS 'Город/Регион';

COMMENT ON COLUMN "client"."clients"."vip_status_id" IS 'VIP статус';

COMMENT ON COLUMN "client"."clients"."code_word" IS 'Кодовое слово';

COMMENT ON COLUMN "client"."clients"."credit_limit_increase_allowed" IS 'Доступ на увеличение кредитного лимита';

COMMENT ON COLUMN "client"."clients"."current_balance" IS 'Текущий баланс';

COMMENT ON COLUMN "client"."clients"."charged_amount" IS 'Начислено';

COMMENT ON COLUMN "client"."clients"."remaining_balance" IS 'Остаток';

COMMENT ON COLUMN "client"."clients"."has_corp_cabinet" IS 'Наличие корп. кабинета';

COMMENT ON COLUMN "client"."clients"."has_mobile_app" IS 'Наличие мобильного приложения';

COMMENT ON COLUMN "client"."clients"."status" IS 'Статус';

COMMENT ON COLUMN "client"."clients"."bin_iin" IS 'БИН/ИИН';

COMMENT ON COLUMN "client"."clients_b2b"."client_id" IS 'Связь 1:1 с базовой карточкой';

COMMENT ON COLUMN "client"."clients_b2b"."bin_iin" IS 'БИН/ИИН';

COMMENT ON COLUMN "client"."clients_b2b"."company_name" IS 'Компания';

COMMENT ON COLUMN "client"."clients_b2b"."logo_url" IS 'Логотип компании';

COMMENT ON COLUMN "client"."clients_b2b"."segment_id" IS 'Сегмент';

COMMENT ON COLUMN "client"."clients_b2b"."industry_id" IS 'Индустрия';

COMMENT ON COLUMN "client"."clients_b2b"."category_id" IS 'Категория ABC';

COMMENT ON COLUMN "client"."clients_b2b"."legal_form_id" IS 'ОПФ';

COMMENT ON COLUMN "client"."clients_b2b"."department_id" IS 'Направление/Отдел';

COMMENT ON COLUMN "client"."clients_b2b"."acquisition_employee_id" IS 'Ответственный Acquisition';

COMMENT ON COLUMN "client"."clients_b2b"."retention_employee_id" IS 'Ответственный Retention';

COMMENT ON COLUMN "client"."clients_b2b"."acquisition_head_id" IS 'Руководитель Acquisition';

COMMENT ON COLUMN "client"."clients_b2b"."retention_head_id" IS 'Руководитель Retention';

COMMENT ON COLUMN "client"."clients_b2b"."payment_terms" IS 'Сроки оплаты';

COMMENT ON COLUMN "client"."clients_b2b"."contact_person_full_name" IS 'Контактное лицо';

COMMENT ON COLUMN "client"."clients_b2b"."contact_person_position" IS 'Должность контактного лица';

COMMENT ON COLUMN "client"."clients_b2b"."email" IS 'Email';

COMMENT ON COLUMN "client"."clients_b2c"."client_id" IS 'Связь 1:1 с базовой карточкой';

COMMENT ON COLUMN "client"."clients_b2c"."iin" IS 'ИИН';

COMMENT ON COLUMN "client"."clients_b2c"."last_name" IS 'Фамилия';

COMMENT ON COLUMN "client"."clients_b2c"."first_name" IS 'Имя';

COMMENT ON COLUMN "client"."clients_b2c"."middle_name" IS 'Отчество';

COMMENT ON COLUMN "client"."clients_b2c"."gender_id" IS 'Пол';

COMMENT ON COLUMN "client"."clients_b2c"."date_of_birth" IS 'Дата рождения';

COMMENT ON COLUMN "client"."clients_b2c"."password_hash" IS 'Пароль';

COMMENT ON COLUMN "client"."clients_b2c"."income_amount" IS 'Сумма дохода';

COMMENT ON COLUMN "client"."clients_b2c"."income_source_id" IS 'Источник дохода';

COMMENT ON COLUMN "client"."clients_b2c"."marital_status_id" IS 'Семейное положение';

COMMENT ON COLUMN "client"."contacts"."client_id" IS 'Клиент-владелец контакта';

COMMENT ON COLUMN "client"."contacts"."last_name" IS 'Фамилия';

COMMENT ON COLUMN "client"."contacts"."first_name" IS 'Имя';

COMMENT ON COLUMN "client"."contacts"."middle_name" IS 'Отчество';

COMMENT ON COLUMN "client"."contacts"."gender_id" IS 'Пол';

COMMENT ON COLUMN "client"."contacts"."position" IS 'Должность';

COMMENT ON COLUMN "client"."contacts"."residency_id" IS 'Резидентство';

COMMENT ON COLUMN "client"."contacts"."code_word" IS 'Кодовое слово';

COMMENT ON COLUMN "client"."contacts"."verification_password" IS 'Пароль на верификацию';

COMMENT ON COLUMN "client"."contacts"."client_type_id" IS 'Тип клиента';

COMMENT ON COLUMN "client"."contacts"."role_id" IS 'Роль контактного лица';

COMMENT ON COLUMN "client"."contacts"."language_id" IS 'Язык обслуживания';

COMMENT ON COLUMN "client"."contacts"."date_of_birth" IS 'Дата рождения';

COMMENT ON COLUMN "client"."contacts"."do_not_disturb" IS 'Не тревожить';

COMMENT ON COLUMN "client"."contracts"."client_id" IS 'Клиент';

COMMENT ON COLUMN "client"."contracts"."registration_number" IS 'Регистрационный номер';

COMMENT ON COLUMN "client"."contracts"."start_date" IS 'Дата начала';

COMMENT ON COLUMN "client"."contracts"."end_date" IS 'Дата окончания';

COMMENT ON COLUMN "client"."contracts"."contract_type_id" IS 'Тип договора';

COMMENT ON COLUMN "client"."contracts"."status_id" IS 'Статус';

COMMENT ON COLUMN "client"."contracts"."responsible_kcell_id" IS 'Ответственный Кселл';

COMMENT ON COLUMN "client"."contracts"."responsible_contact_id" IS 'Ответственный клиента';

COMMENT ON COLUMN "client"."contracts"."billing_account_id" IS 'Лицевой счет';

COMMENT ON COLUMN "client"."contracts"."balance" IS 'Баланс';

COMMENT ON COLUMN "client"."contracts"."total_amount" IS 'Общая сумма';

COMMENT ON COLUMN "client"."contracts"."payment_form_id" IS 'Форма оплаты';

COMMENT ON COLUMN "client"."contracts"."is_debtor" IS 'Должник';

COMMENT ON COLUMN "client"."contracts"."residual_value" IS 'Остаточная стоимость';

COMMENT ON COLUMN "client"."contracts"."currency_id" IS 'Валюта';

COMMENT ON COLUMN "client"."contracts"."parent_contract_id" IS 'Родительский договор';

COMMENT ON COLUMN "client"."contracts"."is_open_incomplete" IS 'Открытый незавершенный';

COMMENT ON COLUMN "client"."billing_accounts"."account_number" IS 'Номер лицевого счета';

COMMENT ON COLUMN "client"."billing_accounts"."balance" IS 'Баланс';

COMMENT ON COLUMN "client"."billing_accounts"."debt_amount" IS 'Задолженность';

COMMENT ON COLUMN "client"."billing_accounts"."credit_limit" IS 'Кредитный лимит';

COMMENT ON COLUMN "client"."billing_accounts"."remaining_limit" IS 'Остаток лимита';

COMMENT ON COLUMN "client"."billing_accounts"."credit_limit_increase_allowed" IS 'Доступ на увеличение лимита';

COMMENT ON COLUMN "client"."bank_details"."bank_name" IS 'Банк';

COMMENT ON COLUMN "client"."bank_details"."bik" IS 'БИК';

COMMENT ON COLUMN "client"."bank_details"."account_number" IS 'Номер счета';

COMMENT ON COLUMN "client"."bank_details"."iban" IS 'IBAN';

COMMENT ON COLUMN "client"."bank_details"."is_primary" IS 'Основной счет';

COMMENT ON COLUMN "client"."authorized_persons"."client_id" IS 'Клиент-владелец';

COMMENT ON COLUMN "client"."authorized_persons"."last_name" IS 'Фамилия';

COMMENT ON COLUMN "client"."authorized_persons"."first_name" IS 'Имя';

COMMENT ON COLUMN "client"."authorized_persons"."middle_name" IS 'Отчество';

COMMENT ON COLUMN "client"."authorized_persons"."iin" IS 'ИИН';

COMMENT ON COLUMN "client"."authorized_persons"."phone" IS 'Телефон';

COMMENT ON COLUMN "client"."authorized_persons"."authority_description" IS 'Полномочия';

COMMENT ON COLUMN "client"."authorized_persons"."email" IS 'Email уполномоченного лица';

COMMENT ON COLUMN "client"."authorized_persons"."verification_password" IS 'Пароль для верификации';

COMMENT ON COLUMN "client"."powers_of_attorney"."client_id" IS 'Клиент';

COMMENT ON COLUMN "client"."powers_of_attorney"."contact_id" IS 'Контактное лицо (фильтр по контактам клиента)';

COMMENT ON COLUMN "client"."powers_of_attorney"."poa_type_id" IS 'Вид доверенности';

COMMENT ON COLUMN "client"."powers_of_attorney"."document_type_id" IS 'Тип документа';

COMMENT ON COLUMN "client"."powers_of_attorney"."start_date" IS 'Дата начала';

COMMENT ON COLUMN "client"."powers_of_attorney"."end_date" IS 'Дата окончания';

COMMENT ON COLUMN "client"."powers_of_attorney"."status" IS 'Статус документа';

COMMENT ON COLUMN "client"."powers_of_attorney"."file_name" IS 'Имя файла';

COMMENT ON COLUMN "client"."powers_of_attorney"."file_path" IS 'Путь к файлу';

COMMENT ON COLUMN "client"."powers_of_attorney"."expiry_notification_sent" IS 'Уведомление об истечении';

COMMENT ON COLUMN "client"."powers_of_attorney"."authorized_person_id" IS 'Уполномоченное лицо';

COMMENT ON COLUMN "client"."subsidiaries"."parent_client_id" IS 'Родительская компания';

COMMENT ON COLUMN "client"."subsidiaries"."company_name" IS 'Дочерняя компания';

COMMENT ON COLUMN "client"."subsidiaries"."bin" IS 'БИН';

COMMENT ON COLUMN "client"."subsidiaries"."city_region_id" IS 'Город';

COMMENT ON COLUMN "client"."client_addresses"."address_type_id" IS 'Юридический, фактический, для корреспонденции';

COMMENT ON COLUMN "client"."client_addresses"."city_region_id" IS 'Город/регион';

COMMENT ON COLUMN "client"."client_addresses"."full_address" IS 'Полный адрес';

COMMENT ON COLUMN "client"."client_addresses"."postal_code" IS 'Почтовый индекс';

COMMENT ON COLUMN "client"."client_contact"."client_id" IS 'Клиент';

COMMENT ON COLUMN "client"."client_contact"."contact_type_id" IS 'Тип контакта';

COMMENT ON COLUMN "client"."client_contact"."value" IS 'Значение контакта';

COMMENT ON COLUMN "client"."client_contact"."is_primary" IS 'Основной контакт';

COMMENT ON COLUMN "client"."client_id_documents"."document_type_id" IS 'Тип документа: паспорт, УДЛ';

COMMENT ON COLUMN "client"."client_id_documents"."document_number" IS 'Номер документа';

COMMENT ON COLUMN "client"."client_id_documents"."issued_by" IS 'Кем выдан';

COMMENT ON COLUMN "client"."client_id_documents"."issue_date" IS 'Дата выдачи';

COMMENT ON COLUMN "client"."client_id_documents"."expiry_date" IS 'Срок действия';

COMMENT ON COLUMN "client"."client_phone_numbers"."phone_number" IS 'Номер телефона';

COMMENT ON COLUMN "client"."client_phone_numbers"."brand_id" IS 'Бренд: Актив / Кселл';

COMMENT ON COLUMN "client"."client_phone_numbers"."is_active" IS 'Активен';

COMMENT ON COLUMN "client"."client_products"."activated_at" IS 'Дата активации';

COMMENT ON COLUMN "client"."client_products"."deactivated_at" IS 'Дата деактивации';

COMMENT ON COLUMN "client"."client_requirements"."client_id" IS 'Клиент';

COMMENT ON COLUMN "client"."client_requirements"."description" IS 'Текст требования (ручной ввод)';

COMMENT ON COLUMN "client"."client_requirements"."created_by" IS 'Кем создано';

COMMENT ON COLUMN "client"."client_requirement_attachments"."requirement_id" IS 'Требование';

COMMENT ON COLUMN "client"."client_requirement_attachments"."file_name" IS 'Имя файла';

COMMENT ON COLUMN "client"."client_requirement_attachments"."file_path" IS 'Путь к файлу';

COMMENT ON COLUMN "client"."client_requirement_attachments"."file_size" IS 'Размер файла, байт';

COMMENT ON COLUMN "client"."client_requirement_attachments"."uploaded_at" IS 'Дата загрузки';

COMMENT ON COLUMN "client"."client_restrictions"."client_id" IS 'Клиент';

COMMENT ON COLUMN "client"."client_restrictions"."restriction_type_id" IS 'Тип: стоп-лист, конфликты по продуктам, задолженность';

COMMENT ON COLUMN "client"."client_restrictions"."description" IS 'Описание ограничения';

COMMENT ON COLUMN "client"."client_restrictions"."start_date" IS 'Дата начала ограничения';

COMMENT ON COLUMN "client"."client_restrictions"."end_date" IS 'Дата окончания ограничения';

COMMENT ON COLUMN "client"."contact_addresses"."address_type_id" IS 'Тип адреса';

COMMENT ON COLUMN "client"."contact_addresses"."city_region_id" IS 'Город/регион';

COMMENT ON COLUMN "client"."contact_addresses"."full_address" IS 'Полный адрес';

COMMENT ON COLUMN "client"."contact_careers"."company_name" IS 'Название компании';

COMMENT ON COLUMN "client"."contact_careers"."position" IS 'Должность';

COMMENT ON COLUMN "client"."contact_careers"."start_date" IS 'Дата начала';

COMMENT ON COLUMN "client"."contact_careers"."end_date" IS 'Дата окончания';

COMMENT ON COLUMN "client"."contact_careers"."is_current" IS 'Текущее место работы';

COMMENT ON COLUMN "client"."contact_contact"."contact_id" IS 'Контактное лицо';

COMMENT ON COLUMN "client"."contact_contact"."contact_type_id" IS 'Тип контакта';

COMMENT ON COLUMN "client"."contact_contact"."value" IS 'Значение контакта';

COMMENT ON COLUMN "client"."contact_contact"."is_primary" IS 'Основной контакт';

COMMENT ON COLUMN "client"."contact_id_documents"."document_type_id" IS 'Тип документа';

COMMENT ON COLUMN "client"."contact_id_documents"."document_number" IS 'Номер документа';

COMMENT ON COLUMN "client"."contact_id_documents"."issued_by" IS 'Кем выдан';

COMMENT ON COLUMN "client"."contact_id_documents"."expiry_date" IS 'Срок действия';

COMMENT ON COLUMN "client"."contract_documents"."contract_id" IS 'Договор';

COMMENT ON COLUMN "client"."contract_documents"."document_type_id" IS 'Тип документа';

COMMENT ON COLUMN "client"."contract_documents"."file_name" IS 'Имя файла';

COMMENT ON COLUMN "client"."contract_documents"."file_path" IS 'Путь к файлу';

COMMENT ON COLUMN "client"."contract_documents"."file_size" IS 'Размер файла, байт';

COMMENT ON COLUMN "client"."contract_documents"."uploaded_by" IS 'Кем загружен';

COMMENT ON COLUMN "client"."contract_documents"."uploaded_at" IS 'Дата загрузки';

COMMENT ON COLUMN "client"."contract_products"."product_id" IS 'Продукт';

COMMENT ON COLUMN "client"."contract_products"."service_start_date" IS 'Дата начала предоставления услуги';

COMMENT ON COLUMN "client"."contract_products"."service_end_date" IS 'Дата окончания предоставления услуги';

COMMENT ON COLUMN "client"."contract_products"."quantity" IS 'Количество';

COMMENT ON COLUMN "client"."contract_products"."one_time_fee" IS 'Стоимость ЕП (единовременная плата)';

COMMENT ON COLUMN "client"."contract_products"."monthly_fee" IS 'Стоимость АП (абонентская плата)';

COMMENT ON COLUMN "client"."contract_products"."promotion" IS 'Акция';

COMMENT ON COLUMN "client"."contract_products"."discount" IS 'Скидка, %';

COMMENT ON COLUMN "client"."contract_products"."total_amount" IS 'Общая сумма';

COMMENT ON COLUMN "client"."contract_templates"."contract_type_id" IS 'Тип договора';

COMMENT ON COLUMN "client"."contract_templates"."template_name" IS 'Название шаблона';

COMMENT ON COLUMN "client"."contract_templates"."template_file_path" IS 'Путь к файлу шаблона для скачивания';

COMMENT ON COLUMN "client"."related_contracts"."contract_id" IS 'Договор';

COMMENT ON COLUMN "client"."related_contracts"."related_contract_id" IS 'Связанный договор';

COMMENT ON COLUMN "client"."documents"."client_id" IS 'Клиент';

COMMENT ON COLUMN "client"."documents"."document_type_id" IS 'Тип документа';

COMMENT ON COLUMN "client"."documents"."category" IS 'Категория';

COMMENT ON COLUMN "client"."documents"."status" IS 'Статус';

COMMENT ON COLUMN "client"."documents"."file_name" IS 'Имя файла';

COMMENT ON COLUMN "client"."documents"."file_path" IS 'Путь к файлу';

COMMENT ON COLUMN "client"."documents"."file_size" IS 'Размер файла';

COMMENT ON COLUMN "client"."documents"."uploaded_by" IS 'Кем загружен';

COMMENT ON COLUMN "client"."documents"."uploaded_at" IS 'Дата загрузки';

COMMENT ON COLUMN "client"."activities"."client_id" IS 'Клиент';

COMMENT ON COLUMN "client"."activities"."activity_type" IS 'Тип активности';

COMMENT ON COLUMN "client"."activities"."subject" IS 'Тема';

COMMENT ON COLUMN "client"."activities"."description" IS 'Описание';

COMMENT ON COLUMN "client"."activities"."source" IS 'Источник';

COMMENT ON COLUMN "client"."activities"."source_id" IS 'ID источника';

COMMENT ON COLUMN "client"."activities"."created_by" IS 'Кем создано';

COMMENT ON COLUMN "client"."tickets"."client_id" IS 'Клиент';

COMMENT ON COLUMN "client"."tickets"."external_ticket_id" IS 'ID тикета SAO';

COMMENT ON COLUMN "client"."tickets"."status" IS 'Статус';

COMMENT ON COLUMN "client"."tickets"."subject" IS 'Тема';

COMMENT ON COLUMN "client"."tickets"."description" IS 'Описание';

COMMENT ON COLUMN "client"."tickets"."assigned_to" IS 'Назначено на';

COMMENT ON COLUMN "client"."products_services"."name" IS 'Наименование продукта/услуги';

COMMENT ON COLUMN "client"."products_services"."description" IS 'Описание';

COMMENT ON COLUMN "client"."products_services"."product_type" IS 'Тип: продукт, услуга, устройство';

COMMENT ON COLUMN "client"."special_tariff_plans"."product_id" IS 'Доступная услуга/устройство';

COMMENT ON COLUMN "client"."special_tariff_plans"."description" IS 'Описание спец. условий';

COMMENT ON COLUMN "client"."poa_change_history"."poa_id" IS 'Доверенность';

COMMENT ON COLUMN "client"."poa_change_history"."field_changed" IS 'Измененное поле';

COMMENT ON COLUMN "client"."poa_change_history"."old_value" IS 'Старое значение';

COMMENT ON COLUMN "client"."poa_change_history"."new_value" IS 'Новое значение';

COMMENT ON COLUMN "client"."poa_change_history"."changed_by" IS 'Кем изменено';

COMMENT ON COLUMN "client"."poa_change_history"."changed_at" IS 'Дата изменения';

COMMENT ON COLUMN "client"."ref_address_types"."code" IS 'Юридический, фактический, для корреспонденции';

COMMENT ON COLUMN "client"."ref_brands"."code" IS 'Актив, Кселл';

COMMENT ON COLUMN "client"."ref_cities_regions"."name" IS 'Город';

COMMENT ON COLUMN "client"."ref_cities_regions"."region" IS 'Регион';

COMMENT ON COLUMN "client"."ref_client_categories"."code" IS 'Категория ABC';

COMMENT ON COLUMN "client"."ref_client_types"."code" IS 'Потенциальный, Бывший, B2B, B2C, Партнёр, Агент';

COMMENT ON COLUMN "client"."ref_contact_info_types"."code" IS 'phone, email, whatsapp, telegram и др.';

COMMENT ON COLUMN "client"."ref_contact_roles"."name" IS 'Роль контактного лица';

COMMENT ON COLUMN "client"."ref_contract_statuses"."code" IS 'Подготовка, Действующий, Расторгнут';

COMMENT ON COLUMN "client"."ref_contract_types"."code" IS 'Договор, Спецификация, ДС';

COMMENT ON COLUMN "client"."ref_currencies"."code" IS 'KZT, USD, EUR и др.';

COMMENT ON COLUMN "client"."ref_departments"."parent_id" IS 'Иерархия: Направление > Сектор > Отдел';

COMMENT ON COLUMN "client"."ref_document_types"."name" IS 'Тип документа в архиве';

COMMENT ON COLUMN "client"."ref_id_document_types"."code" IS 'Паспорт, УДЛ и др.';

COMMENT ON COLUMN "client"."ref_income_sources"."name" IS 'Источник дохода';

COMMENT ON COLUMN "client"."ref_industries"."name" IS 'Индустрия';

COMMENT ON COLUMN "client"."ref_languages"."name" IS 'Язык обслуживания';

COMMENT ON COLUMN "client"."ref_legal_forms"."name" IS 'ОПФ — организационно-правовая форма';

COMMENT ON COLUMN "client"."ref_marital_statuses"."name" IS 'Семейное положение';

COMMENT ON COLUMN "client"."ref_payment_forms"."name" IS 'Форма оплаты: кредит и т.д.';

COMMENT ON COLUMN "client"."ref_poa_types"."name" IS 'Вид доверенности';

COMMENT ON COLUMN "client"."ref_residencies"."name" IS 'Резидент / Нерезидент';

COMMENT ON COLUMN "client"."ref_restriction_types"."code" IS 'Стоп-лист, конфликт по продуктам, задолженность';

COMMENT ON COLUMN "client"."ref_segments"."name" IS 'Сегмент клиента';

COMMENT ON COLUMN "client"."ref_vip_statuses"."code" IS 'TOP / VIP / не заполнено';

COMMENT ON COLUMN "users"."users"."id" IS 'sequence users_id_seq';

COMMENT ON COLUMN "users"."users"."fio" IS 'ФИО';

COMMENT ON COLUMN "users"."users"."username" IS 'Логин';

COMMENT ON COLUMN "users"."users"."email" IS 'Email';

COMMENT ON COLUMN "users"."users"."phone" IS 'Телефон';

COMMENT ON COLUMN "users"."users"."password" IS 'Пароль';

COMMENT ON COLUMN "users"."users"."atc_password" IS 'Пароль АТС';

COMMENT ON COLUMN "users"."users"."status" IS 'Статус (ACTIVE, ON_CALL и др.)';

COMMENT ON COLUMN "users"."users"."description" IS 'Описание';

COMMENT ON COLUMN "users"."users"."structure" IS 'Структура';

COMMENT ON COLUMN "users"."users"."collection" IS 'Коллекция';

COMMENT ON COLUMN "users"."users"."module" IS 'Модуль';

COMMENT ON COLUMN "users"."users"."avatar_base64" IS 'Аватар (binary)';

COMMENT ON COLUMN "users"."users"."avatar_uuid" IS 'UUID аватара';

COMMENT ON COLUMN "users"."users"."keycloak_id" IS 'ID в Keycloak';

COMMENT ON COLUMN "users"."users"."role_id" IS 'Роль';

COMMENT ON COLUMN "users"."users"."organization_id" IS 'Организационная единица';

COMMENT ON COLUMN "users"."role"."id" IS 'sequence users.role_id_seq';

COMMENT ON COLUMN "users"."role"."code" IS 'Код роли (ROLE_ADMIN, KAE_SME_USR и др.)';

COMMENT ON COLUMN "users"."role"."description" IS 'Описание роли';

COMMENT ON COLUMN "users"."role_subordination"."id_role_parent" IS 'Родительская роль';

COMMENT ON COLUMN "users"."role_subordination"."id_role_child" IS 'Дочерняя роль';

COMMENT ON COLUMN "users"."api"."code" IS 'Код API-раздела';

COMMENT ON COLUMN "users"."api"."description" IS 'Описание';

COMMENT ON COLUMN "users"."api"."root_path" IS 'Корневой путь';

COMMENT ON COLUMN "users"."organizational_units"."code" IS 'Код подразделения';

COMMENT ON COLUMN "users"."organizational_units"."name" IS 'Название';

COMMENT ON COLUMN "users"."organizational_units"."parent_id" IS 'Родительское подразделение';

ALTER TABLE "client"."activities" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."activities" ADD FOREIGN KEY ("created_by") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."authorized_persons" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."bank_details" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."billing_accounts" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."call_result" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."campaign_sort_fields" ADD FOREIGN KEY ("campaign_id") REFERENCES "client"."campaign" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."campaign_task" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."campaign_task" ADD FOREIGN KEY ("manager_id") REFERENCES "client"."result_managers" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."campaign_task" ADD FOREIGN KEY ("schedule_campaign_id") REFERENCES "client"."schedule_campaign" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."campaign_task_history" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."campaign_task_history" ADD FOREIGN KEY ("manager_id") REFERENCES "client"."result_managers" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."campaign_task_history" ADD FOREIGN KEY ("schedule_campaign_id") REFERENCES "client"."schedule_campaign" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_addresses" ADD FOREIGN KEY ("address_type_id") REFERENCES "client"."ref_address_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_addresses" ADD FOREIGN KEY ("city_region_id") REFERENCES "client"."ref_cities_regions" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_addresses" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_contact" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_contact" ADD FOREIGN KEY ("contact_type_id") REFERENCES "client"."ref_contact_info_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_id_documents" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_id_documents" ADD FOREIGN KEY ("document_type_id") REFERENCES "client"."ref_id_document_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_phone_numbers" ADD FOREIGN KEY ("brand_id") REFERENCES "client"."ref_brands" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_phone_numbers" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_products" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_products" ADD FOREIGN KEY ("product_id") REFERENCES "client"."products_services" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_requirement_attachments" ADD FOREIGN KEY ("requirement_id") REFERENCES "client"."client_requirements" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_requirements" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_requirements" ADD FOREIGN KEY ("created_by") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_restrictions" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."client_restrictions" ADD FOREIGN KEY ("restriction_type_id") REFERENCES "client"."ref_restriction_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients" ADD FOREIGN KEY ("city_region_id") REFERENCES "client"."ref_cities_regions" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients" ADD FOREIGN KEY ("client_type_id") REFERENCES "client"."ref_client_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients" ADD FOREIGN KEY ("language_id") REFERENCES "client"."ref_languages" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients" ADD FOREIGN KEY ("residency_id") REFERENCES "client"."ref_residencies" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients" ADD FOREIGN KEY ("vip_status_id") REFERENCES "client"."ref_vip_statuses" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2b" ADD FOREIGN KEY ("acquisition_employee_id") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2b" ADD FOREIGN KEY ("acquisition_head_id") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2b" ADD FOREIGN KEY ("category_id") REFERENCES "client"."ref_client_categories" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2b" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2b" ADD FOREIGN KEY ("department_id") REFERENCES "client"."ref_departments" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2b" ADD FOREIGN KEY ("industry_id") REFERENCES "client"."ref_industries" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2b" ADD FOREIGN KEY ("legal_form_id") REFERENCES "client"."ref_legal_forms" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2b" ADD FOREIGN KEY ("retention_employee_id") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2b" ADD FOREIGN KEY ("retention_head_id") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2b" ADD FOREIGN KEY ("segment_id") REFERENCES "client"."ref_segments" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2c" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2c" ADD FOREIGN KEY ("gender_id") REFERENCES "client"."ref_genders" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2c" ADD FOREIGN KEY ("income_source_id") REFERENCES "client"."ref_income_sources" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."clients_b2c" ADD FOREIGN KEY ("marital_status_id") REFERENCES "client"."ref_marital_statuses" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."communicate_result" ADD FOREIGN KEY ("client_contact_id") REFERENCES "client"."contacts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."communicate_result" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."communicate_result" ADD FOREIGN KEY ("contract_id") REFERENCES "client"."contracts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contact_addresses" ADD FOREIGN KEY ("address_type_id") REFERENCES "client"."ref_address_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contact_addresses" ADD FOREIGN KEY ("city_region_id") REFERENCES "client"."ref_cities_regions" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contact_addresses" ADD FOREIGN KEY ("contact_id") REFERENCES "client"."contacts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contact_careers" ADD FOREIGN KEY ("contact_id") REFERENCES "client"."contacts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contact_contact" ADD FOREIGN KEY ("contact_id") REFERENCES "client"."contacts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contact_contact" ADD FOREIGN KEY ("contact_type_id") REFERENCES "client"."ref_contact_info_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contact_id_documents" ADD FOREIGN KEY ("contact_id") REFERENCES "client"."contacts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contact_id_documents" ADD FOREIGN KEY ("document_type_id") REFERENCES "client"."ref_id_document_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contacts" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contacts" ADD FOREIGN KEY ("client_type_id") REFERENCES "client"."ref_client_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contacts" ADD FOREIGN KEY ("gender_id") REFERENCES "client"."ref_genders" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contacts" ADD FOREIGN KEY ("language_id") REFERENCES "client"."ref_languages" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contacts" ADD FOREIGN KEY ("residency_id") REFERENCES "client"."ref_residencies" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contacts" ADD FOREIGN KEY ("role_id") REFERENCES "client"."ref_contact_roles" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contract_documents" ADD FOREIGN KEY ("contract_id") REFERENCES "client"."contracts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contract_documents" ADD FOREIGN KEY ("document_type_id") REFERENCES "client"."ref_document_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contract_documents" ADD FOREIGN KEY ("uploaded_by") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contract_history" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contract_history" ADD FOREIGN KEY ("contract_id") REFERENCES "client"."contracts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contract_history" ADD FOREIGN KEY ("mark_id") REFERENCES "client"."marks" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contract_products" ADD FOREIGN KEY ("contract_id") REFERENCES "client"."contracts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contract_products" ADD FOREIGN KEY ("product_id") REFERENCES "client"."products_services" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contract_templates" ADD FOREIGN KEY ("contract_type_id") REFERENCES "client"."ref_contract_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contracts" ADD FOREIGN KEY ("billing_account_id") REFERENCES "client"."billing_accounts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contracts" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contracts" ADD FOREIGN KEY ("contract_type_id") REFERENCES "client"."ref_contract_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contracts" ADD FOREIGN KEY ("currency_id") REFERENCES "client"."ref_currencies" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contracts" ADD FOREIGN KEY ("parent_contract_id") REFERENCES "client"."contracts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contracts" ADD FOREIGN KEY ("payment_form_id") REFERENCES "client"."ref_payment_forms" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contracts" ADD FOREIGN KEY ("responsible_contact_id") REFERENCES "client"."contacts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contracts" ADD FOREIGN KEY ("responsible_kcell_id") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."contracts" ADD FOREIGN KEY ("status_id") REFERENCES "client"."ref_contract_statuses" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."credit_history_individual" ADD FOREIGN KEY ("individual_client_id") REFERENCES "client"."individual_clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."documents" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."documents" ADD FOREIGN KEY ("document_type_id") REFERENCES "client"."ref_document_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."documents" ADD FOREIGN KEY ("uploaded_by") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."governing_bodies" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."identity_documents" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."individual_clients" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."marks" ADD FOREIGN KEY ("parent_id") REFERENCES "client"."marks" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."payment_history" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."payment_history" ADD FOREIGN KEY ("contract_id") REFERENCES "client"."contracts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."payment_schedule" ADD FOREIGN KEY ("contract_id") REFERENCES "client"."contracts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."poa_change_history" ADD FOREIGN KEY ("changed_by") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."poa_change_history" ADD FOREIGN KEY ("poa_id") REFERENCES "client"."powers_of_attorney" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."powers_of_attorney" ADD FOREIGN KEY ("authorized_person_id") REFERENCES "client"."authorized_persons" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."powers_of_attorney" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."powers_of_attorney" ADD FOREIGN KEY ("contact_id") REFERENCES "client"."contacts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."powers_of_attorney" ADD FOREIGN KEY ("document_type_id") REFERENCES "client"."ref_document_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."powers_of_attorney" ADD FOREIGN KEY ("poa_type_id") REFERENCES "client"."ref_poa_types" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."processing_results" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."processing_results" ADD FOREIGN KEY ("contract_id") REFERENCES "client"."contracts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."ref_departments" ADD FOREIGN KEY ("parent_id") REFERENCES "client"."ref_departments" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."related_contracts" ADD FOREIGN KEY ("contract_id") REFERENCES "client"."contracts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."related_contracts" ADD FOREIGN KEY ("related_contract_id") REFERENCES "client"."contracts" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."result_managers" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."schedule_campaign_days_of_week" ADD FOREIGN KEY ("schedule_campaign_id") REFERENCES "client"."schedule_campaign" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."schedule_campaign_robot" ADD FOREIGN KEY ("schedule_campaign_settings_id") REFERENCES "client"."schedule_campaign_settings" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."schedule_campaign_settings" ADD FOREIGN KEY ("campaign_id") REFERENCES "client"."campaign" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."schedule_campaign_settings" ADD FOREIGN KEY ("schedule_campaign_id") REFERENCES "client"."schedule_campaign" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."schedule_campaign_settings" ADD FOREIGN KEY ("schedule_campaign_user_id") REFERENCES "client"."schedule_campaign_user" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."schedule_campaign_user" ADD FOREIGN KEY ("schedule_campaign_settings_id") REFERENCES "client"."schedule_campaign_settings" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."skill_group_users" ADD FOREIGN KEY ("skill_group_id") REFERENCES "client"."skill_group" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."special_tariff_plans" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."special_tariff_plans" ADD FOREIGN KEY ("product_id") REFERENCES "client"."products_services" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."subsidiaries" ADD FOREIGN KEY ("city_region_id") REFERENCES "client"."ref_cities_regions" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."subsidiaries" ADD FOREIGN KEY ("parent_client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."tickets" ADD FOREIGN KEY ("assigned_to") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "client"."tickets" ADD FOREIGN KEY ("client_id") REFERENCES "client"."clients" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "import"."import_batches" ADD FOREIGN KEY ("session_id") REFERENCES "import"."import_sessions" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "import"."import_errors" ADD FOREIGN KEY ("batch_id") REFERENCES "import"."import_batches" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "import"."import_errors" ADD FOREIGN KEY ("session_id") REFERENCES "import"."import_sessions" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "import"."import_sessions" ADD FOREIGN KEY ("batch_id") REFERENCES "import"."import_batches" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "import"."import_snapshots" ADD FOREIGN KEY ("batch_id") REFERENCES "import"."import_batches" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."users" ADD FOREIGN KEY ("role_id") REFERENCES "users"."role" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."users" ADD FOREIGN KEY ("organization_id") REFERENCES "users"."organizational_units" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."role_subordination" ADD FOREIGN KEY ("id_role_parent") REFERENCES "users"."role" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."role_subordination" ADD FOREIGN KEY ("id_role_child") REFERENCES "users"."role" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."role_permissions" ADD FOREIGN KEY ("role_id") REFERENCES "users"."role" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."role_permissions" ADD FOREIGN KEY ("api_id") REFERENCES "users"."api" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."organizational_units" ADD FOREIGN KEY ("parent_id") REFERENCES "users"."organizational_units" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."user_organizational_units" ADD FOREIGN KEY ("user_id") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."user_organizational_units" ADD FOREIGN KEY ("organizational_unit_id") REFERENCES "users"."organizational_units" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."user_srv_dep_codes" ADD FOREIGN KEY ("user_id") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."user_status_log" ADD FOREIGN KEY ("user_id") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."token" ADD FOREIGN KEY ("user_id") REFERENCES "users"."users" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."dashboard_attributes" ADD FOREIGN KEY ("dashboard_id") REFERENCES "users"."dashboards" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."dashboard_role" ADD FOREIGN KEY ("dashboard_id") REFERENCES "users"."dashboards" ("id") DEFERRABLE INITIALLY IMMEDIATE;

ALTER TABLE "users"."dashboard_role" ADD FOREIGN KEY ("role_id") REFERENCES "users"."role" ("id") DEFERRABLE INITIALLY IMMEDIATE;
