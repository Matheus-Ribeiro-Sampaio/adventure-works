
-- models/staging/staging/stg_adventure_works__salesorderheader.sql

WITH SALESORDERHEADER AS (
    SELECT 
        SALESORDERID, 
        REVISIONNUMBER, 
        ORDERDATE, 
        DUEDATE, 
        SHIPDATE, 
        STATUS, 
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
        COMMENT, 
        ROWGUID, 
        MODIFIEDDATE 
    FROM 
        {{ source('adventure_works','salesorderheader')}}
)
SELECT * FROM SALESORDERHEADER