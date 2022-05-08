SELECT 
    *
FROM
    covid.coviddeathsindia;

###max cases on a day
SELECT 
    MAX(new_cases)
FROM
    covid.coviddeathsindia;

###max death on a day
SELECT 
    MAX(new_deaths)
FROM
    covid.coviddeathsindia;

###max new cases per million
SELECT 
    MAX(new_cases_per_million), MAX(new_deaths_per_million)
FROM
    covid.coviddeathsindia;

### total case vs total deaths
SELECT 
    location,
    datetime,
    total_cases,
    total_deaths,
    (total_deaths / total_cases) * 100 AS DeathPercentage
FROM
    coviddeathsindia
ORDER BY datetime;

###what % got covid
SELECT 
    location,
    datetime,
    total_cases,
    population,
    (total_cases / population) * 100 AS PercentgotCOVID
FROM
    coviddeathsindia
ORDER BY datetime;

###on what date most cases are detected? and on what day most deaths were recorded?

SELECT 
    datetime, new_cases, new_deaths
FROM
    coviddeathsindia
WHERE
    new_cases = 414188 OR new_deaths = 7374