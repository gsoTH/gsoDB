---- UnterrichtProKlasse.sql
-- Anzahl an Unterricht pro Klasse.
-- Fach 'mfg' soll nicht beachtet werden.
-- Nur Klassen, die weniger als 4 Unterrichte haben.

-- Erwartetes Ergebnis:
-- +--------+--------+
-- | klasse | Anzahl |
-- +--------+--------+
-- | FI014  |      3 |
-- +--------+--------+




SELECT klasse
	,	COUNT(klasse) AS 'Anzahl lehrkräfte' 
FROM unterricht
;

SELECT 	klasse
	,	COUNT(klasse) AS 'Anzahl' 
FROM 	unterricht
GROUP BY klasse
;

SELECT 	klasse
	,	COUNT(klasse) AS 'Anzahl' 
FROM 	unterricht
WHERE	fach != 'mfg'
GROUP BY klasse
;

SELECT 	klasse
	,	COUNT(klasse) AS 'Anzahl' 
FROM 	unterricht
WHERE	fach != 'mfg'
GROUP BY klasse
HAVING 	 ANZAHL < 4
;

--Funktioniert nicht
SELECT 	klasse
	,	COUNT(lehrkraft) AS 'Anzahl' 
FROM 	unterricht
-- WHERE	fach != 'mfg'
GROUP BY klasse
-- HAVING 	 ANZAHL > 3
HAVING 	 fach != 'mfg'
;





