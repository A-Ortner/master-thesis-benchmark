SELECT
    o_orderpriority AS Order_Priority,
    l_shipmode AS Ship_Mode,
    MIN(l_quantity) AS Min_Quantity
FROM
    orders
JOIN
    lineitem
    ON orders.o_orderkey = lineitem.l_orderkey
WHERE
    o_orderdate BETWEEN DATE '1995-01-01' AND DATE '1995-12-31'
GROUP BY
    o_orderpriority,
    l_shipmode
ORDER BY
    Min_Quantity ASC;
