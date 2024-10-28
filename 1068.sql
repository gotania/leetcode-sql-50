/* https://leetcode.com/problems/product-sales-analysis-i */
select product_name, year, price from sales
JOIN product On sales.product_id=product.product_id