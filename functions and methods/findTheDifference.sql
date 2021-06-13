
create or replace FUNCTION find_the_difference (op_id in number) RETURN NUMBER IS 
   return_value NUMBER := 0;
   budjet NUMBER := 0;
   price NUMBER := 0;
BEGIN  
  --SET @return_value = 0;
  select o.budjet
  into budjet
  from operation o
  where op_id = o.op_id );
  
  SELECT SUM(s.price)
  into price
  from Using u , Special_Tool s
  where u.op_id = op_id and 
  u.st_id= s.st_id );
  return_value := budjet - price;
  RETURN (return_value);
END;
