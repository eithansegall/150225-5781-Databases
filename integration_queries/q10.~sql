select distinct st.st_name, st.type
from operation o, dbretler.soldier s, special_tool st  
where o.commander = s.run_key_soldier and s.regular_or_permanent = 'permanent' and o.exe_unit like 'maglan%'
