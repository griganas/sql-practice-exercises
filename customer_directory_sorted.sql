-- List of customers and addresses sorted by last and first name, excluding NULLs
SELECT first_name, last_name, address
FROM reatcodeltd_axldp_Customer_Demographic a
JOIN reatcodeltd_axldp_Customer_Address b ON a.customer_id = b.customer_id
WHERE last_name IS NOT NULL
ORDER BY last_name ASC, first_name ASC
LIMIT 10;
