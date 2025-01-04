-- models/mart/order/dim_ship_address.sql

WITH DIM_SHIP_ADDRESS AS (
    SELECT 
        SHIPTOADDRESSID,  
        CITY, 
        STATE_PROVINCE, 
        COUNTRY_REGION
    FROM 
        {{ ref('int_ship_address') }}
)

SELECT * FROM DIM_SHIP_ADDRESS