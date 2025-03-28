SELECT
    c_custkey AS Customer_ID,
    o_orderstatus AS Order_Status,
    COUNT(DISTINCT o_orderkey) AS Order_Count
FROM
    customer
JOIN
    nation ON c_nationkey = n_nationkey
JOIN
    region ON n_regionkey = r_regionkey
JOIN
    orders ON c_custkey = o_custkey
JOIN
    lineitem ON o_orderkey = l_orderkey
JOIN
    supplier ON l_suppkey = s_suppkey
GROUP BY
    c_custkey, o_orderstatus;
