-- Comments in SQL Start with dash-dash --
--1--
products_db-# VALUES('chair',44.00,false);

--2--
products_db=# INSERT INTO products(name, price, can_be_returned)
products_db-# VALUES('stool',25.99, true)
products_db-# ;

--3--
products_db=# INSERT INTO products(name, price, can_be_returned)
products_db-# VALUES('table', 124.00, false);
INSERT 0 1

--4--
products_db=# SELECT * FROM products
products_db-# ;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
  3 | table |   124 | f
(3 rows)

--5--
products_db=# SELECT name from products
products_db-# ;
 name
-------
 chair
 stool
 table
(3 rows)

--6--
products_db=# SELECT name, price FROM products;
 name  | price
-------+-------
 chair |    44
 stool | 25.99
 table |   124
(3 rows)

--7--
products_db=# INSERT INTO products(name, price, can_be_returned)
products_db-# VALUES('candle', 12.99, true);
INSERT 0 1

--8--
products_db=# SELECT * FROM products WHERE can_be_returned = true;
 id |  name  | price | can_be_returned
----+--------+-------+-----------------
  2 | stool  | 25.99 | t
  4 | candle | 12.99 | t
(2 rows)

--9--
products_db=# SELECT * FROM products WHERE price < 44.00;
 id |  name  | price | can_be_returned
----+--------+-------+-----------------
  2 | stool  | 25.99 | t
  4 | candle | 12.99 | t
(2 rows)

--10--
products_db=# SELECT * FROM products WHERE price > 22.50 AND price < 99.99;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
(2 rows)


--11--
products_db=# UPDATE products SET price = price-20;
UPDATE 4
products_db=# SELECT * FROM products
products_db-# ;
 id |  name  |       price       | can_be_returned
----+--------+-------------------+-----------------
  1 | chair  |                24 | f
  2 | stool  | 5.989999999999998 | t
  3 | table  |               104 | f
  4 | candle | 2.990000000000002 | t

--12--
products_db=# DELETE FROM products WHERE price < 25.00;
DELETE 3
products_db=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  3 | table |   104 | f
(1 row)

--13--
products_db=# UPDATE products set price = price+20;
UPDATE 1
products_db=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  3 | table |   124 | f
(1 row)

--14--
products_db=# UPDATE products set can_be_returned=true;
UPDATE 1
products_db=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  3 | table |   124 | t
(1 row)

