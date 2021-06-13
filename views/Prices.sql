CREATE VIEW Prices AS
SELECT distinct st_name, price
FROM special_tool 
WHERE price > 250000
order by price desc
