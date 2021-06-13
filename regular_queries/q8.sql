SELECT o.op_id, o.op_name , find_the_deficit(o.op_id) as deficit
--FROM temp_operation o 
FROM operation o 
WHERE o.budjet < (
    SELECT SUM(s.price)
    from Using u , Special_Tool s
    where u.op_id = o.op_id and 
    u.st_id= s.st_id )
order by o.op_id
