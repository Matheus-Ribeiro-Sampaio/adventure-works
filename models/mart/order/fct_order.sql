-- models/intermediate/mart/order/fct_order.sql

WITH FCT_ORDER AS (
    SELECT 
        SALESORDERID, 
        ORDERDATE, 
        STATUSID, 
        CUSTOMERID, 
        SALESPERSONID,  
        SHIPTOADDRESSID, 
        CREDITCARDID, 
        SUBTOTAL, 
        TAXAMT, 
        FREIGHT, 
        TOTALDUE, 
        MODIFIEDDATE 
    FROM 
        {{ ref('int_sales_order') }}
)

SELECT * FROM FCT_ORDER