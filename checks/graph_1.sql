select count(t."Operations count")
from THE_DEFEAT_OF_IRAN t
group by t."Operations count"
order by t."Operations count" desc
