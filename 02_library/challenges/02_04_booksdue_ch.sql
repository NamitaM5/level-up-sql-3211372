-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select DueDate, title, FirstName, Email
from loans l inner join books b
ON l.bookid = b.BookID inner join Patrons c on c.PatronID = l.PatronID
where duedate = '2022-07-13' and returneddate isnull