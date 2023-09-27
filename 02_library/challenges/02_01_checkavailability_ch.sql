-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT count(BookID)
from books
where BookID not in (select BookID
from Loans 
where BookID IN (select Bookid
from books
where title = 'Dracula')and ReturnedDate isnull) and Title = 'Dracula'
