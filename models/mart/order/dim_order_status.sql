-- models/mart/order/dim_order_status.sql

WITH DIM_ORDER_STATUS AS (
    SELECT
        STATUSID, 
        STATUS
    FROM 
        {{ ref('int_sales_status') }}
)

SELECT * FROM DIM_ORDER_STATUS