DELIMITER $$
CREATE PROCEDURE Cust_City(
    IN working_city varchar(50))
BEGIN
SELECT CUST_NAME FROM customer where WORKING_AREA=working_city;
END$$
DELIMITER ;


CALL Cust_City("Bangalore");