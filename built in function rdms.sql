/*
Author:ALLEN K PHILIP
Description: To Implement built in function in RDBMS using Temp TABLES.
*/

CREATE TABLE angle ( 
ANGLE NUMBER(10,2), 
SIN NUMBER(10,2), 
COS NUMBER(10,2), 
TAN NUMBER(10,2), 
COT NUMBER(10,2), 
SEC NUMBER(10,2) 
); 
SELECT * FROM angle; 
INSERT INTO ANGLE(ANGLE) VALUES(0); 
INSERT INTO ANGLE(ANGLE) VALUES(30); 
INSERT INTO ANGLE(ANGLE) VALUES(45); 
INSERT INTO ANGLE(ANGLE) VALUES(60); 
INSERT INTO ANGLE(ANGLE) VALUES(90); 
UPDATE angle SET sin=sin(angle*(3.14/180)); 
UPDATE angle SET cos=cos(angle*(3.14/180)); 
UPDATE angle SET sec=1/(cos(angle*(3.14/180))); 
UPDATE angle SET tan=(sin(angle*(3.14/180)))/(cos(angle*(3.14/180))) where cos!=0; 
UPDATE angle SET cot=1/(tan(angle*(3.14/180))) where sin!=0;
