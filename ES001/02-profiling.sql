Lorenzo Saba 05/11/2024 12:30 • -- 1. ATTIVITA PRELIMINALE DI CONTROLLO

--Verifica configurazione attuale della SGA
select * from V$SGA ;

--Controllo compnenti dinamici
select component, current_size, min_size, max_size from gv$sga_dynamic_components ;

--Verifica parametri di memoria
show parameters sga ;

-- 2. Monitoraggio delle performance
-- BUFFER CACHE HIT RATIO
select name, value 
from v$sysstat 
where name in ('db block gets' , 'consistent gets', 'physical reads');

--LIBRARY CACHE HIT RATIO
SELECT namespace, 100-((1 - (reloads / (pins + reloads))) * 100) as hit_ratio 
--select * 
FROM v$librarycache
where pins != 0 or reloads != 0 ;

--3 OTTIMIZZAZIONE 
--3.1 CONFIGURAZIONE DEL BUFFER CACHE 
-- Imposta una nuova dimensione per la CACHE
alter system set db_cache_size = 2G scope = BOTH;

-- MONITORARE BUFFER BUSY WAITH 
select * 
from v$waitstat 
where class = 'data block' ;

--3.2 CONFIGURAZIONE DELLO SHARED POOL 
-- Configurazione del dimensionamento dello SHARED POOL
alter system set shared_pool_size = 1G scope = BOTH ;

--Monitoraggio dei CURSORI
select * from v$sqlarea where executions > 100 ;