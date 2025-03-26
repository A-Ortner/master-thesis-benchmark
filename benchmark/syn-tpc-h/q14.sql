SELECT
    r_name AS Region,
    o_orderpriority AS Order_Priority,
    COUNT(*) AS Order_Count
FROM
    region
JOIN
    nation ON r_regionkey = n_regionkey
JOIN
    customer ON n_nationkey = c_nationkey
JOIN
    orders ON c_custkey = o_custkey
GROUP BY
    r_name, o_orderpriority
ORDER BY
    Order_Count DESC;
