use SEDC;

-- List all possible combinations of Customer names and Product names that can be ordered from specific customer
select Customers.Name, Products.Name
from Customers
cross join Products

-- List all Business Entities that have any Order
select BusinessEntities.Name, Orders.BusinessEntityId, OrderDate, TotalPrice
from  BusinessEntities
left join Orders
on BusinessEntities.Id = Orders.BusinessEntityId


-- List all Entities without orders
select BusinessEntities.Name, Orders.BusinessEntityId
from  BusinessEntities
left join Orders
on BusinessEntities.Id = Orders.BusinessEntityId
where BusinessEntityId is null

-- List all Customers without orders (using Right Join and using Left join)
select Customers.Name, Orders.CustomerId
from Customers
left join Orders
on Customers.Id = Orders.CustomerId
where CustomerId is null

-- Right join --
select Orders.CustomerId, Customers.Name
from Orders
right join Customers
on Orders.CustomerId = Customers.Id
where CustomerId is null



