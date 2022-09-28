select distinct(city)
from station
where city not REGEXP '^[aeiou]'
or city not REGEXP '[aeiou]$'
