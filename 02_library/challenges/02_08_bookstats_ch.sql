-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT count(DISTINCT(title)) as count_title, published
from books
group by published
order by count_title desc

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT count(LoanID), l.BookID, Title
from Loans l join Books b 
on l.BookID = b.BookID
group by b.Title
order by count(LoanID) desc limit 5