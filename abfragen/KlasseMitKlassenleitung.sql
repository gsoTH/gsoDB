---- MehrereTabellen.sql
---- Abfragen über mehrere Tabellen
-- Alle Klassen mit Name der Klassenleitung


-- Alle Zeilen aus allen Tabellen weden verknüpft.
-- Ergibt 27 Zeilen. Das nennt man Kartesisches Produkt.
SELECT	*
FROM	klasse, lehrkraft;

-- Beginnen wir damit, nur die Spalten auszuwählen, die wir brauchen.
-- Wenn die Spalte in beiden Tabellen vorkommt,
-- müssen wir die Tabelle voranstellen. 
-- Sonst kommt es zu einem Fehler --> ambiguous column name
SELECT	*
FROM	klasse, lehrkraft
WHERE leitung = lehrkraft.kuerzel
;

-- Wunderbar. Jetzt nur noch die unnötigen Spalten rauswerfen:
SELECT	klasse.kuerzel, lehrkraft.name
FROM 	klasse, lehrkraft
WHERE leitung = lehrkraft.kuerzel
;

-- Ich nutze häufig diese Formatierung, um die Lesbarkeit zu steigern:
SELECT	klasse.kuerzel
	,	lehrkraft.name
FROM 	klasse
	, 	lehrkraft
WHERE klasse.leitung = lehrkraft.kuerzel
;


-- Für die Tabellenbezeichnung kann man auch Kürzel angeben:
SELECT	k.kuerzel
	,	l.name
FROM 	klasse k
	, 	lehrkraft l
WHERE k.leitung = l.kuerzel
;

-- Als Inner Join:
SELECT 	k.kuerzel
	,	l.name
FROM klasse k INNER JOIN lehrkraft l 
	ON k.leitung = l.kuerzel
;



