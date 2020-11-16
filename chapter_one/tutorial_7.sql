# LIMIT command is used for querying top n data sample
SELECT
	customerNumber,
    customerName,
    creditLimit
FROM
	customers
ORDER BY
	creditLimit DESC
LIMIT 5;

# and also can use for multiple columns

SELECT
	customerNumber,
	customerName,
    creditLimit
FROM
	customers
ORDER BY
	creditLimit, 
    customerNumber
LIMIT
	5;
    
#
SELECT COUNT(*)
FROM customers;

#
SELECT
	customerNumber,
    customerName
FROM
	customers
ORDER BY
	customerName
LIMIT 
	100, 10; # show 10 data from 100th located data



