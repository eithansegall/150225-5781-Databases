SELECT o.op_id, o.op_name
FROM operation o 
WHERE 0 < (
    SELECT SUM(s.price)
    from Using u , Special_Tool s
    where u.op_id = o.op_id and 
    u.st_id= s.st_id )
order by o.op_id
