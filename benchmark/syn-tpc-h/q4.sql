SELECT
    s_nationkey AS Supplier_Nation,
    o_orderpriority AS Order_Priority,
    SUM(l_extendedprice) AS Total_Revenue,
    COUNT(DISTINCT c_custkey) AS Unique_Customers
FROM
    customer
JOIN
    orders
    ON customer.c_custkey = orders.o_custkey
JOIN
    lineitem
    ON orders.o_orderkey = lineitem.l_orderkey
JOIN
    supplier
    ON lineitem.l_suppkey = supplier.s_suppkey
GROUP BY
    c_custkey
ORDER BY
    Total_Revenue DESC;
