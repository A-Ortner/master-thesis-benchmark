SELECT
    s_name AS Supplier_Name,
    n_name AS Supplier_Nation,
    p_brand AS Part_Brand,
    AVG(l_discount) AS Avg_Discount
FROM
    lineitem
JOIN
    supplier ON l_suppkey = s_suppkey
JOIN
    nation ON s_nationkey = n_nationkey
JOIN
    partsupp ON s_suppkey = ps_suppkey AND l_partkey = ps_partkey
JOIN
    part ON ps_partkey = p_partkey
GROUP BY
    s_name, n_name, p_brand;
