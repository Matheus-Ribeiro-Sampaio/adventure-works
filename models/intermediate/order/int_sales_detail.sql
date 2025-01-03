-- models/intermediate/order/int_sales_detail.sql

WITH SALES_DETAIL AS (
    SELECT 
        SALESORDERID, 
        SALESORDERDETAILID, 
        CAST(CARRIERTRACKINGNUMBER AS VARCHAR(15)) AS CARRIERTRACKINGNUMBER, 
        ORDERQTY, 
        PRODUCTID, 
        SPECIALOFFERID, 
        UNITPRICE, 
        UNITPRICEDISCOUNT, 
        CAST(ROWGUID AS VARCHAR(38)) AS ROWGUID, 
        CAST(MODIFIEDDATE AS DATE) AS MODIFIEDDATE
    FROM 
        {{ ref('stg_adventure_works__salesorderdetail') }}
)

SELECT * FROM SALES_DETAIL