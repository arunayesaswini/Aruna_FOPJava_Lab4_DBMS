/*Display the Id and Name of the Product ordered after “2021-10-05”*/
SELECT 
    PRO_ID, PRO_NAME, ORD_DATE
FROM
    PRODUCT
        JOIN
    SUPPLIER_PRICING USING (PRO_ID)
        JOIN
    ORDERS USING (PRICING_ID)
WHERE
    ORD_DATE > '2021-10-05';