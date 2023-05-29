/*Create a stored procedure to display supplier id, name, 
Rating(Average rating of all the products sold by every customer) and Type_of_Service.
 For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, 
 If rating >2 print “Average Service” else print “Poor Service”. 
 Note that there should be one rating per supplier.
*/
DELIMITER //
CREATE PROCEDURE GetSupplierDetails()
BEGIN
 SELECT 
    SUPP_ID,
    SUPP_NAME,
    AVG(RAT_RATSTARS) AS 'RATING',
    CASE
        WHEN AVG(RAT_RATSTARS) = 5 THEN 'Excellent Service'
        WHEN AVG(RAT_RATSTARS) > 4 THEN 'Good Service'
        WHEN AVG(RAT_RATSTARS) > 2 THEN 'Average Service'
        ELSE 'Poor Service'
    END AS TYPE_OF_SERVICE
FROM
    SUPPLIER
        JOIN
    SUPPLIER_PRICING USING (SUPP_ID)
        JOIN
    ORDERS USING (PRICING_ID)
        JOIN
    RATING USING (ORD_ID) GROUP BY SUPP_ID ORDER BY SUPP_ID;
    END//
    
    CALL GetSupplierDetails();