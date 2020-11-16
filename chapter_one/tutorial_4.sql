# You can use WHERE to find item that is matched to specific condition
# condition should conclude column that input to SELECT clause
USE
	classicmodels;

SELECT 
	lastName,
    firstName,
    jobtitle
FROM
	employees
WHERE
	jobtitle = 'Sales Rep';
    
# WHERE clause can be composed multiple search condition with AND, OR

SELECT
	lastName,
    firstName,
    jobtitle,
    officeCode
FROM
	employees
WHERE
	jobtitle = 'Sales Rep' AND
    officeCode = 1;

SELECT
	lastName,
    firstName,
    jobtitle,
    officeCode
FROM
	employees
WHERE
	jobtitle = 'Sales Rep' OR
    officeCode = 1;
    
# BETWEEN command return result set that match between low value to high value
SELECT
	lastName,
    firstName,
    jobtitle,
    officeCode
FROM
	employees
WHERE
	officeCode BETWEEN 1 AND 3
ORDER BY
	lastName;
    
# LIKE command return result set that match condition 

SELECT
	firstName,
	lastName
FROM
	employees
WHERE
	lastName LIKE '%son'
ORDER BY
	firstName;
    
# IN command return result set that matchs input to IN command;

SELECT
	firstName,
    lastName,
    officeCode
FROM
	employees
WHERE
	officeCode IN (1, 2, 3)
ORDER BY
	officeCode;

# IS command is condition command that query data which is same input to IS command

SELECT
	firstName,
    lastName,
    reportsTo
FROM
	employees
WHERE
	reportsTo IS NULL;

# There is operator that can be used in WHERE clause
# if you want to compare values where you query data, then use below operators

SELECT
	firstName,
    lastName,
    jobtitle
    officeCode
FROM
	employees
WHERE
	#jobtitle <> 'Sales Rep'; # Not equal, or !=
    #officeCode > 1; # >=
    #officeCode < 1; # <=
    officeCode = 1;
    

    

