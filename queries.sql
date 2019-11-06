-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    select ProductName from [Product]
    join Category on Category.Id = Product.CategoryId

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    select o.Id, Shipper.CompanyName as CompanyName
    from [Order] as o
    join Shipper on Shipper.Id = o.ShipVia
    where o.OrderDate <= "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
    select p.ProductName as Name, count(*) as Quantity
    from [OrderDetail] as od
    join Product as p on p.Id = od.ProductId
    where od.OrderId = 10251;  

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
    select o.Id as OrderID, e.LastName as "Employee Last Name", c.CompanyName as "Customer Company Name"
    from [Order] as o
    join Employee as e on o.EmployeeId = e.Id
    join Customer as c on o.CustomerId = c.Id;