-- models/intermediate/salesperson/int_salesperson.sql

WITH SALESPERSON AS (
    SELECT 
        SALES_ORDER.SALESPERSONID, 
        PERSON.PERSONTYPE,  
        PERSON.TITLE, 
        PERSON.NAME,
        PERSON.SUFFIX, 
        PERSON.EMAILPROMOTION, 
        PERSON.DEMOGRAPHICS, 
        PERSON.ROWGUID, 
        PERSON.MODIFIEDDATE
    FROM 
        {{ ref('int_sales_order') }} AS SALES_ORDER
    INNER JOIN {{ ref('int_person') }} AS PERSON
        ON PERSON.PERSONID = SALES_ORDER.SALESPERSONID
)

SELECT * FROM SALESPERSON