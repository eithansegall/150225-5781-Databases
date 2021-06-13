create or replace function get_budjet(ID in integer) return integer is
  FunctionResult integer default 0;
  counter integer default 0;
  cursor budjetCursor is
         select o.op_id, o.budjet    
         from operation o
         where o.op_id = ID;
   problem exception;
  iterator operation % rowtype; 
begin
  for iterator in budjetCursor
    loop
      if (counter=1) then
        raise problem;
         return (FunctionResult);
        end if;      
     FunctionResult := iterator.budjet;
     counter := 1;
    end loop;
  return(FunctionResult);
end get_budjet;
/
