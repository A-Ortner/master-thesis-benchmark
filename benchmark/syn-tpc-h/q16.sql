SELECT
    l_shipmode AS Ship_Mode,
    p_brand AS Part_Brand,
    SUM(l_extendedprice) AS Total_Extended_Price
FROM
    lineitem
JOIN
    part ON l_partkey = p_partkey
GROUP BY
    l_shipmode, p_brand
ORDER BY
    Total_Extended_Price DESC;
