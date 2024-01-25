Create database DBEcho
go

USE DBEcho
go

Create table Rol(
[Id] int not null primary key identity(1,1),
[Nombre] varchar (50) not null)
go

Create table Usuario(
[Id] int Primary key identity(1,1),
[IdRol] int not null,
[Nombre] varchar(50) not null,
[Apellido] varchar(50)not null,
[Login] varchar(100) not null,
[Password] varchar(50) not null,
[Estatus] tinyint not null,
[FechaRegistro] date not null
foreign key (IdRol) references Rol(Id)
);
go

Create table Cliente(
[Id] int Primary key identity(1,1),
[Nombre] varchar(50) not null,
[Apellido] varchar(50)not null,
[Telefono] varchar(30) not null,
[Direccion] varchar(50) not null,
);
go

--insertar datos a las tablas
insert into Rol(Nombre)
values('Administrador'),
('Programador'),
('Jefe'),
('Cliente')
go

select * from Rol

--Contraseña: danni234
insert into Usuario(IdRol,Nombre,Apellido,Login,Password,Estatus,FechaRegistro)
values(1,'Daniela','Amaya','daniamaya','437b598246c491d06c04335df18e2095',1,'2024-01-19')
go

select * from Usuario

insert into Cliente(Nombre,Apellido,Telefono,Direccion)
Values ('Enrique','Portillo','77236578','San Isidro Izalco,Sonsonate')
go

select * from Cliente