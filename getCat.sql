CREATE PROCEDURE GetCatById
    @id INT
AS
BEGIN
    SELECT id, name, temperament, sex, date_of_adoption
    FROM CAT
    WHERE id = @id;
END;

EXEC GetCatById @id = 4;



