SELECT
    r_name AS Region,
    o_orderstatus AS Order_Status,
    COUNT(DISTINCT o_orderkey) AS Total_Orders
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
    r_name;
