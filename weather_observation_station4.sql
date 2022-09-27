-- To find the distinct city count

select count(city) - count(distinct city) from station;
