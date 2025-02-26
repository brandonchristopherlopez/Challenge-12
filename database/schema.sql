DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE role (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) UNIQUE NOT NULL,
  salary DECIMAL UNSIGNED NOT NULL,
  department_id INT UNSIGNED NOT NULL,
  INDEX dep_ind (department_id),
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT UNSIGNED NOT NULL,
  INDEX role_ind (role_id),
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
  manager_id INT UNSIGNED,
  INDEX man_ind (manager_id),
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);




-- Remove existing database
DROP DATABASE IF EXISTS staff_management;

-- Create a new database
CREATE DATABASE staff_management;

-- Select the newly created database for use
USE staff_management;

-- Create 'departments' table with unique identifier and constraints
CREATE TABLE departments (
    dept_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(30) UNIQUE NOT NULL
);

-- Create 'positions' table with unique identifier, salary, and references to departments
CREATE TABLE positions (
    pos_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    pos_title VARCHAR(30) UNIQUE NOT NULL,
    pos_salary DECIMAL(10,2) UNSIGNED NOT NULL,
    dept_id INT UNSIGNED NOT NULL,
    INDEX dept_index (dept_id),
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE
);

-- Create 'personnel' table with employee details and references to positions and managers
CREATE TABLE personnel (
    emp_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    pos_id INT UNSIGNED NOT NULL,
    INDEX pos_index (pos_id),
    CONSTRAINT fk_pos FOREIGN KEY (pos_id) REFERENCES positions(pos_id) ON DELETE CASCADE,
    manager_id INT UNSIGNED,
    INDEX mgr_index (manager_id),
    CONSTRAINT fk_mgr FOREIGN KEY (manager_id) REFERENCES personnel(emp_id) ON DELETE SET NULL
);
