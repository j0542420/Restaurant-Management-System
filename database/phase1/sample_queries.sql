-- Write basic SQL Queries for:

-- Viewing menu items by category 

select *
FROM MenuItems
order by Category;

-- Viewing table availability

select TableNumber, Status
from Tables
order by Status desc;

-- Listing recent orders  

select I.ItemName, I.Price, O.OrderDate
from Orders as O
inner join OrderDetails as D on O.OrderID = D.OrderID
inner join MenuItems as I on D.ItemID = I.ItemID
order by O.OrderDate desc;