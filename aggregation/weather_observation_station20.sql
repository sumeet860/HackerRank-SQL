set @row_index := -1;
select
  round(lat_n,4)
from (select @row_index := @row_index+1 as row_index, lat_n from STATION order by lat_n) subq
where subq.row_index in (FLOOR(@row_index / 2) , CEIL(@row_index / 2));
