-- With SQL, how do you select all the records from a table named "Persons" where the value of the column "FirstName" starts with an "a"? 

SELECT * FROM Persons WHERE FirstName LIKE 'a%';



-- Which of the following query finds employees with an experience more than 5?
SELECT * FROM Employees WHERE experience > 5;



/* What is the purpose of the GROUP BY clause in PostgreSQL? 
Groups rows that have identical values in specified columns into summary */



/* Which statement successfully adds a new column ORDER_DATE to the table ORDERS? */
ALTER TABLE Orders ADD Order_Date DATE;



/* The following are clauses of the SELECT statement:
1. WHERE
2. FROM
3. ORDER BY
In which order should they appear in a query? 

2, 1, 3
*/

/* Which single-row function could you use to return a specific portion of a character string?

SUBSTR*/



-- The state of the database marked by the transaction becomes permanent by using: COMMIT


/* Which of the following statement is correct to display all the cities with the condition, temperature, and 
 humidity whose humidity is in the range of 60 to 75 from the 'weather' table? */
 
 SELECT * FROM weather WHERE humidity BETWEEN 60 AND 75;



 
 /*You need to display the HIRE_DATE values in this format: 25th of July 2002. Which SELECT statement would you use?*/

SELECT TO_CHAR(hire_date, 'ddth "of" Month YYYY') FROM employees;




 
/* This type of JOIN statement will return all the rows from the first table, even if there are no matches in the second table. 
 
 
 LEFT JOIN*/

/* What is the purpose of the GROUP BY clause in PostgreSQL?
 
Groups rows that have identical values in specified columns into summary rows. */

/*This type of JOIN statement will return all the rows from the first table, even if there are no matches in the second table.
LEFT join*/

ALTER TABLE Orders ADD Order_Date DATE;




/* What is the purpose of the COALESCE function in PostgreSQL?

Returns the first non-null expression among its arguments. */




/*What is the purpose of the GROUP BY clause in PostgreSQL?

Groups rows that have identical values in specified columns into summary rows. */


select avg(case when salary > 50,000) then salary else null end) from employees -- average salarys over 50,000



-- What does the following PostgreSQL query do?

SELECT name,
		CASE WHEN age < 18 THEN 'Minor!
			WHEN age BETWEEN 18 AND 64 THEN Adult'
			ELSE 'Senior'
		END AS age_group
FROM persons;

-- Assigns an age group category to each person based on their age.




/* How does a many-to-many relationship differ from the other two kinds of relationships?
 
 Three tables are used instead of two tables.
 */



/*For the following two ENTITIES, which is the appropriate relationship: ZOO / ANIMAL
 
 ONE to Many*/



/*For the following two ENTITIES, which is the appropriate relationship: RECIPES / INGREDIENTS

MANY to MANY*/


-- Which group function would you use to display the lowest value in the SALES_AMOUNT column?
MIN



-- What would the following SQL statement return? SELECT COUNT(DISTINCT salary) FROM employees;
The number of unique salaries in the employees table



--Which of the following set of operations is a valid set of aggregate operations in SQL?
COUNT, MAX, AVG, SUM



--Which set operation in PostgreSQL returns all rows from the first SELECT statement that are not present in the result set of the second SELECT statement?

EXCEPT