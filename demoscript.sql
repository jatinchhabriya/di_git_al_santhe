SELECT c.id, c.brand, c.model, c.price, avg.average_for_brand
FROM cameras c
JOIN brand b
ON c.brand = b.brand GROUP BY brand;