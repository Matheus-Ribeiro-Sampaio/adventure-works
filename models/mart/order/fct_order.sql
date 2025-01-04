-- models/intermediate/mart/order/fct_order.sql

WITH FCT_ORDER AS (
    SELECT 
        SALESORDERID, 
        ORDERDATEID, 
        STATUSID, 
        CUSTOMERID, 
        SALESPERSONID,  
        SHIPTOADDRESSID, 
        CREDITCARDID, 
        SUBTOTAL, 
        TAXAMT, 
        FREIGHT, 
        TOTALDUE,
        PRODUCTID,
        SALESREASONID,
        SALESORDERDETAILID
    FROM 
        {{ ref('int_sales_order') }}
)

SELECT * FROM FCT_ORDER