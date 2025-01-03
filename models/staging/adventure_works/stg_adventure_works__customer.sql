-- models/staging/adventure_works/stg_adventure_works__customer.sql

WITH CUSTOMER AS (
    SELECT 
        CUSTOMERID, 
        PERSONID, 
        STOREID, 
        TERRITORYID, 
        ROWGUID, 
        MODIFIEDDATE 
    FROM 
        {{ source('adventure_works','customer')}}
)

SELECT * FROM CUSTOMER