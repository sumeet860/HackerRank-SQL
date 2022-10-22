select
    c.name
from city c
join country co on c.countrycode = co.code
where continent = 'Africa';
