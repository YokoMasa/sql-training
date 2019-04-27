create table Prefectures (
	id int not null auto_increment,
	name varchar(30) not null,
	primary key (id)
);

create table Customers (
	id int not null auto_increment,
	name varchar(30) not null,
	age int not null,
	join_date int,
	prefecture_id int,
	primary key (id)
);

create table EmployeeTypes (
	id int not null auto_increment,
	name varchar(30),
	primary key (id)
);

create table Employees (
	id int not null auto_increment,
	name varchar(30),
	age int,
	employee_type_id int,
	primary key (id)
);

create table Sales (
	id int not null auto_increment,
	customer_id int,
	employee_id int,
	date int,
	payment_type_id int,
	primary key (id)
);

create table PaymentTypes (
	id int not null auto_increment,
	name varchar(30),
	primary key (id)
);

create table SalesEntries (
	id int not null auto_increment,
	sales_id int,
	product_id int,
	count int,
	primary key (id)
);

create table Discounts (
	id int not null auto_increment,
	rate float,
	primary key (id)
);

create table ProductDiscounts (
	id int not null auto_increment,
	product_id int,
	discount_id int,
	start_date int,
	end_date int,
	primary key (id)
);

create table Products (
	id int not null auto_increment,
	name varchar(30),
	price int,
	category_id int,
	primary key (id)
);

create table Categories (
	id int not null auto_increment,
	name varchar(30),
	primary key (id)
);