-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name` 
FROM `students`
JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`name`, `departments`.`name` 
FROM `degrees`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = "Dipartimento di Neuroscienze";

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`name`, `teachers`.`id`, `teachers`.`name`, `teachers`.`surname`
FROM `courses`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`id` = 44;