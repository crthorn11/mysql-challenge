CREATE DATABASE Employee_Tracker;

DROP DATABASE IF EXISTS Employee_Tracker;

CREATE DATABASE Employee_Tracker;

SHOW DATABASES;

USE Employee_Tracker;

CREATE TABLE employees (
    emp_no       INT             NOT NULL,
    birth_date   DATE            NOT NULL,
    first_name   VARCHAR(14)     NOT NULL,
    last_name    VARCHAR(16)     NOT NULL,
    gender       ENUM ('M', 'F') NOT NULL,
    hire_date    DATE            NOT NULL,
    PRIMARY KEY  (emp_no)
);

CREATE TABLE departments (
    dept_no     CHAR(4)        NOT NULL,
    dept_name   VARCHAR(40)    NOT NULL,
    PRIMARY KEY (dept_no),
    PRIMARY KEY (dept_name)
);

CREATE TABLE department_manager (
    emp_no     INT                  NOT NULL,
    dept_no    CHAR(4)              NOT NULL,
    from_date  DATE                 NOT NULL,
    to_date    DATE                 NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
PRIMARY KEY (emp_no, dept_no)
);