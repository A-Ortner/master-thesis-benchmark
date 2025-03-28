SELECT
    c_name AS Customer_Name,
    o_orderstatus AS Order_Status,
    c_mktsegment AS Market_Segment,
    COUNT(DISTINCT o_orderkey) AS Order_Count,
    MAX(l_extendedprice) AS Max_Order_Value
FROM
    lineitem
JOIN
    orders ON l_orderkey = o_orderkey
JOIN
    customer ON o_custkey = c_custkey
GROUP BY
    c_name, o_orderstatus, c_mktsegment
ORDER BY
    Order_Count DESC;
