select * from user_all_tables; 

select * from SYSTEM.AEREO;

select * from DBA_TABLESPACES;


/*
STRATO LOGICO
1 TABLE SPACES
2 SEGMENTS (oggetti db come tabelle, viste o indici...ecc)
3 EXTENTS 
4 ORACLE DATA BLOCK SIZE (8K standard)

STRATO FISICO
1 FILE FISICO CONTROLFILE, DATAFILE ECC
2 OS BLOCK SIZE


CREATE TABLESPACE TS_CORSO 
DATAFILE 'tbs_corso.dbf' 
SIZE 500M;



*/

select * from DBA_DATA_FILES;

select * from DBA_TEMP_FILES;

select -- * from DBA_TS_QUOTAS;
TABLESPACE_NAME,
USERNAME,
round(bytes /1024 /1024, 2) MB,
round(max_bytes /1024 /1024, 2) max_mb,
MAX_BLOCKS
from 
DBA_TS_QUOTAS
order by
TABLESPACE_NAME,
USERNAME
;



create tablespace TS_TEST
DATAFILE '/opt/oracle/oradata/XE/tbs_test.dbf'
SIZE 100M
AUTOEXTEND ON
NEXT 50M MAXSIZE UNLIMITED;

alter session set "_ORACLE_SCRIPT"=true; 

create user USR_TEST
IDENTIFIED By test
default tablespace TS_TEST
temporary tablespace temp
quota 50m on TS_TEST;


-- Abilitare il case insensitive e l'accent insensitive sulla sessione utente corrente
ALTER SESSION SET NLS_COMP=LINGUISTIC;
ALTER SESSION SET NLS_SORT=BINARY_CI; -- Per case-insensitive
ALTER SESSION SET NLS_SORT=BINARY_AI; -- Per case e accent-insensitive


select * from DBA_USERS where username like 'usr_%' order by username;



