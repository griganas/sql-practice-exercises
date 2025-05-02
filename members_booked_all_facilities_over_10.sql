-- Retrieve members who booked all facilities with member cost > 10
SELECT firstname, surname, address 
FROM reatcodeltd_axldp_members a
JOIN reatcodeltd_axldp_bookings b ON a.memid = b.memid
JOIN reatcodeltd_axldp_facilities c ON b.facid = c.facid
WHERE membercost > 10
GROUP BY a.memid
HAVING COUNT(DISTINCT c.facid) = (
    SELECT COUNT(*) 
    FROM reatcodeltd_axldp_facilities
    WHERE membercost > 10
);
