-- models/staging/staging/stg_adventure_works__salesorderheadersalesreason.sql

WITH SALESORDERHEADERSALESREASON AS (
    SELECT 
        SALESORDERID, 
        SALESREASONID, 
        MODIFIEDDATE 
    FROM 
        {{ source('adventure_works','salesorderheadersalesreason')}}
)
SELECT * FROM SALESORDERHEADERSALESREASON