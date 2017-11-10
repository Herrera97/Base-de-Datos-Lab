USE [master]
GO
/****** Object:  Database [SENDA]    Script Date: 04/11/2017 10:13:07 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'SENDA')
BEGIN
CREATE DATABASE [SENDA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SENDA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.HERRERA\MSSQL\DATA\SENDA.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SENDA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.HERRERA\MSSQL\DATA\SENDA_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [SENDA] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SENDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SENDA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SENDA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SENDA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SENDA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SENDA] SET ARITHABORT OFF 
GO
ALTER DATABASE [SENDA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SENDA] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SENDA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SENDA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SENDA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SENDA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SENDA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SENDA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SENDA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SENDA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SENDA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SENDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SENDA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SENDA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SENDA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SENDA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SENDA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SENDA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SENDA] SET RECOVERY FULL 
GO
ALTER DATABASE [SENDA] SET  MULTI_USER 
GO
ALTER DATABASE [SENDA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SENDA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SENDA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SENDA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SENDA', N'ON'
GO
USE [SENDA]
GO
/****** Object:  Table [dbo].[Camion]    Script Date: 04/11/2017 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Camion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Camion](
	[IdCamion] [int] NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Placas] [varchar](50) NOT NULL,
	[Status] [varchar](1) NOT NULL,
	[NumAsientos] [int] NOT NULL,
	[Clase] [varchar](50) NOT NULL,
	[IdChofer] [int] NOT NULL,
	[NumCamion] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 04/11/2017 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Sexo] [varchar](1) NULL,
	[FechaNacimiento] [datetime] NULL,
	[Telefono] [int] NOT NULL,
	[Correo] [varchar](50) NULL,
	[IdMunicipio] [int] NOT NULL,
	[RFC] [varchar](50) NOT NULL,
	[IdPreventa] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 04/11/2017 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ruta](
	[IdRuta] [int] NOT NULL,
	[IdOrigen] [int] NOT NULL,
	[IdDestino] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 04/11/2017 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sucursal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [int] NOT NULL,
	[IdMunicipio] [int] NOT NULL,
	[NombreSucursal] [varchar](50) NOT NULL,
	[ClaveSucursal] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 04/11/2017 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendedor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vendedor](
	[IdVendedor] [int] NOT NULL,
	[NombreVendedor] [varchar](50) NOT NULL,
	[NumeroSeguro] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Camion] ([IdCamion], [Modelo], [Placas], [Status], [NumAsientos], [Clase], [IdChofer], [NumCamion]) VALUES (1234, N'VIPS', N'234-REF-E', N'D', 40, N'VIP', 53, 2993)
INSERT [dbo].[Camion] ([IdCamion], [Modelo], [Placas], [Status], [NumAsientos], [Clase], [IdChofer], [NumCamion]) VALUES (234, N'Standard Vip', N'345-REF-E', N'D', 50, N'Media', 43, 239)
INSERT [dbo].[Camion] ([IdCamion], [Modelo], [Placas], [Status], [NumAsientos], [Clase], [IdChofer], [NumCamion]) VALUES (14, N'Transformer', N'RF-E', N'E', 41, N'Media', 56, 833)
INSERT [dbo].[Camion] ([IdCamion], [Modelo], [Placas], [Status], [NumAsientos], [Clase], [IdChofer], [NumCamion]) VALUES (4, N'Standard', N'REF-E', N'D', 41, N'VIP', 63, 29)
INSERT [dbo].[Camion] ([IdCamion], [Modelo], [Placas], [Status], [NumAsientos], [Clase], [IdChofer], [NumCamion]) VALUES (34, N'Auto', N'REF-E', N'D', 51, N'Media', 33, 23)
INSERT [dbo].[Camion] ([IdCamion], [Modelo], [Placas], [Status], [NumAsientos], [Clase], [IdChofer], [NumCamion]) VALUES (134, N'Chevy', N'4-RF-E', N'E', 47, N'Media', 54, 8933)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Sexo], [FechaNacimiento], [Telefono], [Correo], [IdMunicipio], [RFC], [IdPreventa]) VALUES (123, N'Salvador', N'Ledezma Treviño', N'M', CAST(0x00008ACC00000000 AS DateTime), 81193, N'chava_ledezma@gmail.com', 65454, N'r33er4rrre', 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Sexo], [FechaNacimiento], [Telefono], [Correo], [IdMunicipio], [RFC], [IdPreventa]) VALUES (124, N'Raúl', N'Herrera Valero', N'M', CAST(0x00008B4D00000000 AS DateTime), 8114, N'raul_fcfm@gmail.com', 63333, N'fwwrr343rff', 2)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Sexo], [FechaNacimiento], [Telefono], [Correo], [IdMunicipio], [RFC], [IdPreventa]) VALUES (126, N'Mario', N'Loera Hernandez', N'M', CAST(0x000080A500000000 AS DateTime), 811953844, N'mario_castañeda@gmail.com', 65987, N'r33e', 3)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Sexo], [FechaNacimiento], [Telefono], [Correo], [IdMunicipio], [RFC], [IdPreventa]) VALUES (125, N'Alexis Adrian', N'Lopez Villarreal', N'M', CAST(0x0000884F00000000 AS DateTime), 847565643, N'alexis.lopez@gmail.com', 94955, N'4rre', 4)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Sexo], [FechaNacimiento], [Telefono], [Correo], [IdMunicipio], [RFC], [IdPreventa]) VALUES (121, N'Alexis', N'Leal Mata', N'M', CAST(0x000086CD00000000 AS DateTime), 813453844, N'alexis_militar@gmail.com', 65987, N'r33e', 5)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Sexo], [FechaNacimiento], [Telefono], [Correo], [IdMunicipio], [RFC], [IdPreventa]) VALUES (12, N'Laura', N'	Paredes Sauceda', N'F', CAST(0x00007FFE00000000 AS DateTime), 847565883, N'señorita.laura@gmail.com', 94959, N'4re', 6)
INSERT [dbo].[Ruta] ([IdRuta], [IdOrigen], [IdDestino]) VALUES (223, 12, 22)
INSERT [dbo].[Ruta] ([IdRuta], [IdOrigen], [IdDestino]) VALUES (22, 13, 23)
INSERT [dbo].[Ruta] ([IdRuta], [IdOrigen], [IdDestino]) VALUES (109, 14, 24)
INSERT [dbo].[Ruta] ([IdRuta], [IdOrigen], [IdDestino]) VALUES (22, 15, 25)
INSERT [dbo].[Ruta] ([IdRuta], [IdOrigen], [IdDestino]) VALUES (122, 16, 26)
INSERT [dbo].[Ruta] ([IdRuta], [IdOrigen], [IdDestino]) VALUES (13, 17, 27)
INSERT [dbo].[Sucursal] ([IdSucursal], [IdMunicipio], [NombreSucursal], [ClaveSucursal]) VALUES (2344, 345, N'SENDAJr', 234)
INSERT [dbo].[Sucursal] ([IdSucursal], [IdMunicipio], [NombreSucursal], [ClaveSucursal]) VALUES (44, 34, N'Senda2', 34)
INSERT [dbo].[Sucursal] ([IdSucursal], [IdMunicipio], [NombreSucursal], [ClaveSucursal]) VALUES (24, 45, N'Senda3', 23)
INSERT [dbo].[Sucursal] ([IdSucursal], [IdMunicipio], [NombreSucursal], [ClaveSucursal]) VALUES (344, 3445, N'Senda4', 2234)
INSERT [dbo].[Sucursal] ([IdSucursal], [IdMunicipio], [NombreSucursal], [ClaveSucursal]) VALUES (444, 344, N'SENDAJr', 234)
INSERT [dbo].[Sucursal] ([IdSucursal], [IdMunicipio], [NombreSucursal], [ClaveSucursal]) VALUES (244, 445, N'Senda6', 223)
INSERT [dbo].[Vendedor] ([IdVendedor], [NombreVendedor], [NumeroSeguro], [IdSucursal]) VALUES (12, N'Cassandra Lugo', 12345, 42444)
INSERT [dbo].[Vendedor] ([IdVendedor], [NombreVendedor], [NumeroSeguro], [IdSucursal]) VALUES (1, N'Ana Parra', 125, 324)
INSERT [dbo].[Vendedor] ([IdVendedor], [NombreVendedor], [NumeroSeguro], [IdSucursal]) VALUES (128, N'Isis Flores', 345, 24424)
INSERT [dbo].[Vendedor] ([IdVendedor], [NombreVendedor], [NumeroSeguro], [IdSucursal]) VALUES (129, N'Erick Gil', 142345, 442444)
INSERT [dbo].[Vendedor] ([IdVendedor], [NombreVendedor], [NumeroSeguro], [IdSucursal]) VALUES (130, N'Carlos Mancillas', 4125, 4324)
INSERT [dbo].[Vendedor] ([IdVendedor], [NombreVendedor], [NumeroSeguro], [IdSucursal]) VALUES (131, N'Cesar Torres', 3454, 424424)
USE [master]
GO
ALTER DATABASE [SENDA] SET  READ_WRITE 
GO
