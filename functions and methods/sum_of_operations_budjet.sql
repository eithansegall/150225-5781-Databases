

declare 
  -- Local variables here
  res integer;
function sum_of_operations_budjet(op_id in Integer) return integer is
  total_budjet integer default 0;
  cursor budjetCursor is
         select op_id, budjet       
         from operation o
         where o.op_id = op_id;
  iterator person % rowtype;
begin
  for iterator in budjetCursor
    loop
      total_budjet := total_budjet + iterator.budjet ;
      end loop;
  commit;       
  return(total_budjet);
end sum_of_operations_budjet;
begin
  -- Test statements here
  :res := sum_of_operations_budjet(op_id => :op_id);
  dbms_output.put_line('The total budjet ' || :res ||'  has recived');
  dbms_output.put_line('dfhdfh');
  commit;
end;
