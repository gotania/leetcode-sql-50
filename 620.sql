/* https://leetcode.com/problems/not-boring-movies */
select *--id, movie, description, rating 
from Cinema
WHERE mod(id, 2) = 1 and description <> 'boring'
order by rating desc