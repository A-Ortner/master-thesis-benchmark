SELECT
    s_suppkey AS Supplier_ID,
    p_type AS Part_Type,
    MIN(ps_supplycost) AS Min_Supply_Cost
FROM
    supplier
JOIN
    partsupp ON s_suppkey = ps_suppkey
JOIN
    part ON ps_partkey = p_partkey
GROUP BY
    s_suppkey, p_type
ORDER BY
    Min_Supply_Cost ASC;
