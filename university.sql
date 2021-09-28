-- 1. Selezionare tutti gli studenti nati nel 1990 
SELECT * 
FROM `students` 
WHERE YEAR(`date_of_birth`) = "1990";

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT `name`, `cfu` 
FROM `courses` 
WHERE `cfu` > 10;

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT `name`, `surname`, `date_of_birth`
FROM `students` 
WHERE (YEAR(NOW()) - YEAR(`date_of_birth`)) > 30;

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea
SELECT *
FROM `courses` 
WHERE `degree_id` = 2 AND `year` = 1 AND `period` = "I semestre";