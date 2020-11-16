SELECT 
	orderNumber,
    SUM(quantityOrdered) AS itemCount,
    SUM(priceEach * quantityOrdered) AS total
FROM
	orderdetails
GROUP BY
	orderNumber
HAVING
	total > 1000 AND
    itemCount > 600;
    
