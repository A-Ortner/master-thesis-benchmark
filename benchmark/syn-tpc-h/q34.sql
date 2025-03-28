SELECT
    s_nationkey AS Nation_Key,
    p_type AS Part_Type,
    MIN(ps_supplycost) AS Min_Supply_Cost
FROM
    supplier
JOIN
    nation ON s_nationkey = n_nationkey
JOIN
    region ON n_regionkey = r_regionkey
JOIN
    partsupp ON s_suppkey = ps_suppkey
JOIN
    part ON ps_partkey = p_partkey
JOIN
    lineitem ON p_partkey = l_partkey
GROUP BY
    s_nationkey, p_type;
