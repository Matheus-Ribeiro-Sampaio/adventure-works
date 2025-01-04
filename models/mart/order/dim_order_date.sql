-- models/mart/order/dim_order_date.sql

WITH DIM_ORDER_DATE AS (
    SELECT 
        ORDERDATEID,
        DATE, 
        YEAR,
        MONTH_YEAR,
        MONTH
    FROM 
        {{ ref('int_sales_order_date') }}
)

SELECT * FROM DIM_ORDER_DATE