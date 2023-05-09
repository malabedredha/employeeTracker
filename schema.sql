DROP DATABASE IF EXISTS test;
create database test;
use test;

-- Table for department
create table department
(
    id int auto_increment primary key,
    name VARCHAR(30)
);


-- Table for roles
create table role
(
    id int auto_increment primary key,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT

);


-- Table for employees
create table employee
(
    id int auto_increment primary key,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT

);

