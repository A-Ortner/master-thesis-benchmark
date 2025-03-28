SELECT
    s_suppkey AS Supplier_ID,
    o_orderpriority AS Order_Priority,
    SUM(l_extendedprice) AS Total_Revenue,
    COUNT(DISTINCT o_orderkey) AS Order_Count
FROM
    supplier
JOIN
    nation ON s_nationkey = n_nationkey
JOIN
    region ON n_regionkey = r_regionkey
JOIN
    lineitem ON s_suppkey = l_suppkey
JOIN
    orders ON l_orderkey = o_orderkey
JOIN
    customer ON o_custkey = c_custkey
GROUP BY
    s_suppkey, o_orderpriority
ORDER BY
    Total_Revenue DESC;
