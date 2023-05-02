# WHAT IS OUR AVERAGE ORDER VALUE
# Select the sum of the order value and divide by the number of orders to find the average, then round to 2 decimal places

SELECT   round(sum(total_price) / count(distinct order_id), 2) AS Average_order
FROM orders_final

