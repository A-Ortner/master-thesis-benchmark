SELECT
    p_type AS Part_Type,
    p_brand AS Part_Brand,
    SUM(l_extendedprice) AS Total_Sales
FROM
    part
JOIN
    lineitem ON p_partkey = l_partkey
GROUP BY
    p_type, p_brand
ORDER BY
    Total_Sales DESC;
