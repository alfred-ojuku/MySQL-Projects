DROP DATABASE IF EXISTS roam;

CREATE DATABASE roam;

USE roam;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
employee_id  INT  PRIMARY KEY  auto_increment,
first_name   VARCHAR(100) NOT NULL,
last_name    VARCHAR(100) NOT NULL,
department   VARCHAR(100) NOT NULL,
job_title    VARCHAR(100) NOT NULL,
salary       DECIMAL(15, 2)  NOT NULL
);

insert into employees(first_name, last_name, department, job_title, salary)
values ('Jean',' Unger', 'Accounting', 'Bookkeeper', 81200);

insert into employees(first_name, last_name, department, job_title, salary)
values ('Brock', 'Warren', 'Accounting', 'CFO', 246000);

insert into employees(first_name, last_name, department, job_title, salary)
values ('Ruth', 'Zito', 'Marketing', 'Creative Director', 178000);

insert into employees(first_name, last_name, department, job_title, salary)
values ('Ann', 'Ellis', 'Technology', 'Programmer', 119500);

insert into employees(first_name, last_name, department, job_title, salary)
values ('Todd', 'Lynch', 'Legal', 'Compliance Manager', 157000);

