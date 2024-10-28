/* https://leetcode.com/problems/rising-temperature/ */
Select t1.id from weather t1
 join weather t2 on t1.recordDate -1 = t2.recordDate
where t1.temperature > t2.temperature