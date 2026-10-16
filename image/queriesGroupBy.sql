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

{/*Es: */}

{/*Es: */}