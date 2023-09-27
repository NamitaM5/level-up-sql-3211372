-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

select * from Customer;

SELECT v.customerID, firstname, lastname, Date
from Customers as r inner join reservations as v 
on r.customerID = v.customerId
where firstname = 'Norby' and 
v.date > "2022-07-24";

delete from Reservations where CustomerID = 64 and date > "2022-07-24";
