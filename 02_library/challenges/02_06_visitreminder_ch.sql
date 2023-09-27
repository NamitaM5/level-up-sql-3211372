-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT l.PatronID, FirstName, LastName, Email
from loans l inner join Patrons p
on l.PatronID = p.PatronID
group by l.patronid 
order by count(loanID) ASC limit 5