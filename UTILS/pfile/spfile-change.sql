-- Connettiti come SYSDBA
CONNECT / AS SYSDBA

-- Verifica quale file di parametri stai usando
SHOW PARAMETER SPFILE

-- Crea l'SPFILE
CREATE SPFILE FROM PFILE;

-- Spegni l'istanza
SHUTDOWN IMMEDIATE

-- Riavvia l'istanza per utilizzare il nuovo SPFILE
STARTUP

-- Verifica che l'istanza stia usando l'SPFILE
SHOW PARAMETER SPFILE