# HOW WELL ARE WE USING OUR SITTING CAPACITY(15 tables/60 seats)
/* As we don´t know the exact number of clients we had every hour, we have to estimate it depending on the order of pizza
and its size:
S   - 1 client
M   - 1 clients
L   - 2 clients
XL  - 3 clients
XXL - 4 clients
*/
/* Select the different hours and the number of clients we have per hour
   then divide that number by  number of days we have data available to find the average number of clients per hour.
   To find the number of clients we create a temporary column where we say how many clients we consider on average per size of pizza*/
SELECT distinct hour(order_time) AS time , 
	round(sum(CASE 
		WHEN pizza_size = "S" OR pizza_size ="M" THEN 1 
        WHEN pizza_size = "L" THEN 2
        WHEN pizza_size = "XL" THEN 3
        WHEN pizza_size = "XXL" THEN 4
        
    END) / datediff(max(order_date),min(order_date))) AS avg_num_clients, 
    60 AS Total_capacity
FROM orders_final
group by time order by avg_num_clients desc



