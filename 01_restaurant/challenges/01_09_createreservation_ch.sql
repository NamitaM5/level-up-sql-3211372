-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

select *
from customers
where firstname = 'Sam' and Lastname = 'McAdams' and email = 'smac@kinetecoinc.com'

Insert into Customers(FirstName,LastName,Email) values('Sam','McAdams','smac@kinetecoinc.com')

select *
from customers
where firstname = 'Sam' and Lastname = 'McAdams' and email = 'smac@kinetecoinc.com'

insert INTO Reservations(CustomerID, Date, PartySize) values (102,'2022-08-12 18:00:00',5)

select r.CustomerID, r.Date, r.PartySize
from customers c inner join Reservations r
on r.CustomerID = c.CustomerID
where firstname = 'Sam' and Lastname = 'McAdams' and email = 'smac@kinetecoinc.com'
