# New customers
SELECT 
	FirstName,
    LastName,
    COUNT(OrderID) as TotalOrders
FROM
	customer
LEFT JOIN
	orders
ON 
	orders.CustomerID = customer.CustomerID
GROUP BY
	customer.CustomerID
HAVING
	COUNT(OrderID) = 0
;