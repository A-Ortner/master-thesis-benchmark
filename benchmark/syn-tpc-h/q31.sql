SELECT
    l_shipmode AS Ship_Mode,
    r_name AS Region,
    COUNT(DISTINCT o_orderkey) AS Order_Count,
    SUM(l_extendedprice) AS Total_Shipped_Value
FROM
    region
JOIN
    nation ON r_regionkey = n_regionkey
JOIN
    customer ON n_nationkey = c_nationkey
JOIN
    orders ON c_custkey = o_custkey
JOIN
    lineitem ON o_orderkey = l_orderkey
JOIN
    supplier ON l_suppkey = s_suppkey
GROUP BY
    l_shipmode, r_name
ORDER BY
    Order_Count DESC;
