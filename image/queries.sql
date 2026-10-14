{/*Es1: Selezionare tutti gli studenti nati nel 1990 (160)*/}

SELECT *
FROM students 
WHERE YEAR(date_of_birth )=1990
;

{/*Es2: Selezionare tutti i corsi che valgono più di 10 crediti (479)*/}

SELECT *
FROM courses 
WHERE cfu > '10'
;

{/*Es3: Selezionare tutti gli studenti che hanno più di 30 anni*/}

SELECT *
FROM students 
WHERE YEAR(date_of_birth) < YEAR(CURDATE()) - 30
   OR (
       YEAR(date_of_birth) = YEAR(CURDATE()) - 30 
       AND (
           MONTH(date_of_birth) < MONTH(CURDATE())
           OR (
               MONTH(date_of_birth) = MONTH(CURDATE())
               AND DAY(date_of_birth) <= DAY(CURDATE())
           )
       )
   )
ORDER BY date_of_birth DESC
   ;

{/*Es4:*/}

{/*Es5:*/}

{/*Es6:*/}

{/*Es7:*/}

{/*Es8:*/}