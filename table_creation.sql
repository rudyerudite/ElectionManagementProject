CREATE TABLE WARDS(WARD_NO VARCHAR(5) PRIMARY KEY, Areacode VARCHAR(5), FOREIGN KEY(Areacode) REFERENCES AREA);

CREATE TABLE CANDIDATE(CID VARCHAR(9) PRIMARY KEY, PARTY_NO VARCHAR(5) NOT NULL UNIQUE, Party_Name VARCHAR(10) NOT NULL);

CREATE TABLE POLLING_BOOTH(PID VARCHAR(9) PRIMARY KEY, Name VARCHAR(9) NOT NULL, WARD_NO VARCHAR(5) NOT NULL, Landmark VARCHAR(10), DOP DATE NOT NULL, Start_time VARCHAR(5), End_Time VARCHAR(5), FOREIGN KEY(WARD_NO) REFERENCES WARDS);

CREATE TABLE OFFICERS(OFID VARCHAR(9) PRIMARY KEY, Designation VARCHAR(15), OF_FNAME VARCHAR(15), OF_LNAME VARCHAR(15), PID VARCHAR(9), FOREIGN KEY(PID) REFERENCES POLLING_BOOTH);

CREATE TABLE AREA(Areacode VARCHAR(5) PRIMARY KEY, City VARCHAR(9) NOT NULL, State VARCHAR(15) NOT NULL);

CREATE TABLE ELECTORS(ELEC_NO VARCHAR(9) PRIMARY KEY, E_FNAME VARCHAR(9) NOT NULL, E_LNAME VARCHAR(9) NOT NULL, GENDER VARCHAR(2), HOUSE_NO VARCHAR(5) NOT NULL, STREET VARCHAR(10), DOB DATE NOT NULL, Areacode VARCHAR(5), CID VARCHAR(9), FOREIGN KEY(Areacode) REFERENCES AREA, FOREIGN KEY(CID) references CANDIDATE);

CREATE TABLE VOTES(ELEC_NO VARCHAR(9), PID VARCHAR(9), POLLED VARCHAR(3), PRIMARY KEY(ELEC_NO, PID), FOREIGN KEY(PID) REFERENCES POLLING_BOOTH, FOREIGN KEY(ELEC_NO) REFERENCES ELECTORS);
