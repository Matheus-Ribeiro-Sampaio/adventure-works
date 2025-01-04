-- models/mart/order/dim_credit_card.sql

WITH DIM_CREDIT_CARD AS (
    SELECT 
        CREDITCARDID, 
        CARDTYPE
    FROM 
        {{ ref('int_credit_card') }}
)

SELECT * FROM DIM_CREDIT_CARD