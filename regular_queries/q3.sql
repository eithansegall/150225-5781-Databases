select distinct st_id , st_name 
from Threat t natural join operation natural join USING  natural join Special_Tool 
where t.enemy = 'hamas' 
ORDER BY st_id;
