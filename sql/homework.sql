-- ######################################
-- Task 1
-- ######################################
-- A
create table Department (
	department_id INT PRIMARY KEY,
	dep_name VARCHAR(255),
	description TEXT
);
create table Employee (
	employee_id INT PRIMARY KEY,
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

insert into Department (department_id, dep_name, description) values (1, 'Grocery', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.');
insert into Department (department_id, dep_name, description) values (2, 'Garden', 'Vestibulum sed magna at nunc commodo placerat.');
insert into Department (department_id, dep_name, description) values (3, 'Beauty', 'Etiam vel augue.');
insert into Department (department_id, dep_name, description) values (4, 'Industrial', 'In eleifend quam a odio.');
insert into Department (department_id, dep_name, description) values (5, 'Electronics', 'Cras in purus eu magna vulputate luctus.');
insert into Department (department_id, dep_name, description) values (6, 'Baby', 'Ut tellus.');
insert into Department (department_id, dep_name, description) values (7, 'Electronics', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.');
insert into Department (department_id, dep_name, description) values (8, 'Sports', 'Phasellus in felis.');
insert into Department (department_id, dep_name, description) values (9, 'Toys', 'Proin interdum mauris non ligula pellentesque ultrices.');
insert into Department (department_id, dep_name, description) values (10, 'Jewelery', 'Nulla justo.');
insert into Department (department_id, dep_name, description) values (11, 'Music', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into Department (department_id, dep_name, description) values (12, 'Baby', 'Curabitur in libero ut massa volutpat convallis.');
insert into Department (department_id, dep_name, description) values (13, 'Jewelery', 'Proin at turpis a pede posuere nonummy.');
insert into Department (department_id, dep_name, description) values (14, 'Health', 'Suspendisse potenti.');
insert into Department (department_id, dep_name, description) values (15, 'Music', 'Duis at velit eu est congue elementum.');
insert into Department (department_id, dep_name, description) values (16, 'Shoes', 'Nulla ut erat id mauris vulputate elementum.');
insert into Department (department_id, dep_name, description) values (17, 'Home', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into Department (department_id, dep_name, description) values (18, 'Toys', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.');
insert into Department (department_id, dep_name, description) values (19, 'Clothing', 'Maecenas pulvinar lobortis est.');
insert into Department (department_id, dep_name, description) values (20, 'Industrial', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');

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

-- B
select Employee.first_name, 
       Employee.last_name, 
       Employee.department_id, 
       Department.dep_name
from Employee
inner join Department on
Employee.department_id = Department.department_id;

-- C
select dep_name, 
       first_name, 
       last_name, 
       hire_date, 
       salary, 
       age(current_date, hire_date) as "working experience" 
from Employee
left join Department
on Employee.department_id = Department.department_id;

-- D
select dep_name, 
       first_name, 
       last_name, 
       hire_date, 
       salary
from Employee
left join Department
on Employee.department_id = Department.department_id
where date_part('year', age(current_date, hire_date)) > 5;

-- E
select dep_name, count(*) "number of employees"
from employee
right join department
on Employee.department_id = Department.department_id
group by dep_name
order by "number of employees" desc;

-- F
select first_name,
       last_name,
       dep_name,
       hire_date
from employee
inner join department
on Employee.department_id = Department.department_id
where hire_date > '01-01-2015';

-- G
select dep_name,
       employee_id
from employee 
inner join department
on Employee.department_id = Department.department_id
where Employee.salary > (
    select min(salary)
    from employee
);


-- ######################################
-- Task 2
-- ######################################
create table Customers (
	id INT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	DateOfBirth DATE,
	Gender VARCHAR(50),
	email VARCHAR(50)
);
create table Products (
	id INT PRIMARY KEY,
	Name VARCHAR(50),
	Description TEXT,
	price INT
);
create table Cart (
	id INT PRIMARY KEY,
	customer_id INT,
	constraint FK_customer
	foreign key (customer_id)
	references customers(id)
);
create table Product_photo (
	id INT PRIMARY KEY,
	url VARCHAR(50),
	product_id INT,
    constraint FK_product
    foreign key(product_id)
    references Products(id)
);
create table Cart_product (
	cart_id INT,
	product_id INT,
    PRIMARY KEY(cart_id, product_id),
    constraint FK_cart
    foreign key(cart_id)
    references cart(id),
    constraint FK_product
    foreign key(product_id)
    references Products(id)
);
select name,
	   description,
	   price,
	   url
from Products
left join Product_photo
on products.id = Product_photo.product_id
where url is not null;
select name,
	   description,
	   price,
	   url
from Products
left join Product_photo
on products.id = Product_photo.product_id
where url is null;

select customers.firstname, 
	   customers.lastname,
	   products.name
from customers
inner join cart
on customers.id = cart.customer_id
inner join cart_product
on cart.id = cart_product.cart_id
inner join products
on cart_product.product_id = products.id;

select customers.firstname,
	   customers.lastname,
	   products.name,
	   product_photo.url
from customers
inner join cart
on customers.id = cart.customer_id
inner join cart_product
on cart.id = cart_product.cart_id
inner join products
on cart_product.product_id = products.id
inner join product_photo
on products.id = product_photo.product_id
where product_photo.url is not null;

select distinct customers.firstname,
	   customers.lastname,
	   sum(products.price)
from customers
left join cart
on customers.id = cart.customer_id
left join cart_product
on cart.id = cart_product.cart_id
left join products
on cart_product.product_id = products.id
group by customers.firstname,
		 customers.lastname
order by sum desc;
