/*Display all the orders along with product name ordered by a customer having Customer_Id=2*/

SELECT 
    CUS_ID,ORD_ID, PRO_NAME,ORD_AMOUNT
FROM
    ORDERS
        JOIN
    CUSTOMER USING (CUS_ID)
        JOIN
    SUPPLIER_PRICING USING (PRICING_ID)
        JOIN
    PRODUCT USING (PRO_ID)
WHERE
    CUS_ID = 2;