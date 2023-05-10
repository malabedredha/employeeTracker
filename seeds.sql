-- Department's data for a Formula 1 racing team
INSERT INTO department (name)
VALUES 
("Racing"),
("Technical Team");

-- Roles data for Formula 1 racing team
INSERT INTO role (title, salary, department_id)
VALUES
("Official Driver", 2000000, 1), 
("Reserve Driver", 5000000, 1), 
("Development Driver", 5000000, 1),
("Racing Director" 7000000, 1), 
("General Manager", 25000000, 2), 
("Chassis Engineer", 106000, 2),
("Power Unit Engineer", 120000, 2),
("Supply Chain & Manufacturing", 96000, 2);

-- Employees data for Formula 1 racing team
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
("Ethan", "Cooper", 1, NULL),
("Lucas", "Wright", 2, NULL),
("Sophia", "Lee", 3, NULL),
("Noah", "Garcia", 4, NULL),
("Liam", "Patel", 5, NULL),
("Ava", "Nguyen", 6, NULL),
("Isabella", "Thompson", 7, NULL),
("Samuel", "Chen", 8, NULL),
("Daniel' 'Rivera", 9, NULL);