-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT patronID
from patrons
where email = 'jvaan@wisdompets.com'

select bookid
from books
where barcode in (2855934983,4043822646)

insert into Loans(BookID, PatronID, LoanDate, DueDate, ReturnedDate) 
values 
((select bookid
from books
where barcode in (2855934983)),(SELECT patronID
from patrons
where email = 'jvaan@wisdompets.com'),'2022-08-25','2022-09-08',null),
((select bookid
from books
where barcode in (4043822646)),(SELECT patronID
from patrons
where email = 'jvaan@wisdompets.com'),'2022-08-25','2022-09-08',null)

select *
from Loans
order by LoanID DESC limit 5

-- Deleted records 
DELETE from loans where LoanID IN(2002,2001)