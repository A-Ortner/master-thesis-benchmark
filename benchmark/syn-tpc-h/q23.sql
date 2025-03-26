SELECT
    l_shipmode AS Ship_Mode,
    o_orderpriority AS Order_Priority,
    COUNT(*) AS Shipment_Count,
    SUM(l_extendedprice * l_discount) AS Total_Discounted_Value,
    AVG(l_shipinstruct) AS Avg_Shipping_Instruction
FROM
    lineitem
JOIN
    orders ON l_orderkey = o_orderkey
GROUP BY
    l_shipmode, o_orderpriority
ORDER BY
    Shipment_Count DESC;
