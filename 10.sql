SELECT t1.* FROM flourmills_sales t1 WHERE EXISTS (SELECT 1 FROM flourmills_sales t2 WHEREHA t2.product_name = t1.product_name HAVING COUNT(DISTINCT EXTRACT(MONTH FROM t2.sale_date)) > 1
);