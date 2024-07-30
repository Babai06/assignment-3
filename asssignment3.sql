create database company;

use company;

create table employees (
 EmployeeID int primary key ,
 FirstName VARCHAR(50) Not Null ,
 LastName VARCHAR(50) Not Null,
 Email VARCHAR(100) Not Null Unique,
 Salary INT Not Null,
 DepartmentID  INT
 
 
);

create table department (
DepartmentID INT Primary Key,
DepartmentName  VARCHAR(50) Not Null
);

create Table projects(

ProjectID INT Primary Key,
ProjectName VARCHAR(100) Not Null,
DepartmentID INT , Foreign Key ( DepartmentID) references department( DepartmentID)
);

insert into department values(1,'Marketing');
insert into department values(2,'sales');
insert into department values(3,'IT');
insert into department values(4,'finance');
insert into department values(5,'hr');


insert into employees values ( 1, 'John', 'Doe', 'john.doe@company.com', 60000,1);
insert into employees values ( 2, 'Jane', 'smith', "jane.smith@company.com",  75000,2);
insert into employees values ( 3, 'Michael', 'johnson', 'michael.johnson@company.com', 85000,1);
insert into employees values ( 4, 'Emily', 'William', 'emily.williams@company.com',  72000,3);
insert into employees values ( 5, 'David', 'Brown', 'david.brown@company.com', 65000,2);
insert into employees values ( 6, 'Sarah', 'David',  'sarah.davis@company.com', 90000,3);



insert into projects values(1, "Project A", 1);
insert into projects values(2, "Project B", 2);
insert into projects values(3, "Project C", 3);
insert into projects values(4, "Project D", 4);
insert into projects values(5, "Project E", 5);

alter table employees add constraint check_salary check (Salary > 0);
alter table employees add Foreign Key ( DepartmentID) references department( DepartmentID);

insert into employees values (7, "dip","samanta","dipankar@gmail.com",45000,6);
insert into employees values (8, "Asit", "Samanta","sarah.davis@company.com",30000,2);

delete from department where DepartmentID = "1";

update employees set DepartmentID = "12" where DepartmentID = "1";





