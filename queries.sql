-- Multi-Table Query Practice
 -- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT product.ProductName,
       category.CategoryName
FROM Product
JOIN category ON category.Id = product.CategoryId;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT id,
       shipper.CompanyName
from [order]
JOIN [Shipper] ON shipper.Id = ShipVia
WHERE OrderDate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName,
       QuantityPerUnit
FROM OrderDetail
JOIN Product ON product.Id = orderDetail.ProductId
WHERE orderId = "10251";

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [order].id,
       [customer].CompanyName,
       [employee].LastName
FROM [Order]
JOIN [Employee] ON employee.Id=[order].EmployeeId
JOIN [Customer] ON Customer.Id=[order].CustomerId;

