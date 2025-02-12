-- models/intermediate/order/int_sales_reason.sql

WITH SALES_REASON AS (
    SELECT DISTINCT
        SALES_ORDER_REASON.SALESORDERID,
        SALES_ORDER_REASON.SALESREASONID, 
        CAST(SALES_REASON.NAME AS VARCHAR(50)) AS NAME, 
        CAST(SALES_REASON.REASONTYPE AS VARCHAR(50)) AS REASONTYPE, 
        CAST(SALES_REASON.MODIFIEDDATE AS DATE) AS MODIFIEDDATE
    FROM 
        {{ ref('stg_adventure_works__salesreason') }} AS SALES_REASON
    INNER JOIN {{ ref('stg_adventure_works__salesorderheadersalesreason') }} SALES_ORDER_REASON
        ON SALES_ORDER_REASON.SALESREASONID = SALES_REASON.SALESREASONID
),
SALES_REASON_CONCATENATED_BY_SALESORDERID AS (
    SELECT DISTINCT
        SALESORDERID,
        LISTAGG(SALESREASONID, ', ') WITHIN GROUP (ORDER BY SALESREASONID) AS SALESREASONID,
        LISTAGG(NAME, ', ') WITHIN GROUP (ORDER BY SALESREASONID) AS NAME,
        LISTAGG(REASONTYPE, ', ') WITHIN GROUP (ORDER BY SALESREASONID) AS REASONTYPE,
        LISTAGG(CAST(MODIFIEDDATE AS DATE), ', ') WITHIN GROUP (ORDER BY SALESREASONID) AS MODIFIEDDATE
    FROM SALES_REASON
    GROUP BY SALESORDERID
)

SELECT * FROM SALES_REASON_CONCATENATED_BY_SALESORDERID