-- Script completo di monitoraggio SGA
CREATE OR REPLACE PROCEDURE monitor_sga AS
BEGIN
  -- Buffer Cache
  DBMS_OUTPUT.PUT_LINE('Buffer Cache Stats:');
  FOR r IN (
    SELECT name, value 
    FROM v$sysstat 
    WHERE name IN ('db block gets','consistent gets','physical reads')
  ) LOOP
    DBMS_OUTPUT.PUT_LINE(r.name || ': ' || r.value);
  END LOOP;
  
  -- Shared Pool
  DBMS_OUTPUT.PUT_LINE('Shared Pool Stats:');
  FOR r IN (
    SELECT pool, bytes/1024/1024 MB 
    FROM v$sgastat 
    WHERE pool = 'shared pool'
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Size MB: ' || r.MB);
  END LOOP;
END;
/