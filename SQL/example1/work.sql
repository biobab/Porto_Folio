select * from cities;
select * from continents;
select * from countries;
select * from countries_continents;
select * from countries_languages;
select * from empires;

--exc3
--1
select count(distinct countrycode) from empires
where empire ='Danish Empire';

select count(distinct countrycode) from empires
where empire ='Great Britain';

--2
select count(distinct countrycode) from countries_continents
where percentage<100;

select count(*) from countries_continents
where continent = 'Asia' and percentage<100;

--3
select cl.countrycode,cl.language,cl.percentage,cc.continent,c.population from countries_languages as cl
join countries_continents as cc on cl.countrycode = cc.countrycode
join countries as c on c.code = cl.countrycode
where continent='North America' and language = 'Spanish' and population>10000000;


select sum(cl.percentage/100 * c.population) from countries_languages as cl
join countries_continents as cc on cl.countrycode = cc.countrycode
join countries as c on c.code = cl.countrycode
where continent='North America' and language = 'Spanish' and population>10000000;

select sum(cl.percentage/100 * c.population) from countries_languages as cl
join countries_continents as cc on cl.countrycode = cc.countrycode
join countries as c on c.code = cl.countrycode
where continent='Europe' and language = 'Spanish' and population>10000000;

--4
select count(distinct language) from countries c
join empires e on c.code = e.countrycode
join countries_languages as cl on c.code = cl.countrycode
where empire = 'Benelux';

select count(distinct language) from countries c
join empires e on c.code = e.countrycode
join countries_languages as cl on c.code = cl.countrycode
where empire = 'Great Britain';

--I dont quite remember how I could use division in this situation or how it worked exaclty. 
--I also dont get the same result for Benelux either.


