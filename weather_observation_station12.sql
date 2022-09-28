
select distinct(city)
from station
where city not REGEXP '^[aeiou]'
and city not REGEXP '[aeiou]$';
