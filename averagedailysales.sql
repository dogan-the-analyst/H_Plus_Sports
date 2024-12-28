# Average Daily Sales
SELECT 
    SUM(Quantity) / COUNT(DISTINCT CreationDate) as AverageDailySales
FROM 
	orders
LEFT JOIN
	orderitem
ON 
	orders.OrderID = orderitem.OrderID
;