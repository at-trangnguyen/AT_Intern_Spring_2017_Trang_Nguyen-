I. Basic Select

1. Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.

```
SELECT *

FROM CITY 

WHERE CITY.POPULATION > 100000 AND CITY.COUNTRYCODE = "USA";

```

2. Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.

```
SELECT CITY.NAME 

FROM CITY 

WHERE CITY.POPULATION > 120000 AND CITY.COUNTRYCODE = "USA";
```

3. Query all columns (attributes) for every row in the CITY table.

```
SELECT * 

FROM CITY
```
4. Query all columns for a city in CITY with the ID 1661.

```
SELECT * 

FROM CITY

WHERE CITY.ID = "1661";
```
5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

```
SELECT * 

FROM CITY

WHERE CITY.COUNTRYCODE = "JPN";
```

II. Advanced Select

1. Write a query identifying the type of each record in the TRIANGLES table

```
SELECT

CASE

WHEN A + B > C THEN 

CASE 

WHEN A = B AND B = C THEN 'Equilateral' 

WHEN A = B OR B = C OR A = C THEN 'Isosceles' 

WHEN A != B OR B != C OR A != C THEN 'Scalene' 

END 

ELSE 'Not A Triangle' 

END 

FROM TRIANGLES;
```

III. Aggregation

1. Query a count of the number of cities in CITY having a Population larger than 100.000.

```
SELECT COUNT(*) FROM CITY

WHERE POPULATION > 100000;
```
2. Query the total population of all cities in CITY where District is California.

```
SELECT SUM(POPULATION) 

FROM CITY 

WHERE DISTRICT = 'California';
```
3. Query the average population for all cities in CITY, rounded down to the nearest integer.

```
SELECT FLOOR(AVG(POPULATION))

FROM CITY;
```

4. Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

```
SELECT SUM(POPULATION)

FROM CITY

WHERE COUNTRYCODE = 'JPN';
```

5. Query the difference between the maximum and minimum populations in CITY.

```
SELECT (MAX(POPULATION)-MIN(POPULATION)) AS DIFFERENCE

FROM CITY;
```
IV. Basic join: 

1. Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

```
SELECT SUM(CITY.POPULATION)

FROM CITY JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE

WHERE COUNTRY.CONTINENT = 'Asia';
```

2. Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

```
SELECT CITY.NAME

FROM CITY JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE 

WHERE COUNTRY.CONTINENT = 'Africa';
```

3. Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

```
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))

FROM COUNTRY INNER JOIN CITY 

ON COUNTRY.CODE = CITY.COUNTRYCODE 

GROUP BY COUNTRY.CONTINENT;
```

5. 

```
SELECT h.hacker_id, h.name

FROM Submissions s 

JOIN Challenges c

ON s.challenge_id = c.challenge_id

JOIN Difficulty d

ON c.difficulty_level = d.difficulty_level 

JOIN Hackers h

ON s.hacker_id = h.hacker_id

WHERE s.score = d.score 

AND c.difficulty_level = d.difficulty_level

GROUP BY h.hacker_id, h.name

HAVING COUNT(s.hacker_id) > 1

ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC;
```
