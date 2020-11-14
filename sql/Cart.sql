create table Cart (
	id INT,
	customer_id INT,
	constraint FK_customer
	foreign key (customer_id)
	references customers(id)
);
insert into Cart (id, customer_id) values (1, 10);
insert into Cart (id, customer_id) values (2, 9);
insert into Cart (id, customer_id) values (3, 8);
insert into Cart (id, customer_id) values (4, 7);
insert into Cart (id, customer_id) values (5, 6);
insert into Cart (id, customer_id) values (6, 5);
insert into Cart (id, customer_id) values (7, 4);
insert into Cart (id, customer_id) values (8, 3);
insert into Cart (id, customer_id) values (9, 2);
insert into Cart (id, customer_id) values (10, 1);
