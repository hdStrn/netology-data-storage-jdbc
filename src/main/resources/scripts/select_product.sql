SELECT product_name
FROM netology_sql.orders o
         JOIN netology_sql.customers c ON o.customer_id = c.id
WHERE c.name LIKE :name;
