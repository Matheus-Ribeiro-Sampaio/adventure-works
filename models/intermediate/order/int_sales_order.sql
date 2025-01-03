-- models/intermediate/order/int_sales_order.sql

WITH SALES_ORDER AS (
    SELECT 
        SALESORDERID, 
        REVISIONNUMBER, 
        CAST(ORDERDATE AS DATE) AS ORDERDATE, 
        CAST(DUEDATE AS DATE) AS DUEDATE, 
        CAST(SHIPDATE AS DATE) AS SHIPDATE,
        STATUS AS STATUSID, 
        ONLINEORDERFLAG, 
        PURCHASEORDERNUMBER, 
        ACCOUNTNUMBER, 
        CUSTOMERID, 
        SALESPERSONID, 
        TERRITORYID, 
        BILLTOADDRESSID, 
        SHIPTOADDRESSID, 
        SHIPMETHODID, 
        CREDITCARDID, 
        CREDITCARDAPPROVALCODE, 
        CURRENCYRATEID, 
        SUBTOTAL, 
        TAXAMT, 
        FREIGHT, 
        TOTALDUE, 
        -- COMMENT, --CAMPO DESCARTADO, SOMENTE CONTÉM VALORES NULOS 
        ROWGUID, 
        CAST(MODIFIEDDATE AS DATE) AS MODIFIEDDATE  
    FROM 
        {{ ref('stg_adventure_works__salesorderheader') }}
)

SELECT * FROM SALES_ORDER