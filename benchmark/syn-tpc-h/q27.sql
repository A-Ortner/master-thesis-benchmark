SELECT
    r_name AS Region,
    n_name AS Nation,
    COUNT(DISTINCT s_suppkey) AS Supplier_Count,
    MIN(ps_supplycost) AS Min_Supply_Cost,
    AVG(ps_availqty) AS Avg_Available_Quantity
FROM
    region
JOIN
    nation ON r_regionkey = n_regionkey
JOIN
    supplier ON n_nationkey = s_nationkey
JOIN
    partsupp ON s_suppkey = ps_suppkey
GROUP BY
    r_name, n_name
ORDER BY
    Supplier_Count DESC;
