-- models/intermediate/order/int_sales_detail.sql

WITH SALES_DETAIL AS (
    SELECT 
        SALESORDERID, 
        SALESORDERDETAILID, 
        CARRIERTRACKINGNUMBER, 
        ORDERQTY, 
        PRODUCTID, 
        SPECIALOFFERID, 
        UNITPRICE, 
        UNITPRICEDISCOUNT, 
        ROWGUID, 
        CAST(MODIFIEDDATE AS DATE) AS MODIFIEDDATE
    FROM 
        {{ ref('stg_adventure_works__salesorderdetail') }}
)

SELECT * FROM SALES_DETAIL