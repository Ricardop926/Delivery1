create database Taller_3


create table Tbl_Region (
Region_Id int not null,
Region_Name varchar (50),
primary key (Region_Id)

)

create table Tbl_countries (
Country_Id int not null,
Country_Name varchar (50),
Region_Id int not null,
primary key (Country_Id),
foreign key (Region_Id) references Tbl_Region(Region_Id)
)


create table Tbl_Locations(
Location_Id int not null,
Street_Address varchar (50),
Postal_Code int,
City varchar(20),
primary key (Location_Id)

)

create table Tbl_Departament(
Departament_Id int not null,
Departament_Name varchar (50),
Manager_Id int,
Location_Id int,
primary key (Departament_Id),
foreign key (Location_Id) references Tbl_Locations(Location_Id)

)
create table Tbl_Jobs(
Job_Id int not null,
Job_Title varchar (20),
Min_Salary int,
Max_Salary int,
primary key (Job_Id)

)
create table Tbl_Employees (
Employees_Id int,
First_Name varchar (20),
Last_Name varchar (20),
Email nvarchar (20),
Phone_Number int,
Hire_Date datetime not null,
Job_Id int,
Salary int,
Commission_Pct int,
Manager_Id int,
Departament_Id INT,
primary key (Employees_Id),
foreign key (Job_Id) references Tbl_Jobs(Job_Id),
foreign key (Departament_Id) references Tbl_Departament(Departament_Id)

)


create table Tbl_JobsHistory(
Employees_Id int not null,
[Start_Date] datetime,
End_Date datetime,
Job_Id int,
Departament_Id INT,
foreign key (Employees_Id) references Tbl_Employees(Employees_Id),
foreign key (Departament_Id) references Tbl_Departament(Departament_Id),
foreign key (Job_Id) references Tbl_Jobs(Job_Id)

)

