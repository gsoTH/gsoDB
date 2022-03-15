DROP TABLE IF EXISTS unterricht;
DROP TABLE IF EXISTS klasse;
DROP TABLE IF EXISTS lehrkraft;

CREATE TABLE lehrkraft(
	kuerzel TEXT
,	name	TEXT
,	PRIMARY KEY (kuerzel)
);

CREATE TABLE klasse(
	kuerzel TEXT
,	leitung	TEXT
,	PRIMARY KEY (kuerzel)
,	FOREIGN KEY (leitung) REFERENCES lehrkraft(kuerzel)
);

CREATE TABLE unterricht(
	id	INTEGER
,	klasse	TEXT
,	lehrkraft TEXT
,	fach	TEXT
,	PRIMARY KEY (id)
,	FOREIGN KEY (klasse) REFERENCES klasse(kuerzel)
,	FOREIGN KEY (lehrkraft)	REFERENCES lehrkraft(kuerzel)
);

INSERT INTO lehrkraft VALUES
	( 'CK', 'Cieplik')	
,	( 'DS', 'Dohms')	
,	( 'KH', 'Körperich')	
,	( 'KM', 'Kramer')	
,	( 'MS', 'Maus')	
,	( 'SI', 'Siepe')	
,	( 'SP', 'Sommerkamp')	
,	( 'TH', 'Thomas')	
,	( 'WZ', 'Wirtz')
;

INSERT INTO klasse VALUES
	( 'FI002', 'KH')
,	( 'FI007', 'TH')
,	( 'FI014', 'MS')
;

INSERT INTO unterricht VALUES
	( '1', 'FI002', 'TH', 'SuD')
,	( '2', 'FI002', 'WZ', 'GID')
,	( '3', 'FI002', 'DS', 'EvP')
,	( '4', 'FI002', 'KH', 'CPS')
,	( '5', 'FI007', 'TH', 'SuD')
,	( '6', 'FI007', 'SI', 'GID')
,	( '7', 'FI007', 'KH', 'CPS')
,	( '8', 'FI007', 'SP', 'EvP')
,	( '9', 'FI014', 'WZ', 'GID')
,	( '10', 'FI014', 'DS', 'EvP')
,	( '11', 'FI014', 'CK', 'CPS')
,	( '12', 'FI014', 'TH', 'mfg')
;	
