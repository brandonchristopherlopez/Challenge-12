use employees;

INSERT INTO department
    (name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Sales Lead', 100000, 1),
    ('Salesperson', 80000, 1),
    ('Lead Engineer', 150000, 2),
    ('Software Engineer', 120000, 2),
    ('Account Manager', 160000, 3),
    ('Accountant', 125000, 3),
    ('Legal Team Lead', 250000, 4),
    ('Lawyer', 190000, 4);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('John', 'Doe', 1, NULL),
    ('Mike', 'Chan', 2, 1),
    ('Ashley', 'Rodriguez', 3, NULL),
    ('Kevin', 'Tupik', 4, 3),
    ('Kunal', 'Singh', 5, NULL),
    ('Malia', 'Brown', 6, 5),
    ('Sarah', 'Lourd', 7, NULL),
    ('Tom', 'Allen', 8, 7);





USE staff_management;

-- Add entries to the 'departments' table
INSERT INTO departments
    (dept_name)
VALUES
    ('Marketing'),
    ('Tech'),
    ('Accounting'),
    ('Legal Affairs');

-- Add entries to the 'positions' table
INSERT INTO positions
    (pos_title, pos_salary, dept_id)
VALUES
    ('Marketing Manager', 100000, 1),
    ('Marketing Specialist', 80000, 1),
    ('Senior Engineer', 150000, 2),
    ('Software Developer', 120000, 2),
    ('Finance Director', 160000, 3),
    ('Accountant', 125000, 3),
    ('Chief Legal Officer', 250000, 4),
    ('Legal Counsel', 190000, 4);

-- Add entries to the 'personnel' table
INSERT INTO personnel
    (first_name, last_name, pos_id, mgr_id)
VALUES
    ('James', 'Smith', 1, NULL),
    ('Liam', 'Wong', 2, 1),
    ('Sophia', 'Johnson', 3, NULL),
    ('David', 'Brown', 4, 3),
    ('Isabella', 'Lee', 5, NULL),
    ('Mason', 'Garcia', 6, 5),
    ('Ella', 'Harris', 7, NULL),
    ('Daniel', 'Miller', 8, 7);