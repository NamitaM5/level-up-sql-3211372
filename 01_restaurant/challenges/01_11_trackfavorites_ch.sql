-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select dishID
from dishes
where name = 'Quinoa Salmon Salad'

select * from Customers
where FirstName = 'Cleo' and LastName = 'Goldwater' 

update Customers 
set FavoriteDish = (select DishID
from dishes
where name = 'Quinoa Salmon Salad')
where FirstName = 'Cleo' and LastName = 'Goldwater' 