CREATE PROCEDURE UpdateCat
    @id INT,
    @name VARCHAR(20),
    @temperament VARCHAR(20),
    @sex CHAR(1),
    @date_of_adoption DATE
AS
BEGIN
    UPDATE CAT
    SET name = @name,
        temperament = @temperament,
        sex = @sex,
        date_of_adoption = @date_of_adoption
    WHERE id = @id;
END;

EXEC UpdateCat @id = 1, @name = 'Kitu', @temperament = 'Lovely', @sex = 'F', @date_of_adoption = '2023-11-10';
