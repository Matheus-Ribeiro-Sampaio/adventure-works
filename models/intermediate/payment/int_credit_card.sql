-- models/intermediate/payment/int_credit_card.sql

WITH CREDITCARD AS (
    SELECT 
        CREDITCARDID, 
        CAST(CARDTYPE AS VARCHAR(20)) AS CARDTYPE, 
        CARDNUMBER, 
        EXPMONTH, 
        EXPYEAR, 
        CAST(MODIFIEDDATE AS DATE) AS MODIFIEDDATE 
    FROM 
        {{ ref('stg_adventure_works__creditcard') }}
)

SELECT * FROM CREDITCARD