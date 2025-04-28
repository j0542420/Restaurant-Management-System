-- Using the Restaurant_Management_System DataBase
use Restaurant_Management_System;


create table Roles (
	RoleID int  IDENTITY(1,1) not null,
	RoleName varchar(50) not null,
	primary key (RoleID)
);

create table Users (
	UserID int  IDENTITY(1,1) not null,
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	Email varchar(50) unique not null,
	PhoneNumber varchar(20) not null,
	RoleID int,
	primary key (UserID),
	foreign key (RoleID) references Roles(RoleID)
);


create table MenuItems (
	ItemID int  IDENTITY(1,1) not null,
	ItemName varchar(50) not null,
	Category varchar(50) not null,
	Price decimal(10,2) not null,
	description text not null,
	primary key (ItemID)
);

create table Tables (
	TableID int  IDENTITY(1,1) not null,
	TableNumber varchar(50) not null,
	Status varchar(50)not null,
	Capacity int not null,
	primary key (TableID)
);

create table Orders (
	OrderID int  IDENTITY(1,1) not null,
	UserID int not null,
	TableID int not null,
	OrderDate DATETIME not null,
	primary key (OrderID),
	foreign key (UserID) references Users(UserID),
	foreign key (TableID) references Tables(TableID)
);

create table OrderDetails (
	DetailID int  IDENTITY(1,1) not null,
	OrderID int not null,
	ItemID int not null,
	Quantity int not null,
	primary key (DetailID),
	foreign key (OrderID) references Orders(OrderID),
	foreign key (ItemID) references MenuItems(ItemID)
);


create table Customer (
	CustomerID int  IDENTITY(1,1) not null,
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	Email varchar(50) unique not null,
	PhoneNumber varchar(20) not null,
	primary key (CustomerID)
);

create table Reservations (
	ReservationID int  IDENTITY(1,1) not null,
	TableID int not null,
	CustomerID int not null,
	ReservationTime DATETIME not null,
	primary key (ReservationID),
	foreign key (TableID) references Tables(TableID),
	foreign key (CustomerID) references Customer(CustomerID)
);


create table Bills (
	BillID int  IDENTITY(1,1) not null,
	OrderID int not null,
	Total decimal(10,2) not null,
	BillDate DATETIME not null,
	PaymentType varchar(50)not null,
	CustomerID int not null,
	primary key (BillID),
	foreign key (OrderID) references orders(OrderID),
	foreign key (CustomerID) references Customer(CustomerID)
);

create table Staff (
	StaffID int  IDENTITY(1,1) not null,
	UserID int not null,
	RoleID int,
	Position varchar(20) not null,
	HireDate DATE not null,
	primary key (StaffID),
	foreign key (UserID) references Users(UserID),
	foreign key (RoleID) references Roles(RoleID)
);