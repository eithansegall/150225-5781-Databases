select distinct s.id, s.name
from operation o, dbretler.soldier s  
where o.commander = s.run_key_soldier and s.salary > 5000 and o.exe_unit like 'matcal%'
order by s.id
