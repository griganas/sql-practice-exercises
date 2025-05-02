-- Count how many times each person appears, grouped by firstname
SELECT a.FirstName, a.LastName, a.Job, a.ExternalID, b.CompanyName, COUNT(*) AS Count
FROM maintable_L8GOF AS a
JOIN cb_vendorinformation AS b ON a.GroupID = b.GroupID
GROUP BY a.FirstName, a.LastName, a.Job, a.ExternalID, b.CompanyName
ORDER BY Count ASC, b.CompanyName ASC;
