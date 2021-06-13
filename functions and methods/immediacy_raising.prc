create or replace procedure immediacy_raising is
total_raising integer default 0;
cursor threatCursor is
         select t.t_id, t.severity, t.immediacy  
         from threat t;
iterator temp_threat % rowtype; 
begin
  for iterator in threatCursor
    loop
    if (iterator.severity =5 ) then
      update temp_threat
     set immediacy = immediacy + 1
     where t_id= iterator.t_id;
     total_raising := total_raising+1;
    end if;
  end loop;
   dbms_output.put_line('total raising ' || total_raising);
end immediacy_raising;
/
