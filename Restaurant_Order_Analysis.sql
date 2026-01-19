-- Data exploration
SELECT COUNT(*) FROM order_details

SELECT COUNT(*) FROM menu_items

--Number of items on the menu
SELECT DISTINCT COUNT(item_name) 
FROM menu_items

--Most expensive items on the menu
SELECT item_name, price 
FROM menu_items
ORDER BY price DESC
LIMIT 1;

--Least expensive items on the menu
SELECT item_name, price 
FROM menu_items
ORDER BY price ASC
LIMIT 1;

--Number of Italian dishes on the menu
SELECT item_name,category 
FROM menu_items
WHERE category = 'Italian';

--Most expensive Italian dish
SELECT item_name,category,price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC
LIMIT 1;

--Least expensive Italian dish
SELECT item_name,category,price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price ASC
LIMIT 1;

--Number of dishes in each category
SELECT COUNT(item_name), category
FROM menu_items
GROUP BY category;

--Average dish price per category
SELECT category, ROUND(AVG(price),2)
FROM menu_items
GROUP BY category;

--Date range of order table
SELECT MIN(order_date), MAX(order_date)
FROM order_details

--Orders made within this date range
SELECT DISTINCT COUNT(order_id) 
FROM order_details

--Items ordered withing this date range
SELECT COUNT(item_id)
FROM order_details

--Order which has most number of items
SELECT order_id, COUNT(item_id) AS number_of_items FROM order_details
GROUP BY order_id
ORDER BY number_of_items DESC

--Orders which has more than 12 items
SELECT order_id, COUNT(item_id) AS number_of_items FROM order_details
GROUP BY order_id
HAVING COUNT(item_id) >12;

--Combining Menu and Order table
SELECT * FROM menu_items
INNER JOIN order_details
ON menu_items.menu_item_id = order_details.item_id

--Most ordered items
SELECT menu_items.item_name, menu_items.category, COUNT(order_details.order_id) AS number_of_items_ordered
FROM menu_items
INNER JOIN order_details
ON menu_items.menu_item_id = order_details.item_id
GROUP BY menu_items.item_name, menu_items.category
ORDER BY number_of_items_ordered DESC
LIMIT 1;

--Least ordered items
SELECT menu_items.item_name, menu_items.category, COUNT(order_details.order_id) AS number_of_items_ordered
FROM menu_items
INNER JOIN order_details
ON menu_items.menu_item_id = order_details.item_id
GROUP BY menu_items.item_name, menu_items.category
ORDER BY number_of_items_ordered ASC
LIMIT 1;

--Top 5 orders based on price
SELECT order_details.order_id, SUM(menu_items.price) AS total_amount
FROM menu_items
INNER JOIN order_details
ON menu_items.menu_item_id = order_details.item_id
GROUP BY order_details.order_id
ORDER BY total_amount DESC
LIMIT 5;

-- Details of highest spend order
SELECT *
FROM menu_items
INNER JOIN order_details
ON menu_items.menu_item_id = order_details.item_id
WHERE order_id = 440

