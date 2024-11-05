
-- Abilitare AMM
ALTER SYSTEM SET memory_target = 4G SCOPE=SPFILE;
ALTER SYSTEM SET memory_max_target = 6G SCOPE=SPFILE;


-- Configurare ASMM
ALTER SYSTEM SET sga_target = 4G;
ALTER SYSTEM SET sga_max_size = 6G;
