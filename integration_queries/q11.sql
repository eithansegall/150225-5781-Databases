select distinct o.op_name
from operation o, dbretler.soldier s  
where o.commander = s.run_key_soldier and s.regular_or_permanent = 'Regular' and o.budjet < 20000
