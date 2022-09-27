select city, length(city)
    from station
group by city
order by length(city), city limit 1;
select city, length(city) len_city
    from station
group by city
order by length(city) desc limit 1;
