DROP DATABASE IF EXISTS f1_db;
create database f1_db;
use f1_db;

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
    salary DECIMAL(8,1),
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES Department(id)
);

-- Table for employees
create table employee
(
    id int auto_increment primary key,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY (manager_id)
    REFERENCES employee(id),
    FOREIGN KEY (role_id)
    REFERENCES roles(id)
);