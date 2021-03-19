-- Create tables

CREATE TABLE economics (
	"Date" INT,
	inflation REAL,
	"SPyield" REAL,
	unemployment REAL,
	"UMCSENT" REAL,
	homeindex REAL,
	PRIMARY KEY ("Date")
	
);

CREATE TABLE media_info (
	"Date" INT,
	"Genre" TEXT,
	"Gross" INT,
	FOREIGN KEY ("Date") REFERENCES economics("Date")

);

-- Query database to check successful upload
SELECT * FROM media_info;
SELECT * FROM economics;


-- Joining economics & media table


SELECT e."Date",
e.inflation,
e."SPyield",
e.unemployment,
e."UMCSENT",
e.homeindex,
me."Genre",
me."Gross"
INTO medianeconomics
FROM economics AS e
INNER JOIN media_info AS me
ON (e."Date" = me."Date");


