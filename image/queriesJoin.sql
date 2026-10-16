{/*Es: 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia*/}

SELECT s.id, s.name, s.surname , d.name 
FROM students s
JOIN degrees d
ON d.id  = s.degree_id 
WHERE  d.name  LIKE '%Economi%'
;

{/*Es: */}

{/*Es: */}

{/*Es: */}

{/*Es: */}

{/*Es: */}

{/*Es: */}