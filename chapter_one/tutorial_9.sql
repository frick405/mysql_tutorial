# Relational databases consists of multiple related tables linking together using common columns which are known as foreign key

DROP TABLES
	members,
    committees;


CREATE TABLE members(
	member_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (member_id)
    );

CREATE TABLE committees(
	committees_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (committees_id)
    );
    
INSERT INTO
	members(name)
VALUES
	('John'), ('Jane'), ('Mary'), ('David'), ('Amelia');

INSERT INTO
	committees(name)
VALUES
	('John'), ('Mary'), ('Amelia'), ('Joe');

# INNER JOIN command return intersection of two or more data
SELECT
	m.member_id,
    m.name AS member,
    c.committees_id,
    c.name AS committee
FROM
	members AS m
INNER JOIN committees AS c ON c.name = m.name;

# RIGHT, LEFT JOIN makes table with one standard.
# After RIGHT, LEFT JOIN command, left or right table are all selected and another data is fill with NULL

SELECT
	m.member_id,
    m.name AS member,
    c.committees_id,
    c.name AS committee
FROM
	members AS m
LEFT JOIN
	committees AS c USING(name);
    
SELECT
	m.member_id,
    m.name AS member,
    c.committees_id,
    c.name AS committee
FROM
	members AS m
RIGHT JOIN
	committees AS c USING(name)
WHERE
	m.member_id IS NOT NULL;

# CROSS JOIN return cartesian product table
SELECT
	m.member_id,
    m.name AS member,
    c.committees_id,
    c.name as committees
FROM
	members as m
CROSS JOIN
	committees AS c;







