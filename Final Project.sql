CREATE DATABASE Final_Project
CREATE TABLE GUARDS
(
	guardpic image,
	guardid int PRIMARY KEY NOT NULL,
	guardname varchar(20),
	guardgender varchar(10),
	guardaddress varchar(40),
	guardcity varchar(20),
	guardduty varchar(20),
	guardsalary int,
	guardprisonname varchar(20)
	CONSTRAINT FK_GUARDS FOREIGN KEY (guardprisonname) REFERENCES PRISON(prisonname) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE JAILOR
(
	jailorpic image,
	jailorid int PRIMARY KEY NOT NULL,
	jailorname varchar(20),
	jailorgender varchar(10),
	jailoraddress varchar(40),
	jailorcity varchar(20),
	jailorsalary int,
	jailorprisonname varchar(20)
	CONSTRAINT FK_JALOR FOREIGN KEY (jailorprisonname) REFERENCES PRISON(prisonname) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE PRISONER
(
	prisonerpic image,
	prisonerid int PRIMARY KEY NOT NULL,
	prisonername varchar(20),
	prisonergender varchar(10),
	prisoneraddress varchar(40),
	prisonercity varchar(20),
	prisonercrime varchar(30),
	prisonerarrival varchar(40),
	prisonerpunishment varchar(20),
	prisonerprisonname varchar(20),
	CONSTRAINT FK_PRISONER FOREIGN KEY (prisonerprisonname) REFERENCES PRISON(prisonname) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE CHEIF
(
	cheifpic image,
	cheifid int PRIMARY KEY NOT NULL,
	cheifname varchar(20),
	cheifgender varchar(10),
	cheifaddress varchar(40),
	cheifcity varchar(20),
	cheifsalary int,
	cheifprisonname varchar(20) 
	CONSTRAINT FK_CHEIF FOREIGN KEY (cheifprisonname) REFERENCES PRISON(prisonname) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE VISITOR
(
	visitorpic image,
	visitorname varchar(20),
	visitorgender varchar(10),
	visitoraddress varchar(30),
	visitorcity varchar(20),
	visitorprisonerid int,
	visitorarrivaldate varchar(30)
	CONSTRAINT PK_VISITOR PRIMARY KEY (visitorname,visitorprisonerid)
	CONSTRAINT FK_VISITOR FOREIGN KEY (visitorprisonerid) REFERENCES PRISONER(prisonerid) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE PRISON
(
	prisonname varchar(20) PRIMARY KEY NOT NULL,
	prisonlocation varchar(20)
);
INSERT INTO PRISON(prisonname,prisonlocation)
VALUES('Central Prison','Satyana Road'),
('Prison','Kotwali Road'),
('Juvenile Prison','Susan Road'),
('Psychiatric Prison','Satayana Road')


SELECT * FROM PRISONER
SELECT * FROM PRISON
SELECT * FROM VISITOR
SELECT * FROM CHEIF
SELECT * FROM JAILOR
SELECT * FROM GUARDS
DROP TABLE PRISONER
DROP TABLE PRISON
DROP TABLE VISITOR
DROP TABLE JAILOR
DROP TABLE GUARDS
DROP TABLE CHEIF