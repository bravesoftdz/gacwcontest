CREATE TABLE contest
( idContest integer PRIMARY KEY
, name varchar (150)
, dateIni varchar (10)
, timeIni varchar (5)
, dateEnd varchar (10)
, timeEnd varchar (5)  
);

CREATE TABLE stations
(
  idStation integer PRIMARY KEY
, callsign varchar (20)
, cAssisted varchar (15)
, cBand varchar (10)
, cMode varchar (10)
, cOper varchar (10)
, cPower varchar (5)
, cStation varchar (15)
, cTime varchar (10)
, cOverlay varchar(15)
, claimedScore integer
, club varchar (200)
, contest varchar (20)
, createdBy varchar (200)
, email varchar (200)
, location varchar (50)
, name varchar (200)
, address varchar (200)
, acity varchar (200)
, aStateProv varchar (200)
, aPostalCode varchar (50)
, aCountry varchar (200)
, Operators varchar(200)
, offtime varchar (35)
, soapbox text
);

CREATE TABLE qsos
( idQSO integer PRIMARY KEY
, refStation integer default 0
, freq varchar (10)
, qmode varchar (5)
, qdate varchar (10)
, qtime varchar (5)
, rsts integer default 0
, exchs integer default 0
, qcall varchar (20)
, rstr integer default 0
, exchr integer default 0
, confirmed integer default 0 -- Exists qCall log loaded
, points integer default 0 -- Points for this qso
, refItuCallSign default 0 -- Country, Continent & Zone reference
);

CREATE TABLE multipliers
( idMultiplier integer PRIMARY KEY
, refStation integer default 0
, mType integer default 0 -- 0 Zone, 1 ItuCallSign
, refCall integer default 0 -- refZone or refItuCallSign, depending on mType
);

CREATE TABLE tugCategories 
( idCategory integer PRIMARY KEY
, category varchar(100)
);

CREATE TABLE tugItuCallSigns
( idItuCallSign integer PRIMARY KEY
, allocatedTo varchar (200)
, serie varchar (7)
, refContinent integer default 0
, refZone integer default 0
);

CREATE TABLE tugContinents 
( idContinent integer PRIMARY KEY
, continent varchar (200)
);

CREATE TABLE tugZones
( idZone integer PRIMARY KEY
, zone varchar (200)
);
