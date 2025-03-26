SELECT
    n_name AS Nation,
    SUM(l_extendedprice * (1 - l_discount)) AS Total_Spending
FROM
    customer
JOIN
    orders
    ON customer.c_custkey = orders.o_custkey
JOIN
    lineitem
    ON orders.o_orderkey = lineitem.l_orderkey
JOIN
    nation
    ON customer.c_nationkey = nation.n_nationkey
GROUP BY
    n_name
ORDER BY
    Total_Spending DESC;
