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

{/*Es: */}

{/*Es: */}

{/*Es: */}

{/*Es: */}

{/*Es: */}