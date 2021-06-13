select distinct  o.op_id, o.op_name ,o. budjet
from Threat t INNER JOIN  Operation o ON t.T_ID = o.T_ID
where t.severity >= 4 AND o.budjet >= 500000
