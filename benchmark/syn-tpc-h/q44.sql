SELECT
    p_type AS Part_Type,
    p_brand AS Part_Brand,
    s_name AS Supplier_Name,
    l_shipmode AS Ship_Mode,
    AVG(l_discount) AS Avg_Discount
FROM
    lineitem
JOIN
    part ON l_partkey = p_partkey
JOIN
    supplier ON l_suppkey = s_suppkey
JOIN
    partsupp ON s_suppkey = ps_suppkey AND l_partkey = ps_partkey
GROUP BY
    p_type, p_brand, s_name, l_shipmode;
