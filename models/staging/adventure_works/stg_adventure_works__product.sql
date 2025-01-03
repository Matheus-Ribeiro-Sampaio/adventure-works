-- models/staging/adventure_works/stg_adventure_works__product.sql

WITH PRODUCT AS (
    SELECT 
        PRODUCTID, 
        NAME, 
        PRODUCTNUMBER, 
        MAKEFLAG, 
        FINISHEDGOODSFLAG, 
        COLOR, 
        SAFETYSTOCKLEVEL, 
        REORDERPOINT, 
        STANDARDCOST, 
        LISTPRICE, 
        SIZE, 
        SIZEUNITMEASURECODE, 
        WEIGHTUNITMEASURECODE, 
        WEIGHT, 
        DAYSTOMANUFACTURE, 
        PRODUCTLINE, 
        CLASS, 
        STYLE, 
        PRODUCTSUBCATEGORYID, 
        PRODUCTMODELID, 
        SELLSTARTDATE, 
        SELLENDDATE, 
        DISCONTINUEDDATE, 
        ROWGUID, 
        MODIFIEDDATE 
    FROM 
        {{ source('adventure_works','product')}}
)

SELECT * FROM PRODUCT