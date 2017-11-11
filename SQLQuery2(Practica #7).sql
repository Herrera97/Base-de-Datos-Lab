create procedure Proceso1
as begin 
select C.Telefono, C.Apellidos, C.Correo
from Cliente C 
join Sorteo as S on C.Idcliente = S.IdCliente
end 
exec Proceso1

create procedure Proceso2
as begin 
select V.IdVendedor, V.NombreVendedor 
from Vendedor V
join Empleado as E on V.IdVendedor = E.IdVendedor
end
exec Proceso2

create procedure Proceso3
as begin 
select C.IdCamion, C.Modelo, C.NumAsientos, C.Clase
from Camion C
join Almacen as A on C.IdCamion = A.IdCamion
end 
exec Proceso3 

create procedure Proceso4
as begin
select R.IdOrigen, R.IdDestino
from Ruta R
join Organizacion as O on R.IdRuta = O.IdRuta
end 
exec Proceso4 

create procedure Proceso5
as begin
select S.IdSucursal, S.NombreSucursal 
from Sucursal S
join Registro as R on S.IdSucursal = R.IdSucursal
end
exec Proceso5