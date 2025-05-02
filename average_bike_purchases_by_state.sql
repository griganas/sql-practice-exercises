-- Average bike-related purchases over 3 years by state
SELECT state, AVG(past_3_years_bike_related_purchases) AS avg_bike_purchases
FROM reatcodeltd_axldp_Customer_Demographic a
JOIN reatcodeltd_axldp_Customer_Address b ON a.customer_id = b.customer_id
GROUP BY state;
