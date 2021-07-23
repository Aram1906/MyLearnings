--Delete from the collection
delete from dbo.orders ord
where ord.order_id in (8001234,8001235,8001236)

--Delete results from select 
delete ord.* from 
select order_id from dbo.orders ord
where ord.order_id > 8000000

