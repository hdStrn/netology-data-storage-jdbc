INSERT IGNORE INTO netology_sql.customers (id, name, surname, age, phone_number) VALUES (1, 'Ivan', 'Ivanov', 41, '+71234567890');
INSERT IGNORE INTO netology_sql.customers (id, name, surname, age, phone_number) VALUES (2, 'Elena', 'Novikova', 30, '+79991112233');
INSERT IGNORE INTO netology_sql.customers (id, name, surname, age, phone_number) VALUES (3, 'Alexey', 'Pushkin', 26, null);
INSERT IGNORE INTO netology_sql.customers (id, name, surname, age, phone_number) VALUES (4, 'Danila', 'Bogrov', 21, '+71110004455');
INSERT IGNORE INTO netology_sql.customers (id, name, surname, age, phone_number) VALUES (5, 'Lev', 'Tolstoy', 82, null);
INSERT IGNORE INTO netology_sql.customers (id, name, surname, age, phone_number) VALUES (6, 'Alexey', 'Bobrikov', 18, '+79994567890');

INSERT IGNORE INTO netology_sql.orders (id, date, customer_id, product_name, amount) VALUES (1, '2023-01-01', 1, 'Milk', 2);
INSERT IGNORE INTO netology_sql.orders (id, date, customer_id, product_name, amount) VALUES (2, '2023-01-02', 2, 'Meat', 1);
INSERT IGNORE INTO netology_sql.orders (id, date, customer_id, product_name, amount) VALUES (3, '2023-01-03', 3, 'Bread', 3);
INSERT IGNORE INTO netology_sql.orders (id, date, customer_id, product_name, amount) VALUES (4, '2023-01-03', 3, 'Cigarettes', 10);
INSERT IGNORE INTO netology_sql.orders (id, date, customer_id, product_name, amount) VALUES (5, '2023-01-04', 4, 'Tekila', 2);
INSERT IGNORE INTO netology_sql.orders (id, date, customer_id, product_name, amount) VALUES (6, '2023-01-05', 5, 'Juice', 4);
INSERT IGNORE INTO netology_sql.orders (id, date, customer_id, product_name, amount) VALUES (7, '2023-01-05', 6, 'Vodka', 5);
INSERT IGNORE INTO netology_sql.orders (id, date, customer_id, product_name, amount) VALUES (8, '2023-01-05', 6, 'Cheese', 1);
