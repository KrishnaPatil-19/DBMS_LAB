SELECT * FROM exp5;

ALTER TABLE exp5 ADD COLUMN Gender VARCHAR(255);

UPDATE exp5 SET Gender='F' WHERE Emp_ID=1;

UPDATE exp5 SET Gender='M' WHERE Emp_ID=2;

UPDATE exp5 SET Gender='M' WHERE Emp_ID=3;

UPDATE exp5 SET Gender='M' WHERE Emp_ID=4;

UPDATE exp5 SET Gender='F' WHERE Emp_ID=5;

UPDATE exp5 SET Gender='F' WHERE Emp_ID=6;

SELECT * FROM exp5;

ALTER TABLE exp5 DROP COLUMN Gender;

SELECT * FROM exp5;

ALTER TABLE exp5 RENAME COLUMN Emp_Designation TO Emp_Jobs;

SELECT * FROM exp5;

ALTER TABLE exp5 MODIFY COLUMN Emp_ID FLOAT;

SELECT * FROM exp5;