/*
1. DDL - DATA DEFITION LANGUAGE
2. DML - DATA MANIPULATON LANGUAGE
3. DCL - DATA CONTROL LANGUAGE 
4. QL - QUERY LANGUAGE
*/

SELECT * FROM DIPENDENTI;

alter session set nls_comp=LINGUISTIC;
ALTER SESSION SET NLS_SORT=BINARY_AI;

/*
VOGLIO SAPERE LA QUERY PER ESTRARRE I PRIMI 10 DIP. CON STIPENDIO PIU' ALTO
*/

SELECT 
* 
FROM 
DIPENDENTI 
ORDER BY
STIPENDIO DESC, 
COGNOME ASC, 
NOME ASC
FETCH
FIRST 10 ROWS ONLY

;


SELECT RUOLO FROM DIPENDENTI ORDER BY RUOLO;

SELECT DISTINCT RUOLO FROM DIPENDENTI ORDER BY RUOLO;

--SELECT DISTINCT RUOLO, NOME FROM DIPENDENTI ORDER BY RUOLO;

SELECT RUOLO FROM DIPENDENTI GROUP BY RUOLO ORDER BY RUOLO;

EXPLAIN PLAN FOR 
SELECT RUOLO FROM DIPENDENTI ORDER BY RUOLO;

SELECT * 
FROM TABLE(DBMS_XPLAN.DISPLAY);

EXPLAIN PLAN FOR 
SELECT DISTINCT RUOLO FROM DIPENDENTI ORDER BY RUOLO;

EXPLAIN PLAN FOR 
SELECT RUOLO FROM DIPENDENTI GROUP BY RUOLO ORDER BY RUOLO;

SET AUTOTRACE ON ;
SELECT RUOLO FROM DIPENDENTI GROUP BY RUOLO ORDER BY RUOLO;

SELECT sql_text, elapsed_time, cpu_time, buffer_gets, disk_reads
FROM v$sql
WHERE sql_text LIKE '%DIPENDENTI%'

SELECT COUNT (*) FROM DIPENDENTI;

ALTER SESSION SET SQL_TRACE = TRUE;
-- Esegui la query
ALTER SESSION SET SQL_TRACE = FALSE;