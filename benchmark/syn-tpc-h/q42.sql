SELECT
    c_name AS Customer_Name,
    n_name AS Customer_Nation,
    o_orderpriority AS Order_Priority,
    AVG(l_discount) AS Avg_Discount
FROM
    lineitem
JOIN
    orders ON l_orderkey = o_orderkey
JOIN
    customer ON o_custkey = c_custkey
JOIN
    nation ON c_nationkey = n_nationkey
GROUP BY
    c_name, n_name, o_orderpriority;
