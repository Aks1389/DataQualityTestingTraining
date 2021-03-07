Create Table nation.countryRank

SELECT
    DENSE_RANK() Over(PARTITION BY r.name ORDER BY c.area DESC) AS 'Rank',
    cont.name AS 'Continent',
    r.name AS 'Region',
    c.name AS 'Country',
    c.area AS 'Country Size',
	-- task 2.a, 2.b
	CASE WHEN c.national_day IS NULL THEN 'no data'
    	 WHEN c.national_day > CURRENT_DATE THEN CURRENT_DATE
    	 ELSE c.national_day
	END AS 'National Day'
FROM
	-- task 2.c getting rid of duplicated countries
    (SELECT t1.*
	 FROM (
		SELECT *, RANK() OVER(PARTITION BY name ORDER BY country_id) as rank
		FROM countries
	) AS t1
	WHERE t1.rank = 1) c
INNER JOIN regions r ON
    c.region_id = r.region_id
INNER JOIN continents cont ON
    cont.continent_id = r.continent_id
INNER JOIN region_areas ra ON
    ra.region_name = r.name
ORDER BY cont.name, r.name, c.area DESC