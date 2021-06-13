UPDATE operation
SET commander = DBMS_RANDOM.VALUE(1,20000)
where commander=1
