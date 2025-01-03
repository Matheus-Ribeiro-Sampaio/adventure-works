-- models/staging/adventure_works/stg_adventure_works__address.sql

WITH ADDRESS AS (
    SELECT 
        ADDRESSID, 
        ADDRESSLINE1, 
        ADDRESSLINE2, 
        CITY, 
        STATEPROVINCEID, 
        POSTALCODE, 
        SPATIALLOCATION, 
        ROWGUID, 
        MODIFIEDDATE 
    FROM 
        {{ source('adventure_works','address')}}
)

SELECT * FROM ADDRESS