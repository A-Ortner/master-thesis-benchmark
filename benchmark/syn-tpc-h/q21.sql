SELECT
    c_custkey AS Customer_ID,
    c_mktsegment AS Market_Segment,
    SUM(l_extendedprice * (1 - l_discount)) AS Total_Revenue,
    COUNT(DISTINCT o_orderkey) AS Order_Count,
    AVG(l_quantity) AS Avg_Quantity
FROM
    customer
JOIN
    orders ON c_custkey = o_custkey
JOIN
    lineitem ON o_orderkey = l_orderkey
WHERE
    o_orderdate BETWEEN DATE '1995-01-01' AND DATE '1995-12-31'
GROUP BY
    c_custkey, c_mktsegment
ORDER BY
    Total_Revenue DESC;
