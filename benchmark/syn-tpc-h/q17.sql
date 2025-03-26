SELECT
    c_custkey AS Customer_ID,
    o_orderpriority AS Order_Priority,
    AVG(l_quantity) AS Avg_Quantity
FROM
    customer
JOIN
    orders ON c_custkey = o_custkey
JOIN
    lineitem ON o_orderkey = l_orderkey
GROUP BY
    c_custkey, o_orderpriority
ORDER BY
    Avg_Quantity DESC;
