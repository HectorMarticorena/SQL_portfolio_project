-- Creation of the tbale and rows

CREATE TABLE `orders` (
    `order_details_id` int  NOT NULL ,
    `order_id` int  NOT NULL ,
    `pizza_id` varchar(50)  NOT NULL ,
    `quantity` int  NOT NULL ,
    `order_date` date  NOT NULL ,
    `order_time` time  NOT NULL ,
    `unit_price` decimal(5,2)  NOT NULL ,
    `total_price` decimal(5,2)  NOT NULL ,
    `pizza_size` Varchar(5)  NOT NULL ,
    `pizza_category` Varchar(50)  NOT NULL ,
    `pizza_ingredients` Varchar(300)  NOT NULL ,
    `pizza_name` Varchar(100)  NOT NULL 
);
