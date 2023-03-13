CREATE SCHEMA IF NOT EXISTS netology_sql;

CREATE TABLE IF NOT EXISTS netology_sql.customers
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    name         VARCHAR(50),
    surname      VARCHAR(50),
    age          smallint CHECK (age >= 0 AND age < 200),
    phone_number VARCHAR(50)
);

INSERT IGNORE INTO netology_sql.customers (id, name, surname, age, phone_number)
VALUES (1, 'Ivan', 'Ivanov', 41, '+71234567890'),
       (2, 'Elena', 'Novikova', 30, '+79991112233'),
       (3, 'Alexey', 'Pushkin', 26, null),
       (4, 'Danila', 'Bogrov', 21, '+71110004455'),
       (5, 'Lev', 'Tolstoy', 82, null),
       (6, 'Alexey', 'Bobrikov', 18, '+79994567890');

CREATE TABLE IF NOT EXISTS netology_sql.orders
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    date         DATETIME,
    customer_id  INT,
    product_name VARCHAR(255),
    amount       INT,
    CONSTRAINT FOREIGN KEY (customer_id) REFERENCES netology_sql.customers (id)
);

INSERT IGNORE INTO netology_sql.orders (id, date, customer_id, product_name, amount)
VALUES (1, '2023-01-01', 1, 'Milk', 2),
       (2, '2023-01-02', 2, 'Meat', 1),
       (3, '2023-01-03', 3, 'Bread', 3),
       (4, '2023-01-03', 3, 'Cigarettes', 10),
       (5, '2023-01-04', 4, 'Tekila', 2),
       (6, '2023-01-05', 5, 'Juice', 4),
       (7, '2023-01-05', 6, 'Vodka', 5),
       (8, '2023-01-05', 6, 'Cheese', 1);
