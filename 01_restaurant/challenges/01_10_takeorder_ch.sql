-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

select CustomerID
from customers
where firstname ='Loretta' and lastname = 'Hundey'

insert into Orders(CustomerID,OrderDate) values (70,'2022-09-20 14:00:00')

select OrderID
from orders inner join customers 
on Orders.CustomerID = Customers.CustomerID
where firstname ='Loretta' and lastname = 'Hundey' and orderDate='2022-09-20 14:00:00'

insert into OrdersDishes(OrderID,DishID) VALUES
((select OrderID
from orders inner join customers 
on Orders.CustomerID = Customers.CustomerID
where firstname ='Loretta' and lastname = 'Hundey' and orderDate='2022-09-20 14:00:00')
,(select DishID from Dishes where name = 'House Salad')),
((select OrderID
from orders inner join customers 
on Orders.CustomerID = Customers.CustomerID
where firstname ='Loretta' and lastname = 'Hundey' and orderDate='2022-09-20 14:00:00')
,(select DishID from Dishes where name = 'Mini Cheeseburgers')),
((select OrderID
from orders inner join customers 
on Orders.CustomerID = Customers.CustomerID
where firstname ='Loretta' and lastname = 'Hundey' and orderDate='2022-09-20 14:00:00')
,(select DishID from Dishes where name = 'Tropical Blue Smoothie'));

select sum(price)
from Dishes d inner join OrdersDishes o
on d.DishID = o.DishID
where OrderID =1001

select sum(Price)
from Dishes
where DishID in (select DishID
from OrdersDishes
where OrderID = (select OrderID
from customers c inner join orders o on c.CustomerID = o.CustomerID
where FirstName = 'Loretta' and LastName ='Hundey'and orderDate='2022-09-20 14:00:00'))

-- Use the IN operator to find all the dishe IDs
select *
from Dishes
where name in ('House Salad','Mini Cheeseburgers','Tropical Blue Smoothie')