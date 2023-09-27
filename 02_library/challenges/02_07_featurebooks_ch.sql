-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

select title, BookID, published
from Books
where bookid not in
(SELECT BookID
from Loans
where BookID In (
SELECT BookID
from books
where published between 1890 and 1899 ) and ReturnedDate ISNULL) 
and published between 1890 and 1899
order by Title ASC

--Solutions have a more efficient way to solve