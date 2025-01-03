-- models/staging/staging/stg_adventure_works__creditcard.sql

WITH CREDITCARD AS (
    SELECT 
        CREDITCARDID, 
        CARDTYPE, 
        CARDNUMBER, 
        EXPMONTH, 
        EXPYEAR, 
        MODIFIEDDATE 
    FROM 
        {{ source('adventure_works','creditcard')}}
)
SELECT * FROM CREDITCARD