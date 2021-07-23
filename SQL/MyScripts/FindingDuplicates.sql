--Customers placed more than 1 orders
select customer_id, count(*) Numberoforders
from dbo.orders 
group by customer_id
having count(*)>1

--Customers logged in more than once on a day
select customer_id, count(*) NumberofLoginAttempts
from dbo.customer_login 
where cast(login_date as date) = '2021-07-23'
group by customer_id 
having count(*)>1