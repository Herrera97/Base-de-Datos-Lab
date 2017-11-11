Use SENDA

select *from Cliente
--Select con group by
select IdPreventa, count(IdPreventa) as cantidad_IdPreventa from Cliente group by IdPreventa

--Select 1 columna y 3 funciones
select Max(IdCliente) as max_cliente from Cliente 
select Min(IdCliente) as min_cliente from Cliente 
select SUM(IdCliente) as sum_cliente from Cliente 

--Select 2 con Where
select * from Cliente where Apellidos = 'Ledezma Treviño'
select * from Cliente where sexo = 'F'

--Select 2 con having 
select sum(IdPreventa) as Preventa from Cliente having sum (IdPreventa) >2
select max(IdPreventa) as Preventa from Cliente having max (IdPreventa) >1

--Select con TOP y 1 consulta order by
select top 4 * from Cliente