CREATE TABLE emp(
    EmpNo INT PRIMARY KEY,
    EName VARCHAR(20) NOT NULL,
    Salary INT CHECK(Salary > 0),
    Loc VARCHAR(20) DEFAULT 'Mumbai',
    DeptNo INT REFERENCES Dept(DeptNo)
);

INSERT INTO emp (EmpNo, EName, Salary, Loc, DeptNo)
    VALUES (512, 'Krishna', 80000, 'Jalgaon', 22),
    (412, 'Bhuvan', 70000, 'Jalgaon', 33);

-- NOT NULL error
/*INSERT INTO emp (EmpNo, EName, Salary, Loc, DeptNo) VALUES (512, NULL, 0, 'Mumbai', 11);*/

-- PRIMARY KEY error

/*INSERT INTO emp (EmpNo, EName, Salary, Loc, DeptNo) VALUES (512, 'Tushar', 68000, 'Mumbai', 11);*/

-- CHECK error
/*INSERT INTO emp (EmpNo, EName, Salary, Loc, DeptNo) VALUES (522, 'Tushar', 0, 'Mumbai', 11);*/

--SUCCESSFUL INSERTION
INSERT INTO emp (EmpNo, EName, Salary, Loc, DeptNo)
    VALUES (522, 'Tushar', 6800, 'Mumbai', 11);

-- DEFAULT constraint
INSERT INTO emp (EmpNo, EName, Salary, DeptNo)
    VALUES (1, 'John', 50000, 22);

SELECT * FROM dept;

/*FOREIGN KEY error _ Trying to insert DeptNo in Foreign Key column of “emp” table which is not referenced in the Primary Key column of “dept” table generates following error*/
INSERT INTO emp
    VALUES (420, 'Nishant', 69990, 'Jalgaon', 11);