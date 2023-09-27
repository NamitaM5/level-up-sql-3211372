-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select c.FirstName, c.LastName, c.Email, count(orderid) 
from customers c inner join orders o
on c.customerid = o.customerid
group by o.customerid
order by count(orderid) Desc LIMIT 6