create or replace procedure budget_completion is
defict integer default 0;
total_add integer default 0;
cursor opCursor is
         select o.op_id  
         from temp_operation o;
iterator temp_operation % rowtype; 
begin
  total_add:=0;
  for iterator in opCursor
    loop
     defict := find_the_deficit(iterator.op_id);
     --dbms_output.put_line('defict is ' || defict);
     update temp_operation
     set budjet = budjet + defict
     where op_id= iterator.op_id;
     total_add := total_add + defict;
  end loop;
  dbms_output.put_line('add total of ' || total_add);
  --commit;
end budget_completion;
/
