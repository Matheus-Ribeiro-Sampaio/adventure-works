-- models/intermediate/order/int_sales_reason.sql

WITH SALES_REASON AS (
    SELECT 
        SALES_ORDER_REASON.SALESREASONID, 
        CAST(SALESREASON.NAME AS VARCHAR(50)) AS NAME, 
        CAST(SALESREASON.REASONTYPE AS VARCHAR(50)) AS REASONTYPE, 
        CAST(SALESREASON.MODIFIEDDATE AS DATE) AS MODIFIEDDATE
    FROM 
        {{ ref('stg_adventure_works__salesreason') }} AS SALESREASON
    INNER JOIN {{ ref('stg_adventure_works__salesorderheadersalesreason') }} SALES_ORDER_REASON
        ON SALES_ORDER_REASON.SALESREASONID = SALESREASON.SALESREASONID
)

SELECT * FROM SALES_REASON