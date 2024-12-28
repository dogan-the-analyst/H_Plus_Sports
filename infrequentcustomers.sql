# Infrequent Customers
SELECT
	customer.CustomerID,
    customer.FirstName,
    customer.LastName,
    COUNT(DISTINCT OrderID) as TotalOrders
FROM
	orders
LEFT JOIN 
	customer
ON
	orders.CustomerID = customer.CustomerID
GROUP BY 
	customer.CustomerID
HAVING 
	COUNT(DISTINCT OrderID) = 1
;