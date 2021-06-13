select count( b.budjet), b.budjet
from BUDJETS b
group by b.budjet
order by  b.budjet desc
