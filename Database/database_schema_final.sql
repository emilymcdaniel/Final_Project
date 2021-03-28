-- Create tables

CREATE TABLE economics (
	"Date" INT,
	inflation REAL,
	SPyield REAL,
	unemployment REAL,
	UMCSENT4 REAL,
	homeindex REAL,
	PRIMARY KEY ("Date")
	
);

CREATE TABLE media_info (
	"date" INT,
	"Action" REAL,
	Adventure REAL,
	Comedy REAL, 
	Drama REAL, 
	Horror REAL,
	ThrillerSuspense REAL,
	FOREIGN KEY ("date") REFERENCES economics("Date")
	
);

-- Query database to check successful upload
SELECT * FROM media_info;
SELECT * FROM economics;



-- Joining economics & media table

SELECT e.date,
e.inflation,
e.spyield,
e.unemployment,
e.umcsent4,
e.homeindex,
me.action,
me.Adventure,
me.Comedy,
me.Drama,
me.Horror,
me.ThrillerSuspense
INTO medianeconomics
FROM economics AS e
INNER JOIN media_info AS me
ON (e.Date = m.date);