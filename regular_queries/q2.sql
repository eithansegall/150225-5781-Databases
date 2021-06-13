select distinct o.op_name,o.budjet
from Threat t,Operation o
where t.immediacy = 1 AND o.budjet >= 750000
