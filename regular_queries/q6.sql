SELECT o.op_id, o.op_name ,SUM(s.price) AS "Total Special Tools Cost" 
from Operation o, Using u , Special_Tool s
where u.op_id=o.op_id and 
u.st_id= s.st_id
group by o.op_id, o.op_name
order by op_id
