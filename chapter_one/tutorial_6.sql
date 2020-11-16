# LIKe command works to return according to condition 
# % string is mutable
SELECT
	employeeNumber,
    lastName,
    firstName
FROM
	employees
WHERE
	firstName LIKE 'a%';
    
SELECT
	employeeNumber,
    lastName,
    firstName
FROM
	employees
WHERE
	lastName LIKE '%son';

# If you want to find queried column data to contain specific string,
# then use %string%

SELECT
	employeeNUmber,
    lastName,
    firstName
FROM
	employees
WHERE
	lastName LIKE '%on%';
    
# In some case, you may want to find first string and last string
# then, you can use _ (underscore wildcard) string
SELECT
	employeeNumber,
    lastName,
    firstName
FROM
	employees
WHERE
	firstName LIKE 'T_m';

SELECT
	employeeNumber,
    lastName,
    firstName
FROM
	employees
WHERE
	lastName NOT LIKE 'B%';
    
# if condition pattern contain  wildcard(%) or _ the, use %\

SELECT
	productCode,
    productName
FROM
	products
WHERE
	productCode LIKE '%\_20%'
    

