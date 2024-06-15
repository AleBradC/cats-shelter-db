CREATE PROCEDURE DeleteCat
    @id INT
AS
BEGIN
    DELETE FROM VOLUNTEER_CAT
    WHERE cat_id = @id;

    DELETE FROM DISEASES_CAT
    WHERE cat_id = @id;

    DELETE FROM CAT_FOSTER
    WHERE cat_id = @id;

    DELETE FROM CAT
    WHERE id = @id;
END;

EXEC DeleteCat @id = 1;

Drop PROCEDURE [DeleteCat];