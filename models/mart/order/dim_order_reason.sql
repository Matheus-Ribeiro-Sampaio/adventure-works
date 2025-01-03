-- models/mart/order/dim_order_reason.sql

WITH DIM_ORDER_REASON AS (
    SELECT 
        SALESORDERID,
        SALESREASONID, 
        NAME AS REASON, 
        REASONTYPE
    FROM 
        {{ ref('int_sales_reason') }}
)

SELECT * FROM DIM_ORDER_REASON