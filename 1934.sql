/* https://leetcode.com/problems/confirmation-rate */
select Signups.user_id, round(avg (case when action = 'confirmed' then 1 else 0
end),2) as confirmation_rate

from  confirmations
right join Signups on  confirmations.user_id = Signups.user_id
group by  Signups.user_id