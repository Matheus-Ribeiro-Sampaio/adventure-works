-- models/staging/staging/stg_adventure_works__salesorderdetail.sql

WITH SALESORDERDETAIL AS (
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
        MODIFIEDDATE 
    FROM 
        {{ source('adventure_works','salesorderdetail')}}
)
SELECT * FROM SALESORDERDETAIL