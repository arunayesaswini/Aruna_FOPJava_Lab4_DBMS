/*Find the least expensive product from each category
 and print the table with category id, name, product name and price of the product*/
 
SELECT 
    CAT_ID, CAT_NAME, PRO_NAME, SUPP_PRICE
FROM
    CATEGORY
        JOIN
    PRODUCT USING (CAT_ID)
        JOIN
    SUPPLIER_PRICING USING (PRO_ID)
WHERE
    (CAT_ID , SUPP_PRICE) IN (SELECT 
            CAT_ID, MIN(SUPP_PRICE)
        FROM
            PRODUCT
                JOIN
            SUPPLIER_PRICING USING (PRO_ID)
            JOIN
            CATEGORY USING(CAT_ID)
        GROUP BY CAT_ID)
ORDER BY CAT_ID;
