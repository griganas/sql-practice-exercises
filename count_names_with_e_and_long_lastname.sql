-- Count rows where FirstName contains 'e' and LastName has more than 5 characters
SELECT COUNT(*) AS total_rows
FROM your_table_name
WHERE FirstName LIKE '%e%'
AND LENGTH(LastName) > 5;
