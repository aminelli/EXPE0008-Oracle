-- Aprire un sqplplus e  lanciare i seguenti comandi

-- 1. Shutdown e restart in UPGRADE mode:
SHUTDOWN IMMEDIATE;
STARTUP UPGRADE;


-- 2. Set MAX_STRING_SIZE to EXTENDED:
ALTER SYSTEM SET max_string_size=extended SCOPE=SPFILE;


-- 3. Lancio dello script utl32k.sql script per aggiornare  l'internal structures:
@?/rdbms/admin/utl32k.sql


-- 4. Shutdown e restart normale del database:
SHUTDOWN IMMEDIATE;
STARTUP;