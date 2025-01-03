-- models/mart/order/dim_customer.sql

WITH DIM_CUSTOMER AS (
    SELECT 
        CUSTOMERID, 
        PERSONID AS CUSTOMERPERSONID, 
        NAME AS CUSTOMER,
    FROM 
        {{ ref('int_customer') }}
)

SELECT * FROM DIM_CUSTOMER