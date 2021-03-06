USE [master]
GO
/****** Object:  Database [SENDA (Proyecto)]    Script Date: 16/09/2017 3:07:54 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'SENDA (Proyecto)')
BEGIN
CREATE DATABASE [SENDA (Proyecto)]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SENDA (Proyecto)', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SENDA (Proyecto).mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SENDA (Proyecto)_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SENDA (Proyecto)_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [SENDA (Proyecto)] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SENDA (Proyecto)].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SENDA (Proyecto)] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET ARITHABORT OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SENDA (Proyecto)] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SENDA (Proyecto)] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SENDA (Proyecto)] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SENDA (Proyecto)] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SENDA (Proyecto)] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SENDA (Proyecto)] SET  MULTI_USER 
GO
ALTER DATABASE [SENDA (Proyecto)] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SENDA (Proyecto)] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SENDA (Proyecto)] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SENDA (Proyecto)] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SENDA (Proyecto)]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/09/2017 3:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cliente](
	[Nombre] [varchar](40) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Correo] [text] NULL,
	[Folio] [tinyint] NOT NULL,
	[Pais] [varchar](20) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaqueteDeViaje]    Script Date: 16/09/2017 3:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PaqueteDeViaje]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PaqueteDeViaje](
	[TipoDeViaje] [text] NOT NULL,
	[CodigoDePromocion] [tinyint] NOT NULL,
	[Precio] [float] NOT NULL,
	[NumeroDeViaje] [int] NOT NULL,
	[Fecha] [date] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Promocion]    Script Date: 16/09/2017 3:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Promocion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Promocion](
	[NombreDePromocion] [varchar](30) NULL,
	[TipoDePago] [money] NOT NULL,
	[FechaDeInicio] [date] NOT NULL,
	[FechaDeVencimiento] [date] NOT NULL,
	[CodigoDePromocion] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RentaDeAutobus]    Script Date: 16/09/2017 3:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RentaDeAutobus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RentaDeAutobus](
	[Precio] [float] NOT NULL,
	[ModeloDeAutobus] [text] NOT NULL,
	[Placa] [varchar](10) NOT NULL,
	[Ruta] [varchar](10) NOT NULL,
	[Folio] [varchar](13) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salida]    Script Date: 16/09/2017 3:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Salida]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Salida](
	[Pais] [varchar](20) NOT NULL,
	[Estado] [varchar](20) NOT NULL,
	[Municipio] [varchar](20) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 16/09/2017 3:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sucursales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sucursales](
	[Pais] [varchar](20) NOT NULL,
	[Estado] [varchar](20) NOT NULL,
	[Municipio] [varchar](20) NOT NULL,
	[Unidad] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [SENDA (Proyecto)] SET  READ_WRITE 
GO
