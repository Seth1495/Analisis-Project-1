Use final_task_rakamin;
SELECT
    orders.Date As order_date,
    productcategory.CategoryName as category_name,
    products.ProdName as product_name,
    products.Price as product_price,
    orders.Quantity as order_qty,
    (orders.quantity * products.price) AS total_sales,
    customers.CustomerEmail as cust_email,
    customers.CustomerCity as custcity
FROM
    orders 
JOIN customers ON orders.CustomerID = customers.Customerid
Join products on orders.ProdNumber = products.ProdNumber
join productcategory on products.Category = productcategory.CategoryID
ORDER BY orders.Date Asc
Limit 4000;

