# Sales By Month and Year
SELECT 
	MONTHNAME(CreationDate) as MonthName,
    YEAR(CreationDate) as OrderYear,
    COUNT(DISTINCT orders.OrderID) as TotalOrder,
    SUM(Quantity) as TotalQuantity,
    SUM(TotalDue) as TotalAmount
FROM 
	orders
LEFT JOIN
	orderitem
ON
	orders.OrderID = orderitem.OrderID
GROUP BY 
	MonthName, OrderYear
ORDER BY
	OrderYear, MONTH(CreationDate)
;