/*Display the Supplier details who can supply more than one product.*/
SELECT 
    SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE
FROM
    SUPPLIER
        JOIN
    SUPPLIER_PRICING USING (SUPP_ID)
    JOIN 
    PRODUCT USING (PRO_ID) GROUP BY SUPP_ID,SUPP_NAME HAVING COUNT(PRO_NAME)>1 ;