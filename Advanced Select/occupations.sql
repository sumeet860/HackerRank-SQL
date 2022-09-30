select 
max(case when occ.occupation = 'Doctor' then occ.name end ),
max(case when occ.occupation = 'Professor' then occ.name end ),
max(case when occ.occupation = 'Singer' then occ.name end ),
max(case when occ.occupation = 'Actor' then occ.name end)
from 
(select name, occupation,
ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME ASC) AS RowNumber
from OCCUPATIONS) as occ group by occ.RowNumber
