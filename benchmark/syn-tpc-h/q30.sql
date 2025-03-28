SELECT
    n_name AS Supplier_Nation,
    c_mktsegment AS Customer_Segment,
    SUM(l_extendedprice * (1 - l_discount)) AS Total_Revenue,
    COUNT(DISTINCT o_orderkey) AS Order_Count
FROM
    supplier
JOIN
    nation ON s_nationkey = n_nationkey
JOIN
    lineitem ON s_suppkey = l_suppkey
JOIN
    orders ON l_orderkey = o_orderkey
JOIN
    customer ON o_custkey = c_custkey
JOIN
    region ON n_regionkey = r_regionkey
GROUP BY
    n_name, c_mktsegment
ORDER BY
    Total_Revenue DESC;
