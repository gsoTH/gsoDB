-- GROUP BY
SELECT klasse
	,	COUNT(lehrkraft) AS 'Anzahl lehrkräfte' 
FROM unterricht
;

SELECT 	klasse
	,	COUNT(lehrkraft) AS 'Anzahl' 
FROM 	unterricht
GROUP BY klasse
;

SELECT 	klasse
	,	COUNT(lehrkraft) AS 'Anzahl' 
FROM 	unterricht
WHERE	fach != 'mfg'
GROUP BY klasse
;

SELECT 	klasse
	,	COUNT(lehrkraft) AS 'Anzahl' 
FROM 	unterricht
WHERE	fach != 'mfg'
GROUP BY klasse
HAVING 	 ANZAHL > 3
;





