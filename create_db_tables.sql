-- CREATE DATABASE CatsShelter;
-- GO
USE CatsShelter;

CREATE TABLE ADOPTION_PERS
(
    id INT PRIMARY KEY,
    name VARCHAR(50),
);

CREATE TABLE FUR
(
    id INT PRIMARY KEY,
    color VARCHAR(50),
    length VARCHAR(50)
);

CREATE TABLE FINDER
(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    date DATE
);

CREATE TABLE CAT
(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    temperament VARCHAR(20),
    sex VARCHAR(1),
    date_of_adoption DATE,
    adoption_pers INT FOREIGN KEY REFERENCES ADOPTION_PERS(id),
    fur INT FOREIGN KEY REFERENCES FUR(id),
    finder INT FOREIGN KEY REFERENCES FINDER(id),
);

CREATE TABLE FOSTER
(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE DISEASES
(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    symptoms VARCHAR(40),
    recurrence BIT
);

CREATE TABLE VOLUNTEER
(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    period_time INT,
);

CREATE TABLE CAT_FOSTER(
    cat_id INT FOREIGN KEY REFERENCES CAT(id),
    foster_id INT FOREIGN KEY REFERENCES FOSTER(id),
    PRIMARY KEY(cat_id, foster_id),
    start_date DATE,
    end_date DATE
);

CREATE TABLE DISEASES_CAT(
    diseases_id INT FOREIGN KEY REFERENCES DISEASES(id),
    cat_id INT FOREIGN KEY REFERENCES CAT(id),
    start_date DATE,
    PRIMARY KEY(diseases_id, cat_id, start_date),
    end_date DATE,
);


CREATE TABLE VOLUNTEER_CAT(
    voluteer_id INT FOREIGN KEY REFERENCES VOLUNTEER(id),
    cat_id INT FOREIGN KEY REFERENCES CAT(id),
    PRIMARY KEY(voluteer_id, cat_id),
    start_date DATE,
    end_date DATE
)

