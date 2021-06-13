SELECT t.t_id, t.immediacy, t.severity
FROM threat t 
WHERE t.severity < t.immediacy
order by t.t_id
