-- Create tables

CREATE TABLE economics (
	eDate INT,
	inflation INT,
	SPyield INT,
	unemployment INT,
	UMCSENT4 INT,
	homeindex INT,
	PRIMARY KEY (eDate)
	
);

CREATE TABLE media_info (
	mDate INT,
	Genre TEXT,
	Gross INT,
	FOREIGN KEY (mDate) REFERENCES economics(eDate)

);

-- Query database to check successful upload
SELECT * FROM media_info;
SELECT * FROM economics;

SELECT e.edate,
e.inflation,
e.spyield,
e.unemployment,
e.umcsent4,
e.homeindex,
me.genre,
me.gross
INTO medianeconomics
FROM economics AS e
INNER JOIN media_info AS me
ON (e.edate = me.mdate);


