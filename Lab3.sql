USE rmartinez4_workspace;
CREATE TABLE TRICK (
    TrickID    CHAR(4) NOT NULL,
    TrickDescr VARCHAR(25) NOT NULL,
    CONSTRAINT PRIMARY KEY (TrickID)
);
Show Tables;


CREATE TABLE KENNEL (
    KennelCode CHAR(5) NOT NULL,
    KennelName VARCHAR(25) NOT NULL,
    Location   VARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY (KennelCode) 
);
CREATE TABLE PUPPY (
    PuppyNum   CHAR(6) NOT NULL,
    PuppyName  VARCHAR(25) NOT NULL,
    Quality    CHAR(4),
    Breed      VARCHAR(40),
    KennelCode CHAR(5) NOT NULL,
    CONSTRAINT PRIMARY KEY (PuppyNum),
    CONSTRAINT FOREIGN KEY (KennelCode) REFERENCES KENNEL(KennelCode) 
);
CREATE TABLE PUPTRICK (
    PuppyNum    CHAR(6) NOT NULL,
    TrickID     CHAR(4) NOT NULL,
    WhenLearned DATE,
    CONSTRAINT PRIMARY KEY (PuppyNum, TrickID),
    CONSTRAINT FOREIGN KEY (PuppyNum) REFERENCES PUPPY (PuppyNum),
    CONSTRAINT FOREIGN KEY (TrickID) REFERENCES TRICK (TrickID)
);
CREATE TABLE SHOWDOG (
    PuppyNum    CHAR(6) NOT NULL,
    DateLast    DATE,
    FinishPlace CHAR(3),
    CONSTRAINT PRIMARY KEY (PuppyNum),
    CONSTRAINT FOREIGN KEY (PuppyNum)
        REFERENCES PUPPY (PuppyNum) ON DELETE CASCADE
);

INSERT INTO KENNEL 
VALUES ('C237', 'Cibola Corgis', 'Wilcox, AZ');

SELECT * FROM KENNEL;

INSERT INTO TRICK 
VALUES ('8', 'Lie Down');

INSERT INTO PUPPY 
VALUES ('ER654', 
        'Cibola Sweet Jasmine', 
        'Show', 
        'Pembroke Welsh Corgi', 
        'C237');

INSERT INTO PUPTRICK 
VALUES ('ER654','8','2018-10-12');

INSERT INTO PUPTRICK 
VALUES ('ER654','4','2018-10-20');

INSERT INTO TRICK 
VALUES ('4', 'Sit');
INSERT INTO KENNEL VALUES ('Q123', 'Poodles by Quincy', 'Phoenix, AZ');
INSERT INTO KENNEL VALUES ('C123', 'Caja''s Bostons', 'Indianapolis, IN');
INSERT INTO KENNEL VALUES ('K472', 'Kimbler''s Collies', 'Louisville, KY');
INSERT INTO KENNEL VALUES ('M728', 'Massey''s Goldens', 'Bloomington, IN');
INSERT INTO KENNEL VALUES ('Z572', 'Carroll''s Breeds', 'Albuquerque, NM');

INSERT INTO TRICK VALUES ('1', 'Sit');
INSERT INTO TRICK VALUES ('2', 'Stay');
INSERT INTO TRICK VALUES ('3', 'Long Stay');
INSERT INTO TRICK VALUES ('4', 'Fetch');
INSERT INTO TRICK VALUES ('5', 'Play Dead');
INSERT INTO TRICK VALUES ('6', 'Roll Over');
INSERT INTO TRICK VALUES ('7', 'Give Kisses');
INSERT INTO PUPPY VALUES ('BC987', 'Midnight Mo-Jo', 'Show', 'Boston Terrier', 'C123');
INSERT INTO PUPPY VALUES ('GM726', 'Sweet Lilly of the Lake', 'Pet', 'Golden Retriever', 'M728');
INSERT INTO PUPPY VALUES ('CD321', 'Cibola Otis Lee', 'Show', 'Pembroke Welsh Corgi', 'C237');
INSERT INTO PUPPY VALUES ('GM523', 'Mackers', 'Pet', 'Golden Retriever', 'M728');
INSERT INTO PUPPY VALUES ('CK131', 'Maddy Bear', 'Pet', 'Rough Collie', 'K472');
INSERT INTO PUPPY VALUES ('RZ956', 'Bjorn', 'Pet', 'Rottweiler', 'Z572');


INSERT INTO PUPTRICK VALUES ('ER654', '4', '2018-10-20');
INSERT INTO PUPTRICK VALUES ('BC987', '1', '2018-08-10');
INSERT INTO PUPTRICK VALUES ('GM523', '3', '2018-07-07');
INSERT INTO PUPTRICK VALUES ('CD321', '3', '2018-05-05');
INSERT INTO PUPTRICK VALUES ('CD321', '2', '2018-10-03');
INSERT INTO SHOWDOG VALUES ('ER654', '2018-09-28', '3rd');
INSERT INTO SHOWDOG VALUES ('BC987', '2018-09-28', '1st');

USE Instruction;
SELECT SID, Status
FROM SUPPLIER
WHERE Scity = 'Paris';

SELECT PID, Pname, Weight
FROM PART
WHERE Color = 'blue';

SELECT SID, Status
FROM SUPPLIER
WHERE Scity = 'Paris' AND Status > 20;

SELECT PID, Pname
FROM PART
WHERE Color = 'blue' OR Weight = 12;

SELECT COUNT(PID)
FROM SUP_PART;

SELECT COUNT(DISTINCT PID)
FROM SUP_PART;

SELECT COUNT(DISTINCT Scity)
FROM SUPPLIER;
