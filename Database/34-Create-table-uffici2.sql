----------------------------------------------------
-- Create Table DBETL.UFFICIO 
----------------------------------------------------
CREATE TABLE DBETL.UFFICIO 
(
 ID_REFERENTE     INT
,RUOLO            CHAR(25)
,DATA_INIZIO      DATE
,FOREIGN KEY (ID_REFERENTE) 
 REFERENCES DBETL.DIPE_AZIENDA (ID_DIP)
 ON DELETE CASCADE
)
TABLESPACE TS_CORSO
STORAGE (INITIAL 250K);

COMMIT;
-- alter session set NLS_DATE_FORMAT='DD-MM-YYYY';
INSERT INTO DBETL.UFFICIO VALUES (1, 'Manager', '20-02-2000');
INSERT INTO DBETL.UFFICIO VALUES (2, 'Executive', '15-06-2000');
INSERT INTO DBETL.UFFICIO VALUES (3, 'Lead', '01-09-2000');

COMMIT;