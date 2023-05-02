## WHAT DAYS AND TIMES DO WE TEND TO BE BUSIEST

# Select the 3 busiest days by number of orders, to see which days are busier

SELECT distinct dayname(order_date) AS weekday
FROM orders_final 
GROUP BY weekday ORDER BY COUNT(order_details_id) desc limit 3

# Select the hours and the total number of orders to see what hours are busier

SELECT distinct hour(order_time) AS time, COUNT(order_details_id) AS num_orders
FROM orders_final
GROUP BY time ORDER BY num_orders desc