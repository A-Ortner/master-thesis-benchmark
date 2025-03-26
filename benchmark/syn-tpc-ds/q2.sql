-- Customer Spending by State
SELECT
    ca_state AS State,
    SUM(cs_net_paid) AS Total_Spending,
    COUNT(DISTINCT c_customer_sk) AS Unique_Customers
FROM
    customer
JOIN
    customer_address
    ON customer.c_current_addr_sk = customer_address.ca_address_sk
JOIN
    catalog_sales
    ON customer.c_customer_sk = catalog_sales.cs_bill_customer_sk
GROUP BY
    ca_state
ORDER BY
    Total_Spending DESC;
