SELECT
    s_name AS Supplier_Name,
    SUM(l_extendedprice * (1 - l_discount)) AS Total_Revenue,
    AVG(l_discount) AS Avg_Discount
FROM
    lineitem
JOIN
    supplier
    ON lineitem.l_suppkey = supplier.s_suppkey
GROUP BY
    s_name
ORDER BY
    Total_Revenue DESC;
