-- models/intermediate/date/int_date.sql

WITH DATE AS (
    SELECT 
        ORDERDATE AS DATE, 
        EXTRACT(YEAR FROM ORDERDATE) AS YEAR,
        TO_CHAR(ORDERDATE, 'MM/YYYY') AS MONTH_YEAR,
        TO_CHAR(ORDERDATE, 'Month') AS MONTH
    FROM 
        {{ ref('int_sales_order') }}
)

SELECT * FROM DATE