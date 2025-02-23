create or replace function sum_of_operations_budjet return integer is
  FunctionResult integer;
  total_budjet integer default 0;
  cursor budjetCursor is
         select  o.budjet       
         from operation o;
  iterator operation % rowtype;
begin           
  for iterator in budjetCursor
    loop
      total_budjet := total_budjet + iterator.budjet ;
    end loop;
 -- commit;
  FunctionResult:=  total_budjet;   
  return(FunctionResult);
end sum_of_operations_budjet;
/
