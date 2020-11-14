create table Employee (
	employee_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	hire_date DATE,
	salary DECIMAL(12),
	department_id INT,
	CONSTRAINT FK_department
	FOREIGN KEY(department_id)
	REFERENCES Department(department_id)
);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (1, 'Hilda', 'Doey', 'hdoey0@netscape.com', '2020-08-04', 24100, 5);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (2, 'Sawyere', 'McVee', 'smcvee1@dot.gov', '2013-07-25', 3500, 15);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (3, 'Forrest', 'Battson', 'fbattson2@instagram.com', '2019-06-12', 22900, 12);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (4, 'Egan', 'Charpling', 'echarpling3@chronoengine.com', '2015-01-15', 23000, 8);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (5, 'Alissa', 'Levison', 'alevison4@princeton.edu', '2007-08-20', 3100, 13);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (6, 'Edwina', 'Zammitt', 'ezammitt5@sphinn.com', '2014-07-16', 24000, 6);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (7, 'Kilian', 'Sycamore', 'ksycamore6@wikimedia.org', '2018-08-05', 16000, 1);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (8, 'Siward', 'Mobley', 'smobley7@house.gov', '2011-08-17', 19300, 19);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (9, 'Walliw', 'Sutliff', 'wsutliff8@chicagotribune.com', '2017-08-22', 27300, 11);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (10, 'Krishnah', 'Prigmore', 'kprigmore9@marriott.com', '2010-11-04', 15000, 19);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (11, 'Peri', 'Flatley', 'pflatleya@usa.gov', '2013-09-12', 6900, 11);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (12, 'Kristy', 'Albarez', 'kalbarezb@hao123.com', '2016-09-29', 20400, 16);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (13, 'Lombard', 'Bucklee', 'lbuckleec@prweb.com', '2006-03-24', 17600, 11);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (14, 'Marthena', 'McLaine', 'mmclained@oakley.com', '2018-05-16', 18900, 10);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (15, 'Merrile', 'Skillanders', 'mskillanderse@stumbleupon.com', '2017-08-23', 26300, 7);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (16, 'Lainey', 'Beaumont', 'lbeaumontf@cisco.com', '2007-03-17', 10800, 4);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (17, 'Thekla', 'Kynton', 'tkyntong@360.cn', '2020-06-20', 23300, 18);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (18, 'Tate', 'Dumberell', 'tdumberellh@wired.com', '2018-12-17', 21300, 14);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (19, 'Shina', 'O''Dunneen', 'sodunneeni@sina.com.cn', '2019-11-23', 5100, 19);
insert into Employee (employee_id, first_name, last_name, email, hire_date, salary, department_id) values (20, 'Merrilee', 'Khoter', 'mkhoterj@phpbb.com', '2012-04-18', 6900, 2);
