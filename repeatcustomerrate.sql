# Repeat Customer Rate
WITH Repeat_Customers AS
(
	SELECT
		CustomerID AS Repeat_Cus
        FROM orders
        GROUP BY CustomerID
        HAVING COUNT(OrderID) > 1
)
SELECT 
(
	COUNT(DISTINCT Repeat_Cus) / COUNT(DISTINCT CustomerID)
) * 100 AS CustomerRepeatRate
FROM
	orders
LEFT JOIN 
	Repeat_Customers
ON 
	orders.CustomerID = Repeat_Customers.Repeat_Cus
;