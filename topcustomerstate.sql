# Top Customer State
SELECT
	State,
    SUM(Quantity) as TotalQuantity,
    SUM(TotalDue) as TotalAmount
FROM 
	orders
LEFT JOIN 
	orderitem
ON 
	orders.OrderID = orderitem.OrderID
LEFT JOIN
	customer
ON 
	orders.CustomerID = customer.CustomerID
GROUP BY
	State
ORDER BY 
	TotalQuantity DESC
LIMIT 5
;