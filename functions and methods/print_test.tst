PL/SQL Developer Test script 3.0
16
DECLARE 
   t varchar2(20);
   r  varchar2(20);
/*function print(text IN varchar2) return varchar2 is
  FunctionResult varchar2(20);
begin
  dbms_output.put_line(text);
  FunctionResult:=text;
  return(FunctionResult);
end print;*/
BEGIN 
   :t := 'dfg';   
   :r := print(t); 
   dbms_output.put_line(t);
   dbms_output.put_line(r);
END;
2
t
1
dfg
5
r
1
ert
5
0
