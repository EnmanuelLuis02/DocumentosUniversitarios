
/* NOMBRE ENMANUEL DE LOS SANTOS MATRICULA 19-MIIN-1-051 SECCION 0541*/

USE [master]
GO
/****** Object:  Database [GreenHouse]    Script Date: 12/25/2020 10:02:11 AM ******/
CREATE DATABASE [GreenHouse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GreenHouse', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GreenHouse.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GreenHouse_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GreenHouse_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GreenHouse] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GreenHouse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GreenHouse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GreenHouse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GreenHouse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GreenHouse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GreenHouse] SET ARITHABORT OFF 
GO
ALTER DATABASE [GreenHouse] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GreenHouse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GreenHouse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GreenHouse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GreenHouse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GreenHouse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GreenHouse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GreenHouse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GreenHouse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GreenHouse] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GreenHouse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GreenHouse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GreenHouse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GreenHouse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GreenHouse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GreenHouse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GreenHouse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GreenHouse] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GreenHouse] SET  MULTI_USER 
GO
ALTER DATABASE [GreenHouse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GreenHouse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GreenHouse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GreenHouse] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GreenHouse] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GreenHouse] SET QUERY_STORE = OFF
GO
USE [GreenHouse]
GO
/****** Object:  Table [dbo].[Modelos]    Script Date: 12/25/2020 10:02:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelos](
	[ModeloID] [varchar](50) NOT NULL,
	[Marca] [varchar](30) NULL,
	[VersionOLD] [varchar](50) NULL,
	[VersionNew] [varchar](50) NULL,
 CONSTRAINT [PK_Modelos] PRIMARY KEY CLUSTERED 
(
	[ModeloID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reparacion1]    Script Date: 12/25/2020 10:02:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reparacion1](
	[reparacionID] [varchar](50) NOT NULL,
	[Pantalla] [varchar](50) NULL,
	[Housing] [varchar](50) NULL,
	[Bateria] [varchar](50) NULL,
	[PuertoCarga] [varchar](50) NULL,
	[volumen] [varchar](50) NULL,
	[camara] [varchar](50) NULL,
	[camarafrontal] [varchar](50) NULL,
 CONSTRAINT [PK_reparacion1] PRIMARY KEY CLUSTERED 
(
	[reparacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tecnico]    Script Date: 12/25/2020 10:02:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tecnico](
	[tecnicoID] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[whatsapp] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[sexo] [char](1) NULL,
 CONSTRAINT [PK_tecnico] PRIMARY KEY CLUSTERED 
(
	[tecnicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 12/25/2020 10:02:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[telefono] [int] NULL,
	[whatsapp] [int] NULL,
	[reparacionID] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'Blackberry N40', N'Blackberry', N'berry001', N'Berry002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'Huawei K30', N'Huawei', N'HW001', N'HW002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'Huawei K50', N'Huawei', N'HW001', N'HW002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'iPhone 11', N'Apple', N'001', N'002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'iPhone 11 Pro', N'Apple', N'001', N'002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'iPhone 12 Pro', N'Apple', N'001', N'002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'iPhone 6', N'Apple', N'001', N'002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'iPhone 7', N'Apple', N'001', N'002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'iPhone 8', N'Apple', N'001', N'002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'iPhone X', N'Apple', N'001', N'002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'Samsung Note 10', N'Samsung', N'K001', N'K002')
INSERT [dbo].[Modelos] ([ModeloID], [Marca], [VersionOLD], [VersionNew]) VALUES (N'Samsung S10', N'Samsung', N'K001', N'K002')
GO
INSERT [dbo].[reparacion1] ([reparacionID], [Pantalla], [Housing], [Bateria], [PuertoCarga], [volumen], [camara], [camarafrontal]) VALUES (N'BT1', N'ATB', N'ATB', N'Cambiar bateria', N'ATB', N'ATB', N'ATB', N'ATB')
INSERT [dbo].[reparacion1] ([reparacionID], [Pantalla], [Housing], [Bateria], [PuertoCarga], [volumen], [camara], [camarafrontal]) VALUES (N'CAM1', N'ATB', N'ATB', N'ATB', N'ATB', N'ATB', N'Cambiar camara principal', N'ATB')
INSERT [dbo].[reparacion1] ([reparacionID], [Pantalla], [Housing], [Bateria], [PuertoCarga], [volumen], [camara], [camarafrontal]) VALUES (N'CAM2', N'ATB', N'ATB', N'ATB', N'ATB', N'ATB', N'ATB', N'Cambiar camara frontal')
INSERT [dbo].[reparacion1] ([reparacionID], [Pantalla], [Housing], [Bateria], [PuertoCarga], [volumen], [camara], [camarafrontal]) VALUES (N'CH1', N'ATB', N'ATB', N'ATB', N'Cambiar Flex de carga', N'ATB', N'ATB', N'ATB')
INSERT [dbo].[reparacion1] ([reparacionID], [Pantalla], [Housing], [Bateria], [PuertoCarga], [volumen], [camara], [camarafrontal]) VALUES (N'HC1', N'ATB', N'Cambiar housing', N'ATB', N'ATB', N'ATB', N'ATB', N'ATB')
INSERT [dbo].[reparacion1] ([reparacionID], [Pantalla], [Housing], [Bateria], [PuertoCarga], [volumen], [camara], [camarafrontal]) VALUES (N'PT1', N'cambiar pantalla', N'ATB', N'ATB', N'ATB', N'ATB', N'ATB', N'ATB')
INSERT [dbo].[reparacion1] ([reparacionID], [Pantalla], [Housing], [Bateria], [PuertoCarga], [volumen], [camara], [camarafrontal]) VALUES (N'PT2', N'ATB', N'ATB', N'Probar nueva bateria', N'ATB', N'ATB', N'ATB', N'ATB')
INSERT [dbo].[reparacion1] ([reparacionID], [Pantalla], [Housing], [Bateria], [PuertoCarga], [volumen], [camara], [camarafrontal]) VALUES (N'VOL1', N'ATB', N'ATB', N'ATB', N'ATB', N'CAMBIAR FLEX VOLUMEN', N'ATB', N'ATB')
GO
INSERT [dbo].[tecnico] ([tecnicoID], [nombre], [apellido], [telefono], [whatsapp], [direccion], [sexo]) VALUES (N'EL MONTRO AZUL', N'PEDRO LUCAS', N'JUNA PECHI', N'32412023143', N'312342134321', N'JUANA SALTITOÁ', N'M')
INSERT [dbo].[tecnico] ([tecnicoID], [nombre], [apellido], [telefono], [whatsapp], [direccion], [sexo]) VALUES (N'EL NEGRO', N'JULIO ', N'LIBURT', N'22309123012', N'2341321233241', N'SANCRISTOBAL', N'M')
INSERT [dbo].[tecnico] ([tecnicoID], [nombre], [apellido], [telefono], [whatsapp], [direccion], [sexo]) VALUES (N'EL TEGNOLOGO', N'ENMANUEL ', N'DE LOS SANTOS ', N'92342143212', N'321231231231232', N'SANTO DOMINGO', N'M')
INSERT [dbo].[tecnico] ([tecnicoID], [nombre], [apellido], [telefono], [whatsapp], [direccion], [sexo]) VALUES (N'JUAN PABLO', N'JUAN PABLO', N'SANTINO PELINO', N'8094567890', N'8493768901', N'LOS PLATANO DE VILLA SUR', N'F')
INSERT [dbo].[tecnico] ([tecnicoID], [nombre], [apellido], [telefono], [whatsapp], [direccion], [sexo]) VALUES (N'LA CHULA', N'MINETA', N'PACHINA', N'320943103221', N'3241231231213', N'VILLA MELLA', N'F')
INSERT [dbo].[tecnico] ([tecnicoID], [nombre], [apellido], [telefono], [whatsapp], [direccion], [sexo]) VALUES (N'LA REAL BABY DE LOS TELEFONOS', N'MARIA PINAL', N'PINAL SUR', N'83021342232', N'342321234232', N'SANTIAGO', N'F')
INSERT [dbo].[tecnico] ([tecnicoID], [nombre], [apellido], [telefono], [whatsapp], [direccion], [sexo]) VALUES (N'MARIONO RINCON', N'MARINO', N'POPEYE CRISTAL', N'8402321232', N'2143941234', N'LAS MINAS PELINAS|', N'M')
INSERT [dbo].[tecnico] ([tecnicoID], [nombre], [apellido], [telefono], [whatsapp], [direccion], [sexo]) VALUES (N'MICHELIN', N'MICHAEL', N'CRUZ', N'23410930123', N'23312312332132', N'LOS MINAS', N'M')
GO
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Apellido], [Correo], [Direccion], [telefono], [whatsapp], [reparacionID]) VALUES (N'ALTAGRACIA ', N'CALDERON ', N'DE LA ROSA', N'MAMI29@GMAIL', N'AZUA', 399731911, 923913129, 89323)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Apellido], [Correo], [Direccion], [telefono], [whatsapp], [reparacionID]) VALUES (N'ASULITO', N'MUCHO KELLO', N'KELLITO ', N'EL QUELLO@HOTMAIL', N'BANI', 331232121, 312131132, 5489)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Apellido], [Correo], [Direccion], [telefono], [whatsapp], [reparacionID]) VALUES (N'ELIECER', N'ELIECER CAPELLAN', N'CAPELLAN', N'CAPELLAN43@GMAIL', N'SANTIAGO', 321212322, 23122133, 45)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Apellido], [Correo], [Direccion], [telefono], [whatsapp], [reparacionID]) VALUES (N'ENMANUEL', N'VILLAR', N'VILLAR CAPELLO', N'VILLAR78@HOTMAIL.COM', N'JUAN PILO', 32939202, 30232344, 56238)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Apellido], [Correo], [Direccion], [telefono], [whatsapp], [reparacionID]) VALUES (N'GYLL', N'FILLON', N'FILLON PILON', N'FILLO90@HOTMAIL', N'VILLA PENCA', 79320233, 92333340, 23212)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Apellido], [Correo], [Direccion], [telefono], [whatsapp], [reparacionID]) VALUES (N'MARINO SAPIYON', N'SEPILLO ', N'ROJO VERDOSO', N'SAPIYO20@GMAIL', N'ROMANA', 459043232, 91239013, 9923)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Apellido], [Correo], [Direccion], [telefono], [whatsapp], [reparacionID]) VALUES (N'MINERBO', N'PEDRO NELSON', N'BILLON|', N'BILLON@GOOGLE.COM', N'LOS PALITOS DE AZUA', 239774323, 232323232, 6589)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Apellido], [Correo], [Direccion], [telefono], [whatsapp], [reparacionID]) VALUES (N'PACHECO', N'JUAN PACHECO', N'DE LOS CIVOR', N'PACHECO@HOTMAIL.COM', N'NO SE DONDE VIVO', 2123142131, 235335243, 23131)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Apellido], [Correo], [Direccion], [telefono], [whatsapp], [reparacionID]) VALUES (N'PELUCHES', N'KELVIN BALLEJO', N'BALLEJON', N'ELBALLE@GMAIL', N'HAINA', 312331112, 212231221, 22223)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Apellido], [Correo], [Direccion], [telefono], [whatsapp], [reparacionID]) VALUES (N'YSAAC', N'DE LOS ZUL', N'CAPELLAN', N'YSA89@HOTMAIL', N'VILLA MELLA', 93202132, 932938900, 92333)
GO
USE [master]
GO
ALTER DATABASE [GreenHouse] SET  READ_WRITE 
GO
