USE CatsShelter;
-- GO;

INSERT INTO ADOPTION_PERS (id, name)
VALUES
    (1, 'Mahaela Pop'),
    (2, 'Alexandru Marian'),
    (3, 'Mirela Brad');

INSERT INTO FUR (id, color, length)
VALUES
    (1, 'Black', 'Short'),
    (2, 'White', 'Long'),
    (3, 'Brown', 'Medium'),
    (4, 'Orange', 'Long'),
    (5, 'Gray', 'Short');

INSERT INTO FINDER (id, name, date)
VALUES
    (1, 'Alexandru Brad', '2023-05-01'),
    (2, 'Bob Popescu', '2023-06-15'),
    (3, 'Andreea Pop', '2023-07-20');

INSERT INTO CAT (id, name, temperament, sex, date_of_adoption, adoption_pers, fur, finder)
VALUES
    (1, 'Whiskers', 'Calm', 'F', '2023-08-01', 1, 1, 1),
    (2, 'Fluffy', 'Playful', 'M', '2023-09-10', 2, 2, 2),
    (3, 'Shadow', 'Aggressive', 'M', '2023-10-05', 3, 3, 3);

INSERT INTO FOSTER (id, name)
VALUES
    (1, 'Tudor Pop'),
    (2, 'Alexandru Marian'),
    (3, 'Alexandra Claudia');

INSERT INTO DISEASES (id, name, symptoms, recurrence)
VALUES
    (1, 'Feline Leukemia', 'Weight Loss', 2),
    (2, 'Ringworm', 'Skin Lesions', 0),
    (3, 'Feline Herpesvirus', 'Sneezing', 1);

INSERT INTO VOLUNTEER (id, name, period_time)
VALUES
    (1, 'Alexandra Chereches', 6),
    (2, 'Ramona Pop', 12),
    (3, 'Georgia Pop', 3);

INSERT INTO CAT_FOSTER (cat_id, foster_id, start_date, end_date)
VALUES
    (1, 1, '2023-08-01', '2023-09-01'),
    (2, 2, '2023-09-10', '2023-10-10'),
    (3, 3, '2023-10-05', '2023-11-05');

INSERT INTO DISEASES_CAT (diseases_id, cat_id, start_date, end_date)
VALUES
    (1, 1, '2023-08-02', '2023-08-20'),
    (2, 2, '2023-09-12', '2023-09-25'),
    (3, 3, '2023-10-07', '2023-10-21');

INSERT INTO VOLUNTEER_CAT (voluteer_id, cat_id, start_date, end_date)
VALUES
    (1, 1, '2023-08-01', '2023-09-01'),
    (2, 2, '2023-09-10', '2023-10-10'),
    (3, 3, '2023-10-05', '2023-11-05');
