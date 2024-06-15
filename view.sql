CREATE VIEW CatAdoptionDetails AS
SELECT 
    cat.id AS CatID,
    cat.name AS CatName,
    cat.temperament AS Temperament,
    cat.sex AS Sex,
    cat.date_of_adoption AS DateOfAdoption,
    adoption_pers.name AS AdoptionPersonName,
    fur.color AS FurColor,
    fur.length AS FurLength
FROM 
    CAT cat
LEFT JOIN 
    ADOPTION_PERS adoption_pers ON cat.adoption_pers = adoption_pers.id
LEFT JOIN 
    FUR fur ON cat.fur = fur.id;
GO

SELECT * FROM CatAdoptionDetails;

-- Drop VIEW [CatAdoptionDetails];