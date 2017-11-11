Create view VistaCliente as
select C.Telefono as Cliente, C.Apellidos as Cliente, C.Correo as Cliente
from Cliente C 
join Sorteo as S on C.Idcliente = S.IdCliente
select *from VistaCliente

create view VistaEmpleado as
select V.IdVendedor, V.NombreVendedor 
from Vendedor V
join Empleado as E on V.IdVendedor = E.IdVendedor
select *from VistaEmpleado

create view VistaAlmacenCamion as
select C.IdCamion, C.Modelo, C.NumAsientos, C.Clase
from Camion C
join Almacen as A on C.IdCamion = A.IdCamion
select *from VistaAlmacenCamion

create view VistaOrganizacionDeRutas as
select R.IdOrigen, R.IdDestino
from Ruta R
join Organizacion as O on R.IdRuta = O.IdRuta 
select *from VistaOrganizacionDeRutas 

create view VistaRegistroDeSucursales as 
select S.IdSucursal, S.NombreSucursal 
from Sucursal S
join Registro as R on S.IdSucursal = R.IdSucursal
select *from VistaRegistroDeSucursales

Select *From Sucursal
Select *from Registro


