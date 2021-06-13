create or replace function print(text IN varchar2) return varchar2 is
  FunctionResult varchar2(20);
begin
  dbms_output.put_line(text);
  FunctionResult:=text;
  FunctionResult:='ert';
  return(FunctionResult);
end print;
/
