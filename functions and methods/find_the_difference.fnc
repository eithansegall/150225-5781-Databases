create or replace function find_the_deficit(ID in integer) return integer is
  FunctionResult integer;
  total_price integer default 0;
  budjet integer default 0;
       
begin
   total_price := get_tools_price(ID);
   budjet:= get_budjet(ID);
  --dbms_output.put_line('The price is ' || total_price);
  --dbms_output.put_line('The budjet is ' || budjet);
  FunctionResult:=budjet-total_price;
    if (total_price = 0) then
        --dbms_output.put_line('no use in tools'); 
        return(FunctionResult);     
        end if; 
      if (FunctionResult > 0) then
        --dbms_output.put_line('no deficit');
         FunctionResult:=0;
        return(FunctionResult);
         end if;
       FunctionResult:=-FunctionResult;
       --dbms_output.put_line('The deficit is ' || FunctionResult);
  --commit;
  return(FunctionResult);
end find_the_deficit;
/
