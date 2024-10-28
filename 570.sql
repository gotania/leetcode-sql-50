/* https://leetcode.com/problems/managers-with-at-least-5-direct-reports */
select n.name from employee n
inner join (
select t2.managerid
from Employee t1
inner join employee t2 on t1.id=t2.managerid
group by t2.managerid
having count (t2.managerid) >=5
) g on n.id = g.managerid;