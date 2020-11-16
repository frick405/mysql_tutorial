# Users can concatenate column data below way
SELECT
	CONCAT_WS(',', lastName, firstName)
FROM
	employees;
    
# But column head isn't readibility. So we can change column head with USE
SELECT
	CONCAT_WS(',', lastName, firstName) AS 'Full Name'
FROM
	employees;
    
# Another way to query above data...
SELECT
	CONCAT_WS(', ', lastName, firstName) `Full Name`
FROM
	employees
ORDER BY
	`Full Name`;    
    
SELECT
	orderNumber `Order no.`,
	SUM(priceEach * quantityOrdered) total
FROM
	orderDetails
GROUP BY
	`Order no.`
HAVING
	total > 60000;

SELECT * FROM employees AS e;

#
SELECT 
	e.firstName,
    e.lastName
FROM
	employees as e
ORDER BY
	e.firstName;

# 

SELECT
	customerName,
    COUNT(o.orderNumber) AS total
FROM
	customers AS c
INNER JOIN
	orders o ON c.customerNumber = o.customerNumber
GROUP BY
	customerName
ORDER BY
	total DESC;





