SELECT id, name, temperament, sex, date_of_adoption
FROM CAT
WHERE sex = 'F' AND date_of_adoption > '2024-01-01';

CREATE INDEX idx_sex_date_of_adoption ON CAT (sex, date_of_adoption);

SET SHOWPLAN_XML ON;
GO

SELECT id, name, temperament, sex, date_of_adoption
FROM CAT
WHERE sex = 'F' AND date_of_adoption > '2024-01-01';
GO

SET SHOWPLAN_XML OFF;
GO
