-- Comments in SQL Start with dash-dash --
--1--
playstore=# SELECT * FROM analytics WHERE id = 1880;


--2--
playstore=# SELECT * FROM analytics WHERE last_updated= '2018-08-01';
--3--
playstore=# SELECT category, COUNT(category) FROM analytics GROUP BY category;

--4--
# SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;

--5--
SELECT app_name, reviews FROM analytics WHERE rating>4.8 ORDER BY reviews desc LIMIT 1;

--6--
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) desc;

--7--
SELECT app_name, rating, price FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;

--8--

--9--
SELECT app_name FROM analytics WHERE rating<3 AND reviews>10000;

--10--
# SELECT * FROM analytics WHERE price > 0.1 AND price < 1 ORDER BY reviews desc LIMIT 10;


--11--

--12--

--13--
playstore=# SELECT SUM(reviews) FROM analytics;
    sum
------------
 4814575866


--14--

--15--