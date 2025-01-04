-- models/mart/order/dim_order_detail.sql

WITH DIM_ORDER_DETAIL AS (
    SELECT 
        SALESORDERDETAILID, 
        ORDERQTY, 
        UNITPRICE, 
        UNITPRICEDISCOUNT
    FROM 
        {{ ref('int_sales_detail') }}
)

SELECT * FROM DIM_ORDER_DETAIL