select N as node,
case when P is NULL then 'Root'
when N not in (select distinct(P) from BST where P is not NULL) then 'Leaf'
else 'Inner' end
from BST
order by N;
