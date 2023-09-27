-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

Insert into Party_size values ((SELECT customerID
from Customers
where email = 'atapley2j@kinetecoinc.com'),3)

select * from Party_size;