CREATE PROCEDURE AddCat
    @id INT,
    @name VARCHAR(20),
    @temperament VARCHAR(20),
    @sex VARCHAR(1),
    @date_of_adoption DATE
AS
BEGIN
    INSERT INTO CAT (id, name, temperament, sex, date_of_adoption)
    VALUES (@id, @name, @temperament, @sex, @date_of_adoption);
END;

EXEC AddCat @id=4, @name = 'Kitu', @temperament = 'Calm', @sex = 'M', @date_of_adoption = '2023-10-05';


-- Drop PROCEDURE [AddCat];

