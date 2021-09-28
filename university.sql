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

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
SELECT * 
FROM `exams` 
WHERE `date` = "2020-06-20" AND `hour` >= "14:00:00";

-- 6. Selezionare tutti i corsi di laurea magistrale
SELECT * 
FROM `degrees`
WHERE `level` = "magistrale";

-- 7. Da quanti dipartimenti è composta l'università?
SELECT COUNT(*) AS "num_departments"
FROM `departments`;

-- 8. Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT COUNT(*) AS "tot_teachers_no_phone" 
FROM `teachers` 
WHERE `phone` IS NULL;

-- GROUP BY 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS "students_num", YEAR(`enrolment_date`)  
FROM `students` 
GROUP BY YEAR(`enrolment_date`);

-- GROUP BY 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS "teachers_num", `office_address` 
FROM `teachers` 
GROUP BY `office_address`;

-- GROUP BY 3. Calcolare la media dei voti di ogni appello d'esame
SELECT ROUND(AVG(`vote`), 1) AS "average_vote_exam", `exam_id` 
FROM `exam_student`
GROUP BY `exam_id`;

-- GROUP BY 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(*) AS "degrees_num", `department_id` 
FROM `degrees`
GROUP BY `department_id`;