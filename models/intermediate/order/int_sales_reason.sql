-- models/intermediate/order/int_sales_reason.sql

WITH SALES_ORDER_REASON AS (
    SELECT 
        SALESORDERID, 
        SALESREASONID
    FROM 
        {{ ref('stg_adventure_works__salesorderheadersalesreason') }}
),

SALES_REASON AS (
    SELECT 
        SALES_ORDER_REASON.SALESREASONID, 
        SALESREASON.NAME, 
        SALESREASON.REASONTYPE, 
        CAST(SALESREASON.MODIFIEDDATE AS DATE) AS MODIFIEDDATE
    FROM 
        {{ ref('stg_adventure_works__salesreason') }} AS SALESREASON
    INNER JOIN SALES_ORDER_REASON
        ON SALES_ORDER_REASON.SALESREASONID = SALESREASON.SALESREASONID
)

SELECT * FROM SALES_REASON