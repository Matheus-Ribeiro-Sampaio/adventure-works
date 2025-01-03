-- models/staging/staging/stg_adventure_works__salesreason.sql

WITH SALESREASON AS (
    SELECT 
        SALESREASONID, 
        NAME, 
        REASONTYPE, 
        MODIFIEDDATE 
    FROM 
        {{ source('adventure_works','salesreason')}}
)
SELECT * FROM SALESREASON