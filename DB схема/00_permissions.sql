-- ============================================================
-- ПРАВА ДОСТУПА: схема client → kcell_prod_user
-- Запустите ДО загрузки данных (01-12)
-- ============================================================

ALTER SCHEMA client OWNER TO kcell_prod_user;

GRANT USAGE ON SCHEMA client TO kcell_prod_user;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA client TO kcell_prod_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA client TO kcell_prod_user;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA client TO kcell_prod_user;

-- Автоматические права на будущие объекты
ALTER DEFAULT PRIVILEGES IN SCHEMA client GRANT ALL PRIVILEGES ON TABLES TO kcell_prod_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA client GRANT ALL PRIVILEGES ON SEQUENCES TO kcell_prod_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA client GRANT ALL PRIVILEGES ON FUNCTIONS TO kcell_prod_user;
