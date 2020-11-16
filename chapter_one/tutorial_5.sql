# If you want to see unuque data in data, then use DISTINCT command

SELECT DISTINCT
	lastName
FROM
	employees
ORDER BY
	lastName;
    
# And it is same for NULL value
SELECT DISTINCT
	state
FROM
	customers;

# DISTINCT command works same with multiple columns
SELECT DISTINCT
	state,
    city
FROM
	customers
WHERE
	state != NULL # or != NULL
ORDER BY
	state,
    city;
    
# GROUP BY command works similar thing with DISTINCT
# whereas GROUP BY sort values, DISTINCT doesn't(MYSQL 8.0 makes ORDER BY command not to sort data)
# Before you use aggregate function, you can use DISTINCT command to remove duplicated rows
SELECT 
    COUNT(DISTINCT state)
FROM
	customers
WHERE
	country = 'USA';
    
# LIMIT command with DISTINCT give you to work immediately stop searching when it finds the number of unique row specified in the LIMIT clause

SELECT DISTINCT
	state
FROM
	customers
WHERE
	state IS NOT NULL # or state != NULL
LIMIT
	5;

