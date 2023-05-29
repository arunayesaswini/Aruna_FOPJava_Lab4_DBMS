/*Display the total number of customers 
based on gender who have placed 
individual orders of worth at least Rs.3000*/

SELECT 
    CUS_GENDER, COUNT(CUS_NAME) AS 'No.of Customers'
FROM
    CUSTOMER
        JOIN
    ORDERS USING (CUS_ID)
WHERE ORD_AMOUNT >= 3000
GROUP BY CUS_GENDER;
   
