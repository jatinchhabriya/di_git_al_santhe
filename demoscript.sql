WITH avg_price_brand AS
    (SELECT brand, AVG(price) AS average_for_brand
     FROM cameras
     GROUP BY brand) SELECT c.id, c.brand, c.model, c.price, avg.average_for_brand
FROM cameras c
ON c.brand = avg_price_brand.brand;