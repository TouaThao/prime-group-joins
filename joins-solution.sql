SELECT  * FROM "customers"
JOIN "addresses" ON "addresses".customer_id = "customers".id;

SELECT  * FROM "orders"
LEFT OUTER JOIN "line_items" ON "line_items".order_id = "orders".id;

SELECT "warehouse".warehouse FROM "warehouse" 
JOIN "warehouse_product" ON "warehouse_product".warehouse_id = "warehouse".id
JOIN "products" ON "warehouse_product".product_id = "products".id
WHERE "products".description = 'cheetos';

SELECT "warehouse".warehouse FROM "warehouse" 
JOIN "warehouse_product" ON "warehouse_product".warehouse_id = "warehouse".id
JOIN "products" ON "warehouse_product".product_id = "products".id
WHERE "products".description = 'diet pepsi';


SELECT "customers".first_name, COUNT("orders".address_id) FROM orders  
JOIN "addresses" ON "orders".address_id = "addresses".id
JOIN "customers" ON "addresses".customer_id = "customers".id
GROUP BY "customers".first_name;


SELECT COUNT (*) FROM "customers";

SELECT COUNT (*) FROM "products";


SELECT SUM("warehouse_product".on_hand) AS "total diet pepsi"  FROM warehouse_product
JOIN "products" ON "warehouse_product".product_id = "products".id
WHERE "products".description = 'diet pepsi';





