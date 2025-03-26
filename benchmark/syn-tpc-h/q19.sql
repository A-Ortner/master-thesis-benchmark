SELECT
    n_name AS Customer_Nation,
    o_orderstatus AS Order_Status,
    COUNT(o_orderkey) AS Order_Count
FROM
    nation
JOIN
    customer ON n_nationkey = c_nationkey
JOIN
    orders ON c_custkey = o_custkey
GROUP BY
    n_name, o_orderstatus
ORDER BY
    Order_Count DESC;
