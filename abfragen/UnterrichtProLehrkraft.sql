----	UnterrichtProLehrkraft.sql
--
-- Anzahl an Unterricht pro Lehrkraft, 
-- Absteigend sortiert, so dass die größte Zahl oben steht,
-- bei gleicher Anzahl wird alphabetisch sortiert.

-- Mit COUNT kann die Anzahl an Zeilen gezählt werden.
-- Ohne Gruppierung wird nur das erste Ergebnis ausgegeben
SELECT lehrkraft, COUNT(lehrkraft)
FROM unterricht;


-- Mit Gruppierung sieht das Ergebnis schon besser aus:
SELECT lehrkraft, COUNT(lehrkraft)
FROM unterricht
GROUP BY lehrkraft;

-- Jetzt die Sortierung einbauen:
SELECT lehrkraft, COUNT(lehrkraft)
FROM unterricht
GROUP BY lehrkraft
ORDER BY COUNT(lehrkraft) DESC, lehrkraft;


-- identisch, aber leichter lesbar
SELECT lehrkraft, COUNT(lehrkraft) AS 'Anzahl'
FROM unterricht
GROUP BY lehrkraft
ORDER BY Anzahl DESC, lehrkraft;


---- Bedingungen bei solchen Abfragen
-- Nur Lehrkräfte, die mehr als 1 Stunde unterrichten
SELECT lehrkraft, COUNT(lehrkraft) AS 'Anzahl'
FROM unterricht
GROUP BY lehrkraft
HAVING Anzahl > 1 -- Filtert das Ergebnis von GROUP BY
ORDER BY Anzahl DESC, lehrkraft
;

-- Alle außer TH
SELECT lehrkraft, COUNT(lehrkraft) AS 'Anzahl'
FROM unterricht
WHERE lehrkraft NOT IN ('TH') -- Filtert das Ergebnis von SELECT
GROUP BY lehrkraft
HAVING Anzahl > 1
ORDER BY Anzahl DESC, lehrkraft
;



