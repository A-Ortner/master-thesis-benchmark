SELECT
    s_suppkey AS Supplier_ID,
    n_name AS Nation,
    AVG(l_discount) AS Avg_Discount
FROM
    supplier
JOIN
    nation ON s_nationkey = n_nationkey
JOIN
    lineitem ON s_suppkey = l_suppkey
GROUP BY
    s_suppkey, n_name
ORDER BY
    Avg_Discount DESC;
