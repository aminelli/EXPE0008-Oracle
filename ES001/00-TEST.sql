select * from  DBA_ALL_TABLES;

select * from USER_TABLES;

select * from DBA_TABLES;

select * from DBA_TAB_COLUMNS;

select * from V$SGASTAT where name like '%free%'

select 
    round(used.bytes / 1024 /1024 ,2) USED_MB,
    round(free.bytes / 1024 /1024 ,2) FREE_MB,
    round(tot.bytes / 1024 /1024 ,2) TOT_MB
from 
    (select sum(bytes) BYTES from V$SGASTAT where name !='free memory') used,
    (select sum(bytes) BYTES from V$SGASTAT where name ='free memory') free,
    (select sum(bytes) BYTES from V$SGASTAT) tot
;

select round (sum(bytes) /1024 /1024 /1024 ,2) BYTES from V$SGASTAT;

select pool, round (bytes /1024 /1024 ,2) FREE_MEMORY from V$SGASTAT where name like '%free memory%';

select pool, round (sum(bytes) /1024 /1024 ,2) MEMORY from V$SGASTAT group by POOL;

select * from V$SGAINFO order by name;

select NAME, round (bytes /1024 /1024 ,2) MB from V$SGAINFO order by name;

select * from V$PROCESS_MEMORY;

select * from V$PARAMETER order by name;

select * from V$SYSTEM_PARAMETER order by name;