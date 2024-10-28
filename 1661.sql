/* https://leetcode.com/problems/average-time-of-process-per-machine */
Select    t1.machine_id, avg (t2.TIMESTAMP-t1.TIMESTAMP) as processing_time
 from Activity t1

join Activity t2 on t1.process_id= t2.process_id and t1.machine_id = t2.machine_id and 
t1.activity_type = 'start' and t2.activity_type = 'end'



group by t1.machine_id 