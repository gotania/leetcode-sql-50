/* https://leetcode.com/problems/average-selling-price */
select   UnitsSold.PRODUCT_ID,-- UnitsSold.UNITS, Prices.PRICE,
round(sum(UNITS*price)/sum (nvl (units),2) not null as average_price
from UnitsSold
 right join Prices on UnitsSold.product_id = Prices.product_id and
  UnitsSold.purchase_date >= Prices.start_date and UnitsSold.purchase_date <= Prices.end_date
group by UnitsSold.PRODUCT_ID