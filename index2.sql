SELECT id, name, temperament, sex, date_of_adoption
FROM CAT
ORDER BY date_of_adoption;

CREATE INDEX idx_date_of_adoption ON CAT (date_of_adoption);

SET SHOWPLAN_XML ON;
GO

SELECT id, name, temperament, sex, date_of_adoption
FROM CAT
ORDER BY date_of_adoption;
GO

SET SHOWPLAN_XML OFF;
GO
