{/*Es: 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia*/}

SELECT s.id, s.name, s.surname , d.name 
FROM students s
JOIN degrees d
ON d.id  = s.degree_id 
WHERE  d.name  LIKE '%Economi%'
;

{/*Es: 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze*/}

SELECT degrees.name AS degree_name , degrees.level
FROM degrees
JOIN departments d 
ON d.id = degrees.department_id 
WHERE degrees.level = 'magistrale'
AND d.id =7
;

{/*Es: 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)*/}

SELECT c.name AS course_name
FROM courses c 
JOIN course_teacher ct 
ON ct.course_id = c.id 
JOIN teachers t 
ON t.id = ct.teacher_id 
WHERE t.id = 44
;

{/*Es: 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome*/}

SELECT s.name AS student_name, s.surname AS student_surname, d.name AS degree_name, d2.name AS department_name
FROM students s 
JOIN degrees d 
ON d.id = s.degree_id 
JOIN departments d2 
ON d2.id = d.department_id 
ORDER BY s.surname ,s.name 
;

{/*Es: 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti*/}

SELECT d.name AS degree_course, c.name AS course_name, t.name AS teacher_name, t.surname AS teacher_surname
FROM degrees d 
JOIN courses c 
ON d.id  = c.degree_id 
JOIN course_teacher ct 
ON c.id = ct.course_id 
JOIN teachers t 
ON t.id = ct.teacher_id 
ORDER BY d.name , c.name, t.surname ,t.name 
;

{/*Es: 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)*/}

SELECT DISTINCT  t.name AS teacher_name, t.surname AS teacher_surname, d2.name AS department_name
FROM teachers t 
JOIN course_teacher ct 
ON ct.teacher_id = t.id 
JOIN courses c 
ON c.id = ct.course_id 
JOIN degrees d 
ON d.id = c.degree_id 
JOIN departments d2 
ON d2.id = d.department_id 
WHERE d2.id = 5
ORDER BY t.surname ,t.name 
;

{/*Es: 7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, stampando anche il voto massimo. Successivamente, filtrare i tentativi con voto minimo 18.*/}

SELECT s.name AS student_name, s.surname AS student_surname, c.name AS courseExam_name, COUNT(es.student_id ) AS tentativi_esame, MAX(es.vote ) AS voto_massimo
FROM students s 
JOIN exam_student es 
ON es.student_id = s.id 
JOIN exams e 
ON e.id = es.exam_id 
JOIN courses c 
ON c.id = e.course_id 
GROUP BY s.name , s.surname , c.name
HAVING MAX(es.vote) >= 18
;