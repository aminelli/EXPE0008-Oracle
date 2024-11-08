----------------------------------------------------
-- Create Table DBETL.MARKET_CLIENTI
----------------------------------------------------
CREATE TABLE DBETL.MARKET_CLIENTI
(
 ID_CLI          INTEGER PRIMARY KEY NOT NULL
,COGNOME         CHAR(30) NOT NULL
,NOME            CHAR(30) NOT NULL
,DT_NASC         DATE
,REGIONE         CHAR(40) NOT NULL
)
TABLESPACE TS_CORSO
STORAGE (INITIAL 250K);

COMMIT; 

-- alter session set NLS_DATE_FORMAT='DD-MM-YYYY';

INSERT INTO DBETL.MARKET_CLIENTI VALUES ( 1,'GERENZANO','Giuliano','04-10-1967','Lombardia');
INSERT INTO DBETL.MARKET_CLIENTI VALUES ( 2,'DURANTE','Roberto','01-01-1978','Lazio');
INSERT INTO DBETL.MARKET_CLIENTI VALUES ( 3,'CASTELLETTO','Giacomo','16-12-1982','Campania');
INSERT INTO DBETL.MARKET_CLIENTI VALUES ( 4,'AMADEI','Antonio','15-02-1971','Calabria');
INSERT INTO DBETL.MARKET_CLIENTI VALUES ( 5,'ROCCATI','Cosimo','26-04-1955','Umbria');
INSERT INTO DBETL.MARKET_CLIENTI VALUES ( 6,'PALLADINO','Alberto','11-07-1963','Lombardia');
INSERT INTO DBETL.MARKET_CLIENTI VALUES ( 7,'ZIMMITI','Lorenzo','09-08-1974','Veneto');
INSERT INTO DBETL.MARKET_CLIENTI VALUES ( 8,'PASCOLI','Miriam','04-01-1990','Piemonte');
INSERT INTO DBETL.MARKET_CLIENTI VALUES ( 9,'PALLOTTA','Veronica','30-11-1968','Lazio');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (10,'MORABITO','Gianmarco','29-10-1979','Sicilia');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (11,'GROSSI','Emma','26-05-1982','Campania');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (12,'NESPOLI','Cecilia','03-02-1985','Umbria');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (13,'MATTEI','Andrea','12-12-1991','Lazio');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (14,'QUARANTA','Francesca','04-09-1970','Toscana');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (15,'RETTORE','Dario','13-01-1988','Campania');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (16,'SANSEVERINO','Massimiliano','25-09-1973','Liguria');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (17,'TORNATORE','Carla','30-04-1965','Lazio');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (18,'VECCHI','Alberto','23-06-1991','Campania');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (19,'ANDRETTI','Luigi','17-08-1985','Sicilia');
INSERT INTO DBETL.MARKET_CLIENTI VALUES (20,'ROGNA','Anna','01-02-1974','Sardegna');

COMMIT;
