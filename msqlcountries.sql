select countries.name, languages.language, languages.percentage
from countries
join languages
where language = 'Slovene' and countries.id = languages.country_id
order by percentage DESC;

select  countries.name as nombrepais , count(cities.name) as numerodeciudad
from countries
join cities
where countries.id = cities.country_id
group by countries.name order by  numerodeciudad desc;

select  name, country_id, population
From cities
where country_id =136 and population >500000
order by population desc;

select countries.name, languages.language, languages.percentage
from countries
join languages
where countries.id = languages.country_id and languages.percentage >= 89
order by percentage DESC;


select name, surface_area, population
from countries
where surface_area < 501 and Population > 100000
order by surface_area DESC;

select name, government_form,capital, life_expectancy
from countries 
where government_form = 'Constitutional Monarchy' and capital > 200 and life_expectancy > 75;

select  countries.name as nombrepais , cities.name as numerodeciudad, cities.district as Distrito, cities.population as numeropob
from cities 
join countries
on countries.id= cities.country_id
where countries.name= 'Argentina' and cities.district = 'Buenos Aires' and cities.population > 500000;

select region, count(name) as totalpaises
from countries 
group by region 
order by totalpaises desc;

select * from countries;
select * from languages;
select * from cities;

