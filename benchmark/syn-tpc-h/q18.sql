SELECT
    p_type AS Part_Type,
    r_name AS Supplier_Region,
    MIN(l_discount) AS Min_Discount
FROM
    lineitem
JOIN
    part ON l_partkey = p_partkey
JOIN
    supplier ON l_suppkey = s_suppkey
JOIN
    nation ON s_nationkey = n_nationkey
JOIN
    region ON n_regionkey = r_regionkey
GROUP BY
    p_type, r_name
ORDER BY
    Min_Discount ASC;
