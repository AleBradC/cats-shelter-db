CREATE TRIGGER delete_cat
ON CAT
AFTER DELETE 
AS 
BEGIN
    INSERT INTO DeleteLogs (delete_date, deleted_by, cat_id, name, temperament, sex, date_of_adoption, adoption_pers, fur, finder)
    SELECT 
        GETDATE() AS delete_date,
        SUSER_SNAME() AS deleted_by,
        d.id,
        d.name,
        d.temperament,
        d.sex,
        d.date_of_adoption,
        d.adoption_pers,
        d.fur,
        d.finder
    FROM 
        DELETED d;
END;
GO

CREATE TABLE DeleteLogs (
    log_id INT PRIMARY KEY IDENTITY(1,1),
    delete_date DATETIME,
    deleted_by NVARCHAR(128),
    cat_id INT,
    name VARCHAR(20),
    temperament VARCHAR(20),
    sex CHAR(1),
    date_of_adoption DATE,
    adoption_pers INT,
    fur INT,
    finder INT
);



SELECT * FROM DeleteLogs;