--Update customer details based on direct query
update dbo.customer
set first_name='maha',
last_name = 'aravind',
where customer_id = 12345

--Update order status as delivered for orders placed on 23d july 2021
update dbo.orders
set order_status='Delivered'
where cast(order_date as date)='2021-07-23'

--Update orders placed by customer with email junkshopper as cancelled
update ord.order_status='Cancelled'
select order_id,order_status
from dbo.orders ord
inner join dbo.customer cs on cs.customer_id = ord.customer_id
where cs.email like '%junkshopper%'