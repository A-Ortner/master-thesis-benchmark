SELECT
    o_orderpriority AS Order_Priority,
    COUNT(*) AS Order_Count,
    SUM(l_extendedprice * (1 - l_discount)) AS Total_Revenue
FROM
    lineitem
JOIN
    orders
    ON lineitem.l_orderkey = orders.o_orderkey
JOIN
    supplier
    ON lineitem.l_suppkey = supplier.s_suppkey
JOIN
    nation
    ON supplier.s_nationkey = nation.n_nationkey
JOIN
    region
    ON nation.n_regionkey = region.r_regionkey
WHERE
    l_shipdate >= DATE '1995-01-01'
    AND l_shipdate < DATE '1996-01-01'
    AND r_name = 'ASIA'
GROUP BY
    o_orderpriority
ORDER BY
    Total_Revenue DESC;
