-- models/mart/order/dim_order_reason.sql

WITH DIM_ORDER_REASON AS (
    SELECT 
        SALESREASONID, 
        NAME AS REASON, 
        REASONTYPE
    FROM 
        {{ ref('int_sales_reason') }}
)

SELECT * FROM DIM_ORDER_REASON