SELECT
  c.name
FROM 
  customers c
INNER JOIN
  purchases p 
  ON c.customerId = p.customerId
GROUP BY
  c.name
HAVING
  'moloko' = ANY(array_agg(p.productName))
  AND 'smetana' != ALL(array_agg(p.productName))