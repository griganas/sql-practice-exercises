-- Retrieve members who booked all facilities using NOT EXISTS + subquery
SELECT firstname, surname, address 
FROM reatcodeltd_axldp_members a
WHERE NOT EXISTS (
    SELECT facid 
    FROM reatcodeltd_axldp_facilities 
    WHERE facid NOT IN (
        SELECT facid 
        FROM reatcodeltd_axldp_bookings b
        WHERE a.memid = b.memid
    )
);
