Create database SENDA
use SENDA

Create table Cliente (
IdCliente int not null,
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

insert into Cliente values (123, 'Salvador', 'Ledezma Suarez', 'M', '04/14/1997', 81193, 'chava_ledezma@gmail.com',
			    65454, 'r33er4rrre', 1)
insert into Cliente values (124, 'Raúl', 'Herrera Valero', 'M', '08/21/1997', 8114, 'raul_fcfm@gmail.com',
			    63333, 'fwwrr343rff', 2)
insert into Cliente values (126, 'Mario','Loera Hernandez', 'M', '03/03/1990', 811953844, 'mario_castañeda@gmail.com',
			    65987, 'r33e', 3)
insert into Cliente values (125, 'Alexis Adrian', 'Lopez Villarreal', 'M', '07/17/1995', 847565643, 'alexis.lopez@gmail.com',
				94955, '4rre', 4)
insert into Cliente values (121, 'Alexis','Leal Mata', 'M', '06/26/1994', 813453844, 'alexis_militar@gmail.com',
			    65987, 'r33e', 5)
insert into Cliente values (12, 'Laura', '	Paredes Sauceda', 'F', '09/17/1989', 847565883, 'señorita.laura@gmail.com',
				94959, '4re', 6)
select *from Cliente
delete from Cliente where IdCliente= 123
update Cliente set Apellidos = 'Ledezma Treviño' where Nombre= 'Salvador'


Create table Vendedor (
IdVendedor int not null,
NombreVendedor varchar (50) not null,
NumeroSeguro int not null,
IdSucursal int not null,
)

insert into Vendedor values (12, 'Cassandra Lugo', 12345, 42444)
insert into Vendedor values (120, 'Ana Parra', 125, 324)
insert into Vendedor values (128, 'Isis Flores', 345, 24424)
insert into Vendedor values (129, 'Erick Gil', 142345, 442444)
insert into Vendedor values (130, 'Carlos Mancillas', 4125, 4324)
insert into Vendedor values (131, 'Cesar Torres', 3454, 424424)
select *from Vendedor
delete from  Vendedor where NombreVendedor= 'Isis Flores'
update Vendedor set IdVendedor = 1 where NombreVendedor= 'Ana Parra'


Create table Camion (
IdCamion int not null,
Modelo varchar (50) not null,
Placas varchar (50) not null,
Status varchar (1) not null,
NumAsientos int not null,
Clase varchar (50) not null,
IdChofer int not null,
NumCamion int not null,
)

insert into Camion values (1234, 'VIPS', '234-REF-E', 'D', 40, 'VIP', 53, 2993)
insert into Camion values (234, 'Medios', '345-REF-E', 'D', 50, 'Media', 43, 239)  
insert into Camion values (134, 'Chevy', '4-RF-E', 'E', 47, 'Media', 54, 8933)
insert into Camion values (4, 'Standard', 'REF-E', 'D', 41, 'VIP', 63, 29)
insert into Camion values (34, 'Auto', 'REF-E', 'D', 51, 'Media', 33, 23)  
insert into Camion values (14, 'Transformer', 'RF-E', 'E', 41, 'Media', 56, 833)
select *from Camion   
delete from Camion where Status= 'E'  
update Camion set Modelo= 'Standard Vip' where NumAsientos= 50

Create table Ruta (
IdRuta int not null,
IdOrigen int not null,
IdDestino int not null,
)

Insert into Ruta values (223, 12, 22)
Insert into Ruta values (22, 13, 23)
Insert into Ruta values (123, 14, 24)
Insert into Ruta values (22, 15, 25)
Insert into Ruta values (122, 16, 26)
Insert into Ruta values (13, 17, 27)
select *from Ruta
Delete from Ruta where IdRuta= 123
update Ruta set IdRuta= 109 where IdDestino= 24 

Create table Sucursal (
IdSucursal int not null,
IdMunicipio int not null,
NombreSucursal varchar (50) not null,
ClaveSucursal int not null,
)

Insert into Sucursal values (2344, 345, 'Senda1', 234)
Insert into Sucursal values (44, 34, 'Senda2', 34)
Insert into Sucursal values (24, 45, 'Senda3', 23)
Insert into Sucursal values (344, 3445, 'Senda4', 2234)
Insert into Sucursal values (444, 344, 'Senda5', 234)
Insert into Sucursal values (244, 445, 'Senda6', 223)
Select *from Sucursal
Delete from Sucursal where NombreSucursal = 'Senda3'
update Sucursal set NombreSucursal= 'SENDAJr' where ClaveSucursal = 234
