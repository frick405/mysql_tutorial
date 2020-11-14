# If you want to sort result set, then use ORDER BY
# Default parameter of ORDER BY command is ascending(ASC)
SELECT
	contactLastname,
    contactFirstname
FROM
	customers
ORDER BY
	contactLastname;
    
# and ORDER BY clauses can be used for multiple sort by input multiple column name
# ASC, DESC can be located after column name
SELECT
	contractLastname,
    contractFirstname
FROM
	customers
ORDER BY
	contactLastName DESC,
    contactFirstName ASC;
