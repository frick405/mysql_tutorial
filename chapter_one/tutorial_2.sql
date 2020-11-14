# SELECT command can get items what you input name for column
# FROM command make SELECT command refer table that input FROM
SELECT lastName
FROM employees;

# and multiple items can be brought by input multiple column names
SELECT
	lastName,
    firstName,
    jobtitle

FROM employees;

# if you use *(asterisk), then bring all item in table
# It is called select all or select star
SELECT *
FROM employees;


