-- models/intermediate/order/int_sales_status.sql

WITH SALES_STATUS AS (
    SELECT DISTINCT
        STATUSID, 
        CASE STATUSID
            WHEN 1 THEN 'In Process'
            WHEN 2 THEN 'Approved'
            WHEN 3 THEN 'Backordered'
            WHEN 4 THEN 'Rejected'
            WHEN 5 THEN 'Shipped'
            WHEN 6 THEN 'Cancelled'
            ELSE 'Unknown'
        END AS STATUS
    FROM 
        {{ ref('int_sales_order') }}
)

SELECT * FROM SALES_STATUS