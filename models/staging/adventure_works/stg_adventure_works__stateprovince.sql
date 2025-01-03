-- models/staging/staging/stg_adventure_works__stateprovince.sql

WITH STATEPROVINCE AS (
    SELECT 
        STATEPROVINCEID, 
        STATEPROVINCECODE, 
        COUNTRYREGIONCODE, 
        ISONLYSTATEPROVINCEFLAG, 
        NAME, 
        TERRITORYID, 
        ROWGUID, 
        MODIFIEDDATE 
    FROM 
        {{ source('adventure_works','stateprovince')}}
)
SELECT * FROM STATEPROVINCE