-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).
DROP TABLE IF Exists fires;
DROP TABLE IF Exists salehistory;
DROP TABLE IF Exists fire;
DROP TABLE IF Exists county ;
CREATE TABLE County (
    CountyID int   NOT NULL,
    countyName varchar   NOT NULL,
    CONSTRAINT pk_County PRIMARY KEY (
        CountyID
     )
);

CREATE TABLE SaleHistory (
    SaleID int   NOT NULL,
    CountyID int   NOT NULL,
    Date date   NOT NULL,
    MedianPrice int   NOT NULL,
    CONSTRAINT pk_SaleHistory PRIMARY KEY (
        SaleID
     )
);

CREATE TABLE Fire (
    FireID varchar   NOT NULL,
    Name varchar   NOT NULL,
    CONSTRAINT pk_Fire PRIMARY KEY (
        FireID
     )
);

CREATE TABLE Fires (
    FireID varchar   NOT NULL,
    CountyID int   NOT NULL,
    YearStarted int NOT NULL,
    AcresBurned int   NOT NULL,
    StructuresDamaged int NOT NULL,
    StructuresDestroyed int NOT NULL,
    Extinguished date   NOT NULL,
    Latitude int   NOT NULL,
    Longitude int   NOT NULL,
    Started date   NOT NULL
);

ALTER TABLE SaleHistory ADD CONSTRAINT fk_SaleHistory_CountyID FOREIGN KEY(CountyID)
REFERENCES County (CountyID);

ALTER TABLE Fires ADD CONSTRAINT fk_Fires_CountyID FOREIGN KEY(CountyID)
REFERENCES County (CountyID);

ALTER TABLE Fires ADD CONSTRAINT fk_Fire_FireID FOREIGN KEY(FireID)
REFERENCES Fire (FireID);
