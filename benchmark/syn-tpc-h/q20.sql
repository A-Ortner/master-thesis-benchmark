SELECT
    s_suppkey AS Supplier_ID,
    p_size AS Part_Size,
    MAX(ps_supplycost) AS Max_Supply_Cost
FROM
    supplier
JOIN
    partsupp ON s_suppkey = ps_suppkey
JOIN
    part ON ps_partkey = p_partkey
GROUP BY
    s_suppkey, p_size
ORDER BY
    Max_Supply_Cost DESC;
