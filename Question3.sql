# WHAT ARE OUR WORST AND BEST SELLING PIZZAS
# We select all the pizza types and the quantity of pizzas sold

SELECT distinct pizza_name, sum(quantity) as sold_pizzas
FROM orders_final
group by pizza_name order by sold_pizzas desc