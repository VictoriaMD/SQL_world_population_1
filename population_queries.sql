-- The complete database chart
SELECT * FROM population_years;
-- Years span of the data
SELECT DISTINCT year FROM population_years;

-- Largest population size for Gabon in dataset
SELECT country , MAX(population)
FROM population_years
WHERE country = 'Gabon';

-- 10 lowest population countries in 2005
SELECT country
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

--Country with a population over 100million in 2010
SELECT DISTINCT country 
FROM population_years
GROUP BY country
HAVING population > 100
ORDER BY population DESC;

--Countries with the word 'Islands' in their names
SELECT COUNT(country) 
FROM population_years
WHERE country LIKE '%Islands%';

--Population in Indonesia in 2000 and 2010
SELECT year, population
FROM population_years
WHERE country = 'Indonesia'
AND year = 2000
OR country = 'Indonesia'
AND year = 2010;








