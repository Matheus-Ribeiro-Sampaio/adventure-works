-- models/intermediate/customer/int_customer.sql

WITH PERSON AS (
    SELECT 
        PERSONID, 
        PERSONTYPE,  
        TITLE, 
        NAME,
        SUFFIX, 
        EMAILPROMOTION, 
        DEMOGRAPHICS, 
        ROWGUID AS ROWGUIDPERSON, 
        MODIFIEDDATE AS MODIFIEDDATEPERSON 
    FROM 
        {{ ref('int_person') }}
),
CUSTOMER_PERSON_TREATMENT AS (
    SELECT 
        ORDER_CUSTOMER.CUSTOMERID, 
        CASE
            WHEN ORDER_CUSTOMER.PERSONID IS NULL THEN -1
            ELSE ORDER_CUSTOMER.PERSONID
        END AS PERSONID, 
        --ORDER_CUSTOMER.STOREID, --CAMPO DESCARTADO, CONTÉM IDS E NÃO SERÁ CONTEMPLADO EM DIMENSÃO 
        --TERRITORYID, --CAMPO DESCARTADO, CONTÉM IDS E NÃO SERÁ CONTEMPLADO EM DIMENSÃO 
        CAST(ORDER_CUSTOMER.ROWGUID AS VARCHAR(38)) AS ROWGUIDCUSTOMER, 
        CAST(ORDER_CUSTOMER.MODIFIEDDATE AS DATE) AS MODIFIEDDATECUSTOMER 
    FROM 
        {{ ref('stg_adventure_works__customer') }} AS ORDER_CUSTOMER
),
CUSTOMER AS (
    SELECT 
        ORDER_CUSTOMER.CUSTOMERID, 
        ORDER_CUSTOMER.PERSONID, 
        ORDER_CUSTOMER.ROWGUIDCUSTOMER, 
        ORDER_CUSTOMER.MODIFIEDDATECUSTOMER,
        PERSON.PERSONTYPE, 
        PERSON.TITLE, 
        PERSON.NAME,
        PERSON.SUFFIX, 
        PERSON.EMAILPROMOTION,
        PERSON.DEMOGRAPHICS, 
        PERSON.ROWGUIDPERSON, 
        PERSON.MODIFIEDDATEPERSON   
    FROM 
        CUSTOMER_PERSON_TREATMENT AS ORDER_CUSTOMER
    INNER JOIN PERSON
        ON PERSON.PERSONID = ORDER_CUSTOMER.PERSONID
)

SELECT * FROM CUSTOMER