SHOWTABLES:

CREATE TABLE course_list(
course_id int not null AUTO AUTO_INCREMENT
course_title VARCHAR(50) NOT NULL,
course_author VARCHAR(50) NOT NULL,
course_date DATE,
PRIMARY KEY (course_id)
);


-- drop table

DROP TABLE course_list
INSERT INTO course_list(course_title,course_date,course_author) VALUES ("JAVA","YOGESH",NOW())

-- INSERT MULTIPLE RECORD INTO TABLE

INSERT INTO course_list(course_title,course_author,course_date)
VALUES

("MYSQL","YOGESH" NOW())
("ANGULAR","YOGESH" NOW())
("API","YOGESH" NOW())


INSERT INTO employee_id(employee-name,employee_mail,employee_date)
VALUES

("Yogesh", NOW())
("Mohit" ,NOW())
("Soni", NOW())

select * from course_list;
select course_title from course_list;

--update record in table

-- delete query

update course_list SET course_title="Api Testing" where course_id=4;

-- delete query

DELETE FROM  course_list where course_id=4;

-- rename table
RENAME TABLE old_table_name TO new_table_name;

RENAME TABLE course_list  TO tech_stack;
--alter tables
--drop columns
--addcolumns

--ALTER TABLE new_table_name
--ADD

ALTER TABLE course_list
ADDcourse_score VARCHAR(100) NOT NULL;

ALTER TABLE course_list
ADD course_score VARCHAR(100) NOT NULL,
ADD course_score_two VARCHAR(100) NOT NULL,

--describe table

describe table_name;

--MODIFY column type

ALTER TABLE course_list
     MODIFY course_score_two VARCHAR(100) NOT NULL,
     MODIFY course_title VARCHAR(100) NOT NULL,

--Modify column name

ALTER TABLE course_list
    CHANGE COLUMN course_score_two course_status INT NOT NULL;

--rename column name
ALTER TABLE course_list
    CHANGE COLUMN old_column_name new_column_name INT NOT NULL;

ALTER TABLE course_list
    CHANGE COLUMN course_score_two course_status INT NOT NULL;

-- delete colomn

ALTER TABLE course_list
    DROP COLUMN column_name

-- relationship 
----- FOREIGN KEY Relationship

CREATE TABLE Order(
    OrderID INT NOT NULL,
    orderNumber INT NOT NULL,
    PersonID int,
    PRIMARY KEY(OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY(PersonID) REFERENCES Person(PersonID)
);

--ALTER FOREIGN KEY

ALTER TABLE Order
 ADD CONSTRAINT FK_PersonOrder FOREIGN KEY(PersonID) REFERENCES Person(PersonID)

 --Drop Foreign Key
 
ALTER TABLE Order DROP CONSTRAINT FK_PersonOrder;

---import existing database
--inside mysql terminal
 source path/MYSQL-MASTER
 source D:\MySQL-master

 Query data 
     select
     sort
     filter
     Joining
     group
     subqueries
     set
     modify


--select filed_name FROM 

SELECT lastName FROM employees;
SELECT first, lastName,lastName,jobtitle



SELECT * FROM employee





SELECT CONCAT("BVS", ' ', "RAO") AS fullname;

--sort queries

select
  filled_names
FROM
  table_name
ORDER BY
     coloumn1 [asc|desc],
     coloumn2 [asc|desc],
     .....;

     ---user customer table to practise sort
     ---order by lastname

SELECT
   contactLastName,
   contactFirstName
FROM
   customer
ORDER BY
   contactLastName DESC;           
   contactFirstName ASC; 

--- orderdetails table

SELECT
   orderNumber,
   orderLineNumber,
   quantityOrdered*priceEach
FROM
   orderDetails
ORDER BY
   quantifyOrderd*priceEach

SELECT
   orderNumber,
   orderLineNumber,
   quantityOrdered*priceEach AS subtotal
FROM
   orderDetails
ORDER BY
   subtotal DESC;

-- status
--    IN Progress
--    on Hold
--    Cancelled
--    Resolved
--    Disputed
--    Shipped

SELECT 
    orderNumber,status
FROM
  order
ORDER BY FIELD(status,
    "In progress"
    "On Hold"
    "Cancelled"
    "Resolved"
    "Disputed"
    "Shipped");

SELECT
    firstName,
    lastName,
    reportsTo
from
    employee
ORDER BY 
  reportsTo DESC              


SELECT
    firstName,
    lastName,
    jobTitle,
    officeCode
FROM 
    employees
where
jobTitle="Sales Rep";


SELECT
    firstName,
    lastName,
    jobTitle,
    officeCode
FROM 
    employee
where
   jobTitle="Sales Rep" AND
    officeCode=1;
   
ORDER BY
   officeCode,
   jobTitle    
---

SELECT
    firstName,
    lastName,
    jobTitle,
    officeCode
FROM 
    employee
where
   jobTitle="Sales Rep" OR
    officeCode=1;
ORDER BY
   officeCode,
   jobTitle    

SELECT
    firstName,
    lastName,
    jobTitle,
    officeCode
FROM 
    employee
where
   jobTitle="Sales Rep" OR
    officeCode=1;
ORDER BY
   officeCode,
   jobTitle

   -----    
SELECT
    firstName,
    lastName,
    jobTitle,
    officeCode
FROM 
    employee
where
   officeCode BETWEEN 1 AND 3
ORDER BY
   officeCode;



   -----

   ----like clause


SELECT
   firstName,
   lastName
FROM 
    employee
WHERE
    lastName LIKE '%son'    
ORDER BY firstName;

"Tho%"
'%son'
'%att%'
"_r%"
"a_%"
"a_%"
't%n'


---in operator  

SELECT
    firstName,
    lastName,
    jobTitle,
    officeCode
FROM 
    employee
where
   officeCode IN (1,2,3)
ORDER BY
  officeCode;   



SELECT 
  customerNumber,
  customerName
FROM
  customers
ORDER BY
   customerName
LIMIT 10; 


SELECT 
  customerNumber
FROM
  customers
ORDER BY
   customerName
LIMIT 10;              
    

-------------------------------------



SELECT 
    m.member_id, 
    m.name AS member, 
    c.committee_id, 
    c.name AS committee
FROM
    members m
INNER JOIN committees c ON c.name = m.name;



----------------------------------------------------------------------------------------------------------------



SELECT 
     CONCAT(m.lastName, ',', m.firstName)as Manager,
     CONCAT(e.lastName, ',', e.firstName)as 'Directreport'
FROM                                         ---- we use ' '  if we use space between letter
    employees e     
INNER JOIN employees m ON
   m.employeeNumber=e.reportsTo
ORDER BY
    Manager;       



------------------------------------------------------------------------------------------------------------



SELECT 
     CONCAT(m.lastName, ',', m.firstName)as Manager,
     CONCAT(e.lastName, ',', e.firstName)as 'Direct report'
FROM
    employees e     
INNER JOIN employees m ON
   m.employeeNumber=e.reportsTo
ORDER BY
    'Direct report';       



---------------------------------------------------------------------------------------------------------------------    



USE `bug`;
CREATE TABLE `project`(
`projectNumber` int(11) NOT NULL,
  `projectName` varchar(50) NOT NULL,
  `projectLastName` varchar(50) NOT NULL,
  `projectFirstName` varchar(50) NOT NULL,
  PRIMARY KEY (`projectNumber`),
)
CREATE TABLE `user`(
`userNumber` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userLastName` varchar(50) NOT NULL,
  `userFirstName` varchar(50) NOT NULL,
  PRIMARY KEY (`userNumber`),
)





CREATE TABLE `media`(
`mediaNumber` int(11) NOT NULL,
  `mediaName` varchar(50) NOT NULL,
  `mediaLastName` varchar(50) NOT NULL,
  `mediaFirstName` varchar(50) NOT NULL,
  PRIMARY KEY (`mediaNumber`),
)

insert  into `project`(`projectNumber`,`projectName`,`projectLastName`,`projectFirstName`)values
(103,'Atelier graphique','Schmitt','Carine '),
(106,',hnrelier nnrjekphique',',kchmitt','sasrine '),
(108,'Atergtier xezsxaphique','dfchmitt','mlkrine '),
(102,'hyhoyelier mkmaphique','wshmitt','erarine '),
(105,'svghcvelier eweraphique','mknhmitt','bvxrine ');

insert  into `user`(`userNumber`,`userName`,`userLastName`,`userFirstName`)values
(103,'Atelier graphique','Schmitt','Carine '),
(106,',hnrelier nnrjekphique',',kchmitt','sasrine '),
(108,'Atergtier xezsxaphique','dfchmitt','mlkrine '),
(102,'hyhoyelier mkmaphique','wshmitt','erarine '),
(105,'svghcvelier eweraphique','mknhmitt','bvxrine ');





CREATE VIEW yogesh AS
SELECT LastName,FirstName FROM employee WHERE employeeNumber>1100;
















