CREATE DATABASE `bug`;

USE `bug`;

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project`(
  `projectNumber` int(11) NOT NULL,
  `projectName` varchar(50) NOT NULL,
  `projectLastName` varchar(50) NOT NULL,
  `projectFirstName` varchar(50) NOT NULL,
  PRIMARY KEY (`projectNumber`) -- FOREIGN KEY (`projectFirstName`) REFERENCES `user` (`userNumber`)
);

insert into
  `project`(
    `projectNumber`,
    `projectName`,
    `projectLastName`,
    `projectFirstName`
  )
values
  (103, 'bbelier graphique', 'Schmitt', 'Carine '),
  (
    104,
    ',mkmrelier nnrjekphique',
    ',kchmitt',
    'sasrine '
  ),
  (
    108,
    'Atergtier xezsxaphique',
    'dfchmitt',
    'mlkrine '
  ),
  (
    102,
    'bfeuvoyelier mkmaphique',
    'wshmitt',
    'erarine '
  ),
  (
    189,
    'wssxhcvelier eweraphique',
    'mknhmitt',
    'bvxrine '
  );

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user`(
  `userNumber` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userLastName` varchar(50) NOT NULL,
  `userFirstName` varchar(50) NOT NULL,
  PRIMARY KEY (`userNumber`) -- FOREIGN KEY (`userFirstName`) REFERENCES `user` (`userNumber`)
);

insert into
  `user`(
    `userNumber`,
    `userName`,
    `userLastName`,
    `userFirstName`
  )
values
  (202, 'yogesh', 'Schmitt', 'Carine '),
  (206, ',suraj', ',kchmitt', 'sasrine '),
  (208, 'ravi', 'dfchmitt', 'mlkrine '),
  (202, 'rohan', 'wshmitt', 'erarine '),
  (205, 'roop', 'mknhmitt', 'bvxrine '),
  (209, 'tinku', 'mknhmitt', 'bvxrine ');

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media`(
  `mediaNumber` int(11) NOT NULL,
  `mediaName` varchar(50) NOT NULL,
  `mediaLastName` varchar(50) NOT NULL,
  `mediaFirstName` varchar(50) NOT NULL,
  PRIMARY KEY (`mediaNumber`) -- FOREIGN KEY (`mediaNumber`) REFERENCES `media` (`userNumber`)
);

insert into
  `media`(
    `mediaNumber`,
    `mediaName`,
    `mediaLastName`,
    `mediaFirstName`
  )
values
  (303, 'Atelier graphique', 'Schmitt', 'Carine '),
  (
    306,
    ',hnrelier nnrjekphique',
    ',kchmitt',
    'sasrine '
  ),
  (
    308,
    'Atergtier xezsxaphique',
    'dfchmitt',
    'mlkrine '
  ),
  (
    302,
    'hyhoyelier mkmaphique',
    'wshmitt',
    'erarine '
  ),
  (
    05,
    'svghcvelier eweraphique',
    'mknhmitt',
    'bvxrine '
  );

CREATE DATABASE IF NOT EXISTS empdb;

use empdb;

CREATE TABLE merits(
  performance INT(11) NOT NULL PRIMARY KEY,
  percentage FLOAT NOT NULL
);

CREATE TABLE employees(
  emp_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  emp_name VARCHAR(255) NOT NULL,
  performance INT(11) DEFAULT NULL,
  salary FLOAT DEFAULT NULL,
  FOREIGN KEY(performance) REFERENCES merits(performance)
);

INSERT INTO
  merits(performance, percentage)
VALUES
  (1, 0),
  (2, 0.01)(3, 0.03),
  (4, 0.05),
  (5, 0.08);

INSERT INTO
  employees(emp_name, performance, salary)
VALUES
  ('Tinku BHati', 1, 120220),
  ('Roop BHati', 3, 90220),
  ('Rohan Bisht' 2, 56764),
  ('Suraj', 4, 63544),
  ('Yogesh', 4, 456752);

UPDATE
  employees
  INNER JOIN merits ON employees.performance = merits.performance
SET
  salary = salary + salary * percentage;

INSERT INTO
  employee(emp_name, performance, salary)
VALUES
  ('jack william', NULL, 636463),
  ('racl', NULL, 3466);

UPDATE
  employee
  LEFT JOIN merits ON employees.performance = merits.performance
SET
  salary = salary * salary DROP TABLE IF EXIST t1,
  t2;

CREATE TABLE t1(id INT PRIMARY KEY AUTO_INCREMENT);

CREATE TABLE t2(
  id VARCHAR(20) PRIMARY KEY,
  ref INT NOT NULL
);

INSERT INTO
  t1
VALUES
  (1),
  (2),
  (3);

INSERT INTO
  t2(id, ref)
VALUES
  ('A', 1),
  ('B', 2),
  ('C', 3);

SELECT
  *
FROM
  t1;

SELECT
  *
FROM
  t2;

DELETE t1,
t2
FROM
  t1
  INNER JOIN t2 ON t2.ref = t1.id
WHERE
  t1.id = 1;

SELECT
  *
FROM
  t1;

SELECT
  *
FROM
  t2;

-------------------
CREATE TABLE t(
  c1 INT PRIMARY KEY,
  c2 INT NOT NULL,
  c3 INT NOT NULL,
  c4 VARCHAR(10),
  INDEX (c2, c3)
);

CREATE INDEX index_name ON table_name (column_list) CREATE INDEX idx_c4 ON t(c4);

-----------------------------------------------------------------------------------
EXPLAIN
SELECT
  employeeNumber,
  lastName,
  firstName
FROM
  employees
WHERE
  jobTitle = 'Sales Rep';

----------------------------------------------------------------------
CREATE INDEX jobTitle On employee(jobTitle);

EXPLAIN
SELECT
  employeeNumber,
  lastName,
  firstName
FROM
  employees
WHERE
  jobTitle = 'Sales Rep';

SHOW INDEXES
FROM
  employee;

-----------------------------------------------------------
DROP INDEX index_name ON table_name;

CREATE TABLE leads(
  lead_id INT AUTO_INCREMENT,
  first_name VARCHAR (100) NOT NULL,
  last_name VARCHAR (100) NOT NULL,
  email VARCHAR (255) NOT NULL,
  information_source VARCHAR(255),
  INDEX name(first_name, last_name),
  UNIQUE email(email),
  PRIMARY KEY(lead_id)
);

DROP INDEX name ON leads;

SHOW INDEXES
FROM
  table_name;

--------------------------------------------------------------
CREATE UNIQUE INDEX index_name ON table_name(index_column_1, index_column_2,....);

CREATE TABLE table_name(
  UNIQUE KEY(index_column_, index_column_2,...)
);

ALTER TABLE
  table_name
ADD
  CONSTRAINT constarint_name UNIQUE KEY(coloumn_1, column_2);

-----------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS contacts(
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  UNIQUE KEY unique_email (email)
)
INSERT INTO
  contact(first_name, last_name, phone, email)
VALUES
  ("john", "doe", "87683649695", "yog@gmail.com")
INSERT INTO
  contact(first_name, last_name, phone, email)
VALUES
  ("john", "doe", "87683649695", "yog@gmail.com")
SELECT
  firstName,
  lastName,
  email
FROM
  employees
WHERE
  lastName = "Patterson";

EXPLAIN
SELECT
  firstName,
  lastName,
  email
FROM
  employees
WHERE
  lastName = "pahchehc";

-------------------------------------------------
SELECT
  firstName,
  lastName,
  email
FROM
  employees
WHERE
  lastName = "Patterson"
  AND firstName = "Steve";

---------------------------------------------
EXPLAIN
SELECT
  firstName,
  lastName,
  email
FROM
  employees
WHERE
  lastName = "Patterson"
  AND firstName = "Steve";

------------------------------------------
------CREATE procedures;
DELIMITER $ $ CREATE PROCEDURE GetCustomers() BEGIN
SELECT
  customerName,
  city,
  state,
  postalCode,
  country
FROM
  customers
ORDER BY
  customerName;

END $ $ DELIMITER;

CALL GetCustomers();

---------------------------------------------------------------------
DELIMITER $ $ CREATE PROCEDURE GetEmployees() BEGIN
SELECT
  firstName,
  lastName,
  city,
  state,
  country
FROM
  employees
INNER JOIN offices (officecode);

END $ $ DELIMITER;

DROP PROCEDURE GetEmployees;

-----------------------------------------------------------------------------

 
DELIMITER//

CREATE PROCEDURE GetOfficeByCountry(
  IN countryName VARCHAR(255)
)
BEGIN
   SELECT *
   FROM offices
   WHERE country = countryName;
   END //
   DELIMITER;

   CALL GetOfficeByCountry('USA');

   ------------------------------------------------------


    
DELIMITER $$

CREATE PROCEDURE GetOrderCountByStatus(
  IN orderStatus VARCHAR(25),
  OUT total INT
)
BEGIN
   SELECT COUNT(orderNumber)
   INTO total
   FROM orders
   WHERE status = orderStatus;
   END$$
   DELIMITER;

   CALL GetOrderCountByStatus('Shipped',@total);
   SELECT @total;

