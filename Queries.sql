-- ============================================================
-- Task 23: SQL Aggregation Basics
-- Dataset : Chinook (MySQL / PostgreSQL)
-- Functions: COUNT, SUM, AVG, MIN, MAX + GROUP BY / HAVING
-- ============================================================

-- Q1. Total number of customers (COUNT)
SELECT COUNT(*) AS total_customers
FROM customer;

-- Q2. NULL behavior: COUNT(*) vs COUNT(column)
-- COUNT(*) counts all rows; COUNT(company) skips NULL values
SELECT COUNT(*)       AS all_customers,
       COUNT(company) AS customers_with_company
FROM customer;

-- Q3. Total revenue of the store (SUM)
SELECT SUM(total) AS total_revenue
FROM invoice;

-- Q4. Average invoice value (AVG)
SELECT ROUND(AVG(total), 2) AS avg_invoice_value
FROM invoice;

-- Q5. Smallest and largest invoice (MIN, MAX)
SELECT MIN(total) AS min_invoice,
       MAX(total) AS max_invoice
FROM invoice;

-- Q6. Revenue per country (GROUP BY + SUM)
SELECT billingcountry,
       SUM(total) AS country_revenue
FROM invoice
GROUP BY billingcountry
ORDER BY country_revenue DESC;

-- Q7. Number of tracks per genre (GROUP BY + COUNT)
SELECT g.name AS genre,
       COUNT(t.trackid) AS track_count
FROM genre g
JOIN track t ON t.genreid = g.genreid
GROUP BY g.name
ORDER BY track_count DESC;

-- Q8. Average track length (in seconds) per genre (GROUP BY + AVG)
SELECT g.name AS genre,
       ROUND(AVG(t.milliseconds) / 1000.0, 1) AS avg_seconds
FROM genre g
JOIN track t ON t.genreid = g.genreid
GROUP BY g.name
ORDER BY avg_seconds DESC;

-- Q9. Top 5 customers by total spend (SUM + GROUP BY + LIMIT)
SELECT c.customerid,
       c.firstname,
       c.lastname,
       SUM(i.total) AS total_spent
FROM customer c
JOIN invoice i ON i.customerid = c.customerid
GROUP BY c.customerid, c.firstname, c.lastname
ORDER BY total_spent DESC
LIMIT 5;

-- Q10. Countries with more than 5 invoices: count, avg, min, max (HAVING)
SELECT billingcountry,
       COUNT(*)              AS invoice_count,
       ROUND(AVG(total), 2)  AS avg_total,
       MIN(total)            AS min_total,
       MAX(total)            AS max_total
FROM invoice
GROUP BY billingcountry
HAVING COUNT(*) > 5
ORDER BY invoice_count DESC;
