create or replace function get_tools_price(ID in integer) return integer is
  FunctionResult integer default 0;
   cursor priceCursor is
         select s.price    
         from Using u , Special_Tool s
         where u.op_id = ID and  
         u.st_id = s.st_id ;
  iterator special_tool % rowtype;   
begin
  for iterator in priceCursor
    loop      
     FunctionResult := iterator.price + FunctionResult;
    end loop;
  --dbms_output.put_line('The price1 is ' || FunctionResult);
  return(FunctionResult);
end get_tools_price;
/
