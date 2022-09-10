DELIMITER $$
 CREATE PROCEDURE `addval`(
	IN `a` int,
	IN `b` int,
	OUT `summ` int)
	BEGIN
	Set summ = a + b;
END$$
DELIMITER;
	
CALL addval(2,3,@output);
SELECT @output;