#-- OBJECTIVE 1 --#

DESCRIBE order_details;

-- 1. View the menu_items table.
DESCRIBE menu_items;

SELECT *
FROM menu_items;

-- 2. Find the number of items on the menu.

SELECT COUNT(item_name) AS Number_items
FROM menu_items;

-- 3. What are the least and most expensive items on the menu?

# Least Expensive
SELECT *
FROM menu_items
ORDER BY price ASC;

# Most Expensive
SELECT *
FROM menu_items
ORDER BY price DESC;

-- 4. How many Italian dishes are on the menu
SELECT 
	COUNT(item_name) AS No_italiandishes,
    category
FROM menu_items
WHERE category = 'Italian';

-- 5. What are the least and most expensive Italian dishes on the menu?
SELECT 
	item_name,
    category,
    price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price ASC;

SELECT 
	item_name,
    category,
    price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- 6. How many dishes are in each category?
SELECT
	COUNT(item_name) AS number_dishes,
    category
FROM menu_items
GROUP BY category;


-- 7 . What is the average dish price within each category?
SELECT 
	AVG(price) AS Average_price,
    Category
FROM menu_items
GROUP BY category;

