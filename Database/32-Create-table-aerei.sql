----------------------------------------------------
-- Create Table DBETL.AEREO
----------------------------------------------------
CREATE TABLE DBETL.AEREO
(
 TIPO_AEREO        CHAR(5) PRIMARY KEY
,NUM_PASS          INTEGER
,QTA_MERCI         INTEGER
)
TABLESPACE TS_CORSO
STORAGE (INITIAL 250K);

COMMIT;

INSERT INTO DBETL.AEREO VALUES ('AZ94P', 120, 300);
INSERT INTO DBETL.AEREO VALUES ('CK13L', 130, 280);
INSERT INTO DBETL.AEREO VALUES ('WP34S', 115, 276);
INSERT INTO DBETL.AEREO VALUES ('BP3P4', 156, 403);
INSERT INTO DBETL.AEREO VALUES ('A0Z94', 165, 203);
INSERT INTO DBETL.AEREO VALUES ('R49IR', 200, 195);
INSERT INTO DBETL.AEREO VALUES ('S93OF', 210, 184);
INSERT INTO DBETL.AEREO VALUES ('D93I1',  80,  40);
INSERT INTO DBETL.AEREO VALUES ('V51RT', 110, 193);
INSERT INTO DBETL.AEREO VALUES ('B0I3R', 120, 283);
INSERT INTO DBETL.AEREO VALUES ('A3N43', 205, 498);
INSERT INTO DBETL.AEREO VALUES ('Z3RI3', 202, 125);
INSERT INTO DBETL.AEREO VALUES ('P3R5R',  30,  10);
INSERT INTO DBETL.AEREO VALUES ('B89D2',  65,  39);
INSERT INTO DBETL.AEREO VALUES ('E1T64', 110, 104);
INSERT INTO DBETL.AEREO VALUES ('YZ043', 120, 292);
INSERT INTO DBETL.AEREO VALUES ('KJ4R3', 125, 182);
INSERT INTO DBETL.AEREO VALUES ('Q10RI', 127, 138);
INSERT INTO DBETL.AEREO VALUES ('W94IG', 158, 150);
INSERT INTO DBETL.AEREO VALUES ('E49I3', 149, 100);
INSERT INTO DBETL.AEREO VALUES ('R40O3', 198, 299);
INSERT INTO DBETL.AEREO VALUES ('T05O4', 176, 100);
INSERT INTO DBETL.AEREO VALUES ('Y60O5', 155, 140);
INSERT INTO DBETL.AEREO VALUES ('AZ93R', 140, 120);
INSERT INTO DBETL.AEREO VALUES ('XI3I4', 200, 190);
INSERT INTO DBETL.AEREO VALUES ('C99T5', 220, 201);
INSERT INTO DBETL.AEREO VALUES ('VT54Y', 230, 403);
INSERT INTO DBETL.AEREO VALUES ('BP004', 190, 182);
INSERT INTO DBETL.AEREO VALUES ('N0R4J',  76,  40);
INSERT INTO DBETL.AEREO VALUES ('M84WE', 183, 184);
INSERT INTO DBETL.AEREO VALUES ('L4T43', 202, 182);
INSERT INTO DBETL.AEREO VALUES ('K45F3', 189, 200);
INSERT INTO DBETL.AEREO VALUES ('J4G4S',  70,  90);
INSERT INTO DBETL.AEREO VALUES ('H6G4D', 120, 182);
INSERT INTO DBETL.AEREO VALUES ('F5H8K', 154, 140);
INSERT INTO DBETL.AEREO VALUES ('D4O3E',  89,  90);
INSERT INTO DBETL.AEREO VALUES ('SO301', 139, 149);

COMMIT;