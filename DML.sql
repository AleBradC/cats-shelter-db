USE CatsShelter;
GO;

SELECT * FROM CAT;

SELECT name, temperament FROM CAT WHERE id=1;

SELECT name FROM DISEASES WHERE recurrence>=1 AND symptoms='Sneezing';

-- inner join, cel putin o potrivire intre cele 2 tabele
SELECT CAT.id, CAT.name, ADOPTION_PERS.name AS adoption_person_name
FROM CAT INNER JOIN ADOPTION_PERS ON CAT.adoption_pers = ADOPTION_PERS.id;

-- left join, toate înregistrările din tabelul din partea stângă, chiar si daca nu sunt potriviri
SELECT VOLUNTEER_CAT.start_date, VOLUNTEER_CAT.end_date
FROM VOLUNTEER_CAT LEFT OUTER JOIN CAT ON VOLUNTEER_CAT.cat_id = CAT.id;

-- right join, toate înregistrările din tabelul din partea dreaptă, chiar si daca nu sunt potriviri
SELECT FUR.color, FUR.length
FROM FUR RIGHT OUTER JOIN CAT ON FUR.id = CAT.fur;

-- full join
SELECT FINDER.name FROM FINDER
FULL OUTER JOIN FOSTER ON FINDER.id = FOSTER.id;

-- GROUP BY, COUNT
-- un foster cate pisici are => foster: numar pisici
SELECT FOSTER.name, COUNT(CAT_FOSTER.cat_id) AS number_of_cats_fostered
FROM CAT_FOSTER INNER JOIN FOSTER ON CAT_FOSTER.foster_id = FOSTER.id
GROUP BY FOSTER.name;

-- HAVING, COUNT
-- cate pisici au o boala => boala name: count mai mare de 10
SELECT DISEASES.name, COUNT(DISEASES_CAT.cat_id) AS number_of_cats
FROM DISEASES_CAT INNER JOIN DISEASES ON DISEASES_CAT.diseases_id = DISEASES.id
GROUP BY DISEASES.name
HAVING COUNT(DISEASES_CAT.cat_id)>= 1;

SELECT TOP 2 name from CAT ORDER BY name ASC;

SELECT DISTINCT length FROM FUR;

SELECT name FROM ADOPTION_PERS
INTERSECT
SELECT name FROM FOSTER;

SELECT name
FROM CAT
WHERE adoption_pers IN (SELECT id FROM FINDER);