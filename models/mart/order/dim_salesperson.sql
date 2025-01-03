-- models/mart/order/dim_salesperson.sql

WITH DIM_SALESPERSON AS (
    SELECT 
        SALESPERSONID, 
        NAME AS SALESPERSON
    FROM 
        {{ ref('int_salesperson') }}
)

SELECT * FROM DIM_SALESPERSON