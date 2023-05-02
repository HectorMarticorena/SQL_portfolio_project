# HOW MANY PIZZAS ARE WE MAKING DURING PEAK PERIODS
/*Knowing that the peak periods are Thursday,Friday and Saturday between 12:00 and 13:00,
 we select those days and the quantity of pizzas on each day*/


SELECT distinct dayname(order_date) AS weekday, sum(quantity) AS num_pizzas
FROM orders_final 
WHERE dayname(order_date)="Thursday" AND hour(order_time) between 12 AND 13
	OR dayname(order_date)="Friday"  AND hour(order_time) between 12 AND 13
    OR dayname(order_date)="Saturday" AND hour(order_time) between 12 AND 13
GROUP BY weekday ORDER BY num_pizzas desc