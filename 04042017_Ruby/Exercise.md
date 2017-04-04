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

1. 
