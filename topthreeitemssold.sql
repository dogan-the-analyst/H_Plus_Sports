# The Top Three Items Sold
SELECT 
	ProductCode,
    ProductName,
    Variety,
    SUM(Quantity) as TotalQuantity
FROM 
	orderitem
LEFT JOIN 
	product
ON
	product.ProductID = orderitem.ProductID
GROUP BY
	ProductCode
ORDER BY
	TotalQuantity DESC
LIMIT 3;
;