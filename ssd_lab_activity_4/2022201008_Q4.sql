DELIMITER @@
CREATE PROCEDURE `tarunchahal1`()
BEGIN
DECLARE grde DECIMAL(10, 0);
DECLARE nme VARCHAR(40);
DECLARE city VARCHAR(35);
DECLARE finished integer default 0;
DECLARE contry VARCHAR(20);
DECLARE cC cursor for select CUST_NAME , CUST_CITY , CUST_COUNTRY , GRADE FROM customer WHERE AGENT_CODE like 'A00%';
DECLARE continue handler for NOT FOUND set finished=1;
open cC;
get_emp: LOOP
fetch cC into nme, city, contry, grde;
if finished=1 then
leave get_emp;
end if;
select nme, city, contry, grde;
END LOOP get_emp;
close cC;
end@@

DELIMITER ;


call `tarunchahal1`();