DROP DATABASE IF EXISTS  products_db;

CREATE DATABASE products_db;

\c products_db

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  price FLOAT CHECK (price > 0),
  can_be_returned BOOLEAN NOT NULL
);

-- command to questi0ns 1 to 3
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, false);

-- Display all of the rows and columns in the table.
 SELECT * FROM products;

-- Display all of the names of the products.
Select name FROM products;

-- Display all of the names and prices of the products.
Select name, prices FROM products;

-- Add a new product - make up whatever you would like!
INSERT INTO products (name, price, can_be_returned) VALUES ('jin', 25.99, false);

-- Display only the products that can_be_returned.
 SELECT name FROM products WHERE can_be_returned = True;

-- Display only the products that have a price less than 44.00.
 SELECT name FROM products WHERE price < 44.00;

-- Display only the products that have a price in between 22.50 and 99.99.
SELECT name FROM products WHERE price BETWEEN 22.50 AND 99.99;

-- There’s a sale going on: Everything is $20 off! Update the database accordingly.
UPDATE products SET price = price - 20;

-- Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
DELETE FROM products WHERE price < 25;

-- And now the sale is over. For the remaining products, increase their price by $20.
UPDATE products SET price = price + 20;
-- There is a new company policy: everything is returnable. Update the database accordingly.
 UPDATE products SET can_be_returned = TRUE;