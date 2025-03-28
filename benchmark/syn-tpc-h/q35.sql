SELECT
    c_mktsegment AS Customer_Segment,
    n_name AS Customer_Nation,
    COUNT(l_orderkey) AS Shipments
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
    c_mktsegment, n_name
ORDER BY
    Shipments DESC;
