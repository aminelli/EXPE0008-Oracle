
-- Abilitare il case insensitive e l'accent insensitive sulla sessione utente corrente
ALTER SESSION SET NLS_COMP=LINGUISTIC;
ALTER SESSION SET NLS_SORT=BINARY_CI;  -- Per case-insensitive
ALTER SESSION SET NLS_SORT=BINARY_AI;  -- Per case e accent-insensitive
