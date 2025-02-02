USE [master]
GO
/****** Object:  Database [ProyectoProg3]    Script Date: 6/11/2021 08:39:13 ******/
CREATE DATABASE [ProyectoProg3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoProg3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProyectoProg3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoProg3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProyectoProg3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProyectoProg3] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoProg3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoProg3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoProg3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoProg3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoProg3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoProg3] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoProg3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProyectoProg3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoProg3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoProg3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoProg3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoProg3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoProg3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoProg3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoProg3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoProg3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProyectoProg3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoProg3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoProg3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoProg3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoProg3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoProg3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoProg3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoProg3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoProg3] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoProg3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoProg3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoProg3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoProg3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoProg3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoProg3] SET QUERY_STORE = OFF
GO
USE [ProyectoProg3]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 6/11/2021 08:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[CodArticulo] [int] IDENTITY(1,1) NOT NULL,
	[NombreArticulo] [varchar](25) NULL,
	[Marca] [varchar](25) NULL,
	[PrecioUnitario] [decimal](8, 2) NULL,
	[Estado] [bit] NULL,
	[IdCategoria] [int] NULL,
	[Stock] [int] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[CodArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 6/11/2021 08:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CodCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[CodCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleDeVentas]    Script Date: 6/11/2021 08:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleDeVentas](
	[Cod_DetalleVenta_DV] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Venta_DV] [int] NOT NULL,
	[Cod_Articulo_DV] [int] NOT NULL,
	[Cantidad_DV] [int] NOT NULL,
	[PrecioUnitario_DV] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_DetalleDeVentas] PRIMARY KEY CLUSTERED 
(
	[Cod_DetalleVenta_DV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 6/11/2021 08:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Cod_Proveedor_Pr] [int] IDENTITY(1,1) NOT NULL,
	[RazonSocial_Pr] [varchar](25) NULL,
	[Marca_Pr] [varchar](25) NULL,
	[Direccion_Pr] [varchar](25) NULL,
	[Ciudad_Pr] [varchar](25) NULL,
	[Provincia_Pr] [varchar](25) NULL,
	[Cuit_Pr] [int] NULL,
	[Telefono_Pr] [int] NULL,
	[Contacto_Pr] [int] NULL,
	[Web_Pr] [varchar](25) NULL,
	[Email_Pr] [varchar](25) NULL,
	[CBU_Pr] [int] NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[Cod_Proveedor_Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 6/11/2021 08:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Apellido] [varchar](25) NOT NULL,
	[Email] [varchar](25) NOT NULL,
	[Celular] [int] NULL,
	[Dni] [int] NOT NULL,
	[Direccion] [varchar](25) NULL,
	[Contrasena] [varchar](25) NOT NULL,
	[Tipo_Usuario] [bit] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 6/11/2021 08:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[Cod_Venta_V] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Cliente_V] [int] NOT NULL,
	[TotalFactura_V] [decimal](8, 2) NULL,
	[FechaFactura_V] [datetime] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[Cod_Venta_V] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IdCliente], [Nombre], [Apellido], [Email], [Celular], [Dni], [Direccion], [Contrasena], [Tipo_Usuario]) VALUES (1, N'Juan', N'Perez', N'JP@gmail.com', 1234567, 1111, N'Calle 1234', N'1234', 1)
INSERT [dbo].[Usuarios] ([IdCliente], [Nombre], [Apellido], [Email], [Celular], [Dni], [Direccion], [Contrasena], [Tipo_Usuario]) VALUES (2, N'Pepe', N'Rodriguez', N'PR@gmail.com', 1234567, 2222, N'Calle 4152', N'4567', 0)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[DetalleDeVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleDeVentas_Articulos] FOREIGN KEY([Cod_Articulo_DV])
REFERENCES [dbo].[Articulos] ([CodArticulo])
GO
ALTER TABLE [dbo].[DetalleDeVentas] CHECK CONSTRAINT [FK_DetalleDeVentas_Articulos]
GO
ALTER TABLE [dbo].[DetalleDeVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleDeVentas_Ventas] FOREIGN KEY([Cod_Venta_DV])
REFERENCES [dbo].[Ventas] ([Cod_Venta_V])
GO
ALTER TABLE [dbo].[DetalleDeVentas] CHECK CONSTRAINT [FK_DetalleDeVentas_Ventas]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Usuarios] FOREIGN KEY([Cod_Cliente_V])
REFERENCES [dbo].[Usuarios] ([IdCliente])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[spAgregarArticulo]    Script Date: 6/11/2021 08:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spAgregarArticulo]
(
	@CODARTICULO INT,
	@NOMBREARTICULO NVARCHAR(40),
	@MARCA NVARCHAR(20),
	@PRECIOUNITARIO MONEY,
	@ESTADO BIT,
	@IDCATEGORIA INT,
	@STOCK INT
)
	AS
	BEGIN
	INSERT INTO Articulos(CodArticulo,NombreArticulo,Marca,PrecioUnitario,Estado,IdCategoria,Stock)
	VALUES (@CODARTICULO,@NOMBREARTICULO,@MARCA,@PRECIOUNITARIO,@ESTADO,@IDCATEGORIA,@STOCK)
	END
GO
/****** Object:  StoredProcedure [dbo].[spAgregarCategoria]    Script Date: 6/11/2021 08:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spAgregarCategoria]
(
	@CODCATEGORIA char(4),
	@NOMBRECATEGORIA NVARCHAR(20),
	@DESCRIPCION NVARCHAR(100),
	@NumAux int
)
	AS
	BEGIN
	IF NOT EXISTS (SELECT * FROM Categorias WHERE CodCategoria = 'CAT1')
		INSERT INTO Categorias(CodCategoria,NombreCategoria,Descripcion)
		values ('CAT1',@NOMBRECATEGORIA,@DESCRIPCION)
	ELSE
	SELECT @NumAux =  COUNT(Categorias.CodCategoria) FROM Categorias
	SELECT @CODCATEGORIA = CONCAT('CAT',@NumAux)
	INSERT INTO Categorias(CodCategoria,NombreCategoria,Descripcion)
	values (@CODCATEGORIA,@NOMBRECATEGORIA,@DESCRIPCION)
	END
GO
/****** Object:  StoredProcedure [dbo].[spAgregarProveedor]    Script Date: 6/11/2021 08:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAgregarProveedor]
@RazonSocial varchar(25),
@Marca varchar(25),
@Direccion varchar(25),
@Ciudad varchar(25),
@Provincia varchar(25),
@Cuit int,
@Telefono int,
@Contacto int,
@Web varchar(25),
@Email varchar(25),
@Cbu int
AS
	INSERT INTO Proveedores(RazonSocial_Pr,Marca_Pr,Direccion_Pr,Ciudad_Pr,Provincia_Pr,Cuit_Pr,Telefono_Pr,Contacto_Pr,Web_Pr,Email_Pr,CBU_Pr)
	VALUES (@RazonSocial, @Marca, @Direccion,@Ciudad,@Provincia,@Cuit,@Telefono,@Contacto,@Web,@Email,@Cbu)
GO
/****** Object:  StoredProcedure [dbo].[spAgregarVenta]    Script Date: 6/11/2021 08:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAgregarVenta]
(
	@CodCliente int,
	@TotalFactura decimal(8,2),
	@FechaFactura datetime
)
AS
	INSERT INTO Ventas (Cod_Cliente_V, TotalFactura_V, FechaFactura_V)
	VALUES (@CodCliente,@TotalFactura,@FechaFactura)
GO
/****** Object:  StoredProcedure [dbo].[spBuscarArticulo]    Script Date: 6/11/2021 08:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarArticulo]
(
	@CODARTICULO INT
)
AS
BEGIN
	SELECT * FROM Articulos WHERE  CodArticulo = @CODARTICULO
END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarCategoria]    Script Date: 6/11/2021 08:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarCategoria]
(
	@NOMBRECATEGORIA NVARCHAR(20)
)
AS
BEGIN
	SELECT * FROM Categorias WHERE NombreCategoria = @NOMBRECATEGORIA
END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarArticulo]    Script Date: 6/11/2021 08:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarArticulo]
(
	@CODCARTICULO INT
)
AS
BEGIN
	delete from Articulos where CodArticulo = @CODCARTICULO
END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarCategoria]    Script Date: 6/11/2021 08:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarCategoria]
(
	@CODCATEGORIA INT
)
AS
BEGIN
	DELETE FROM Categorias WHERE CodCategoria = @CODCATEGORIA
END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarProveedor]    Script Date: 6/11/2021 08:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminarProveedor]
(
	@CodProveedor int
)
AS
	DELETE FROM Proveedores where Cod_Proveedor_Pr = @CodProveedor
GO
/****** Object:  StoredProcedure [dbo].[spEliminarVenta]    Script Date: 6/11/2021 08:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarVenta]
(
	@CodVenta int
)
AS
	DELETE FROM Ventas where Cod_Venta_V = @CodVenta
GO
USE [master]
GO
ALTER DATABASE [ProyectoProg3] SET  READ_WRITE 
GO
