-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select c.CustomerID, Firstname, Lastname, r.Date
from Reservations as r inner join Customers as c
on c.CustomerID = r.CustomerID 
WHERE c.LastName like 'Ste%' and r.Partysize = 4
order by date ;