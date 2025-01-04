-- models/intermediate/date/int_sales_order_date.sql

WITH SALES_ORDER_DATE AS (
    SELECT DISTINCT
        ORDERDATEID, 
        ORDERDATE AS DATE, 
        EXTRACT(YEAR FROM ORDERDATE) AS YEAR,
        TO_CHAR(ORDERDATE, 'MM/YYYY') AS MONTH_YEAR,
        TO_CHAR(ORDERDATE, 'Month') AS MONTH
    FROM 
        {{ ref('int_sales_order') }}
)

SELECT * FROM SALES_ORDER_DATE