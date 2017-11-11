Use SENDA
Create table Cliente (
IdCliente int not null identity primary key,
Nombre varchar (50)  null,
Apellidos varchar (50)  null,
Sexo varchar(1) null,
FechaNacimiento datetime null,
Telefono int not null, 
Correo varchar (50)  null,
IdMunicipio int not null,
RFC varchar (50) not null,
IdPreventa int not null,
)
create table Sorteo (
IdCliente int null foreign key reference Cliente (IdCliente), 
NumBoleto int null,
Vendedor varchar(50) not null,
NombreSorteo varchar (50) not null, 
)


Create table Vendedor (
IdVendedor int not null identity primary key, 
NombreVendedor varchar (50) not null,
NumeroSeguro int not null,
IdSucursal int not null,
)
Create table Empleado (
IdVendedor int not null foreign key reference Cliente (IdCliente), 
NumSeguro int not null,
PuestoTrabajo varchar (50) not null,
Sueldo int null, 
)


Create table Camion (
IdCamion int not null identity primary key,
Modelo varchar (50) not null,
Placas varchar (50) not null,
Status varchar (1) not null,
NumAsientos int not null,
Clase varchar (50) not null,
IdChofer int not null,
NumCamion int not null,
)
Create table Almacen (
IdCamion int not null foreign key reference Camion (IdCamion),
LugarDeAlmacenamiento varchar (50), 
NumeroEdifio int, 
)


Create table Ruta (
IdRuta int not null identity primary key,
IdOrigen int not null,
IdDestino int not null,
)
Create table Organizacion (
IdRuta int not null foreign key reference Camion (IdRuta),
NomOrganizacion varchar (50) not null,
NumeroUnidades int, 
)


Create table Sucursal (
IdSucursal int not null identity primary key,
IdMunicipio int not null,
NombreSucursal varchar (50) not null,
ClaveSucursal int not null,
)
Create table Registro (
IdSucursal int not null foreign key reference Sucursal (IdSucursal),
NombreSucrusal varchar (40),
NumeroVendedores int not null, 
)
