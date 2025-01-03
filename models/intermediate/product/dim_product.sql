-- models/mart/order/dim_product.sql

WITH DIM_PRODUCT AS (
    SELECT 
        PRODUCTID, 
        NAME AS PRODUCT, 
        CLASS, 
        STYLE
    FROM 
        {{ ref('int_product') }}
)

SELECT * FROM DIM_PRODUCT