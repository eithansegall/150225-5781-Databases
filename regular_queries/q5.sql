select distinct o.op_id, o.op_name, o.exe_unit
from special_tool s,operation o, USING u 
where  o.op_id=u.op_id AND s.st_id=u.st_id And s.type='chemical'
order by op_id
