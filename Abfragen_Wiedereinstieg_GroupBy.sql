-- Wie viele Spalten / Zeilen?
SELECT *
FROM unterricht;

-- Wie viele Spalten / Zeilen?
---> (Tipp: MS und KM unterrichten nicht.)
SELECT *, COUNT(lehrkraft)
FROM unterricht;

-- Wie viele Spalten / Zeilen?
---> (Tipp: MS und KM unterrichten nicht.)
SELECT *, COUNT(lehrkraft)
FROM unterricht
GROUP BY lehrkraft;