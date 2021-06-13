CREATE VIEW The_Defeat_Of_Iran AS
SELECT distinct s.name, Count(s.name) AS "Operations count" 
FROM operation o, threat t, dbretler.soldier s
WHERE o.t_id=t.t_id and o.commander=s.run_key_soldier and t.enemy= 'iran'
group by s.name
order by Count(s.name) desc
