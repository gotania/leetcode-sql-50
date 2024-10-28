/* https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions */
select *--customer_id, count (*) as count_no_trans 
 from visits
left join transactions ON visits.visit_id =transactions.visit_id 

where transaction_id is null
--group by customer_id