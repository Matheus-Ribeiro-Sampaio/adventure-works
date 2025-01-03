-- models/staging/adventure_works/stg_adventure_works__person.sql

WITH PERSON AS (
    SELECT 
        BUSINESSENTITYID, 
        PERSONTYPE, 
        NAMESTYLE, 
        TITLE, 
        FIRSTNAME, 
        MIDDLENAME, 
        LASTNAME, 
        SUFFIX, 
        EMAILPROMOTION, 
        ADDITIONALCONTACTINFO, 
        DEMOGRAPHICS, 
        ROWGUID, 
        MODIFIEDDATE 
    FROM 
        {{ source('adventure_works','person')}}
)

SELECT * FROM PERSON