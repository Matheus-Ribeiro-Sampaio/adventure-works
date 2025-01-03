-- models/staging/adventure_works/stg_adventure_works__countryregion.sql

WITH COUNTRYREGION AS (
    SELECT 
        COUNTRYREGIONCODE, 
        NAME, 
        MODIFIEDDATE  
    FROM 
        {{ source('adventure_works','countryregion')}}
)

SELECT * FROM COUNTRYREGION