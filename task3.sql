CREATE DATABASE IF NOT EXISTS empdb;
use empdb;

CREATE TABLE merits(
     performance INT(11) NOT NULL PRIMARY KEY,
     percentage FLOAT NOT NULL  );

CREATE TABLE employees(
    emp_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(255) NOT NULL,
    performance INT(11) DEFAULT NULL,
    salary FLOAT DEFAULT NULL,
    FOREIGN KEY(performance) REFERENCES merits(performance)
    );

INSERT INTO merits(performance,percentage) 
VALUES(1,0),(2,0.01)(3,0.03),(4,0.05),(5,0.08);

INSERT INTO employees(emp_name,performance,salary)
VALUES ('Tinku BHati',1,120220),
    ('Roop BHati',3,90220),
    ('Rohan Bisht'2,56764),
    ('Suraj',4,63544),
    ('Yogesh',4,456752);

 UPDATE employees INNER JOIN merits ON employees.performance = merits.performance
 SET salary = salary + salary*percentage;


