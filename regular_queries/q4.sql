select distinct s.st_id, s.st_name, s.type 
from special_tool s,operation o, USING u 
where  o.op_id=u.op_id AND s.st_id=u.st_id And o.exe_unit like 'matcal%'
order by st_id
