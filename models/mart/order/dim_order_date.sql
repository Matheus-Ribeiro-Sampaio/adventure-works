-- models/mart/order/dim_order_date.sql

WITH DIM_ORDER_DATE AS (
    SELECT 
        DATE AS ORDERDATE, 
        YEAR,
        MONTH_YEAR,
        MONTH
    FROM 
        {{ ref('int_date') }}
)

SELECT * FROM DIM_ORDER_DATE