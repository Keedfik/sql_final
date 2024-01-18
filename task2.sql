DROP FUNCTION IF EXISTS numbers;

DELIMITER //
CREATE FUNCTION even_numbers(n INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
DECLARE i INT DEFAULT 1;
DECLARE result VARCHAR(100) DEFAULT "";
	WHILE i <= n do
		IF (i % 2 = 0) THEN
			SET result = concat(result, " ", i);
			SET i = i + 2;
		ELSE
			SET i = i + 1;
        END IF;
	END WHILE;
RETURN result;
END //
DELIMITER ;

SELECT numbers(10);
