SELECT
    s_suppkey AS Supplier_ID,
    p_brand AS Part_Brand,
    SUM(l_extendedprice) AS Total_Sales
FROM
    supplier
JOIN
    nation ON s_nationkey = n_nationkey
JOIN
    partsupp ON s_suppkey = ps_suppkey
JOIN
    part ON ps_partkey = p_partkey
JOIN
    lineitem ON p_partkey = l_partkey
JOIN
    orders ON l_orderkey = o_orderkey
GROUP BY
    s_suppkey, p_brand
ORDER BY
    Total_Sales DESC;
