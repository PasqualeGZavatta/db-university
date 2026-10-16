{/*Es: 1. Contare quanti iscritti ci sono stati ogni anno */}

SELECT  DISTINCT  YEAR(enrolment_date ) , COUNT(*)AS enrolement_count
FROM students 
GROUP BY YEAR(enrolment_date )
ORDER  BY  YEAR(enrolment_date )
;

{/*Es: 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio*/}

SELECT office_address ,COUNT(*)AS teachers_count
FROM teachers 
GROUP BY office_address 
ORDER BY office_address 
;

{/*Es: 3. Calcolare la media dei voti di ogni appello d'esame*/}

SELECT AVG(vote )AS media_voti , COUNT(vote) AS numero_voti, name AS nome_corso
FROM exam_student
JOIN exams 
ON exam_student.exam_id = exams.id 
JOIN courses  
ON courses.id = exams.course_id 
GROUP BY exam_id ,name
;

{/*Es: */}