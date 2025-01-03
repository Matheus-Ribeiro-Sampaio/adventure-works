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
        {{ ref('int_person') }} AS PERSON
    INNER JOIN {{ ref('int_sales_order') }} AS SALES_ORDER
        ON SALES_ORDER.SALESPERSONID = PERSON.PERSONID
)

SELECT * FROM SALESPERSON