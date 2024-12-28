# Top Customers
SELECT 
	customer.FirstName,
    customer.LastName,
	COUNT(DISTINCT orders.OrderID) as TotalNumberOfOrders,
    SUM(orderitem.Quantity) as TotalQuantityOfGoods,
    SUM(TotalDue) as TotalAmount
FROM 
	orders
LEFT JOIN
	customer
ON 
	customer.CustomerID = orders.CustomerID
LEFT JOIN
	orderitem
ON
	orderitem.OrderID =orders.OrderID
GROUP BY
	customer.CustomerID
ORDER BY
	TotalAmount DESC
;