SELECT
    c_custkey AS Customer_ID,
    o_orderstatus AS Order_Status,
    MAX(o_totalprice) AS Max_Order_Price
FROM
    customer
JOIN
    orders ON c_custkey = o_custkey
GROUP BY
    c_custkey, o_orderstatus
ORDER BY
    Max_Order_Price DESC;
