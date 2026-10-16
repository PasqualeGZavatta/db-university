{/*Es: 1. Contare quanti iscritti ci sono stati ogni anno */}

SELECT  DISTINCT  YEAR(enrolment_date ) , COUNT(*)
FROM students 
GROUP BY YEAR(enrolment_date )
ORDER  BY  YEAR(enrolment_date )
;

{/*Es: */}

{/*Es: */}

{/*Es: */}