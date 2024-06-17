USE CatsShelter;
GO

CREATE PROCEDURE AddThousandCats
AS
BEGIN
    DECLARE @i INT = 1;
    
    WHILE @i <= 1000
    BEGIN
        INSERT INTO CAT (id, name, temperament, sex, date_of_adoption, adoption_pers, fur, finder)
        VALUES (@i, 
                CONCAT('Cat', @i), 
                CASE WHEN @i % 2 = 0 THEN 'Calm' ELSE 'Aggressive' END, 
                CASE WHEN @i % 2 = 0 THEN 'M' ELSE 'F' END, 
                GETDATE(), 
                1,
                1,
                1  
               );
        SET @i = @i + 1;
    END
END;
GO

EXEC AddThousandCats;