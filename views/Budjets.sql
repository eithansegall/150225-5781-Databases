CREATE VIEW Budjets AS
SELECT distinct op_name, budjet
FROM operation 
WHERE budjet > 500000
order by budjet desc
