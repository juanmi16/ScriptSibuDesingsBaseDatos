USE [master]
GO
/****** Object:  Database [SibuDesigns]    Script Date: 6/8/2023 10:22:12 PM ******/
CREATE DATABASE [SibuDesigns]
 
ALTER DATABASE [SibuDesigns] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SibuDesigns] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SibuDesigns] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SibuDesigns] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SibuDesigns] SET ARITHABORT OFF 
GO
ALTER DATABASE [SibuDesigns] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SibuDesigns] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SibuDesigns] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SibuDesigns] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SibuDesigns] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SibuDesigns] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SibuDesigns] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SibuDesigns] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SibuDesigns] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SibuDesigns] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SibuDesigns] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SibuDesigns] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SibuDesigns] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SibuDesigns] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SibuDesigns] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SibuDesigns] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SibuDesigns] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SibuDesigns] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SibuDesigns] SET  MULTI_USER 
GO
ALTER DATABASE [SibuDesigns] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SibuDesigns] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SibuDesigns] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SibuDesigns] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SibuDesigns] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SibuDesigns] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SibuDesigns] SET QUERY_STORE = OFF
GO
USE [SibuDesigns]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CambiosInventario]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CambiosInventario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Idinventario] [int] NULL,
	[cantidadVieja] [int] NOT NULL,
	[cantidadNueva] [int] NOT NULL,
	[FechaModificado] [datetime] NOT NULL,
	[email] [varchar](190) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](25) NULL,
	[nombre] [varchar](25) NOT NULL,
	[primerApellido] [varchar](25) NOT NULL,
	[segundoApellido] [varchar](25) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[telefono] [varchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosOrden]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosOrden](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estadosOrdenesDecompra]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estadosOrdenesDecompra](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturasClientes]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturasClientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[numeroDeFactura] [varchar](80) NULL,
	[descripcion] [varchar](190) NULL,
	[monto] [decimal](18, 0) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[impuesto] [decimal](18, 0) NOT NULL,
	[IdOrden] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[idProducto] [int] NULL,
	[cantidad] [int] NOT NULL,
	[IdUnidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_in]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_in](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[contrasena] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
	[descuento] [decimal](18, 0) NULL,
	[fecha] [datetime] NOT NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenesDeCompra]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenesDeCompra](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProvedor] [int] NULL,
	[IdUsuario] [int] NULL,
	[fecha] [datetime] NOT NULL,
	[IdOrdenes] [int] NULL,
	[fechaVencimiento] [datetime] NOT NULL,
	[monto] [decimal](18, 0) NOT NULL,
	[numerodefactura] [varchar](125) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[descripcion] [varchar](2500) NULL,
	[precioUnitario] [decimal](18, 0) NOT NULL,
	[productoTerminado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductosEnOrden]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosEnOrden](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Idorden] [int] NULL,
	[IdProducto] [int] NULL,
	[cantidad] [int] NOT NULL,
	[precio] [decimal](18, 0) NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductosEnOrdenesDeCompra]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosEnOrdenesDeCompra](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[cantidad] [int] NOT NULL,
	[costo] [decimal](18, 0) NOT NULL,
	[IdOrdenesDeCompra] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provedor]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provedor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[email] [varchar](25) NOT NULL,
	[cedulaJuridica] [varchar](25) NOT NULL,
	[activo] [bit] NOT NULL,
	[dirreccion] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unidades]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioEmpresa]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioEmpresa](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](10) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[primerApellido] [varchar](25) NOT NULL,
	[segundoApellido] [varchar](25) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[telefono] [varchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuariosRoles]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[IdRol] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CambiosInventario]  WITH CHECK ADD FOREIGN KEY([Idinventario])
REFERENCES [dbo].[Inventario] ([Id])
GO
ALTER TABLE [dbo].[FacturasClientes]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[FacturasClientes]  WITH CHECK ADD FOREIGN KEY([IdOrden])
REFERENCES [dbo].[Orden] ([Id])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([IdUnidad])
REFERENCES [dbo].[Unidades] ([Id])
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[EstadosOrden] ([Id])
GO
ALTER TABLE [dbo].[OrdenesDeCompra]  WITH CHECK ADD FOREIGN KEY([IdOrdenes])
REFERENCES [dbo].[estadosOrdenesDecompra] ([Id])
GO
ALTER TABLE [dbo].[OrdenesDeCompra]  WITH CHECK ADD FOREIGN KEY([IdProvedor])
REFERENCES [dbo].[Provedor] ([Id])
GO
ALTER TABLE [dbo].[OrdenesDeCompra]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[UsuarioEmpresa] ([IdUsuario])
GO
ALTER TABLE [dbo].[ProductosEnOrden]  WITH CHECK ADD FOREIGN KEY([Idorden])
REFERENCES [dbo].[FacturasClientes] ([Id])
GO
ALTER TABLE [dbo].[ProductosEnOrden]  WITH CHECK ADD FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[ProductosEnOrdenesDeCompra]  WITH CHECK ADD FOREIGN KEY([IdOrdenesDeCompra])
REFERENCES [dbo].[OrdenesDeCompra] ([Id])
GO
ALTER TABLE [dbo].[ProductosEnOrdenesDeCompra]  WITH CHECK ADD FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[UsuariosRoles]  WITH CHECK ADD FOREIGN KEY([IdRol])
REFERENCES [dbo].[Roles] ([IdRol])
GO
ALTER TABLE [dbo].[UsuariosRoles]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[UsuarioEmpresa] ([IdUsuario])
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarUsuarios]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_RegistrarUsuarios](
@email varchar(100),
@contrasena varchar(50),
@Registrado bit output,
@Mensaje varchar(100) output
)
as
begin 
if(not exists(select * from log_in where email= @email))
begin 
insert into log_in(email,contrasena) values(@email,@contrasena)
set @Registrado = 1
set @Mensaje = 'Usuario Registrado'
end
else 
begin 
set @Registrado=0
set @Mensaje= 'Correo ya existente'
end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_validarUsuario]    Script Date: 6/8/2023 10:22:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_validarUsuario](
@email varchar(50),
@contrasena varchar(50)
)
as 
begin 
if(exists(select * from log_in where email = @email and contrasena = @contrasena))
select Id from log_in where email = @email and contrasena = @contrasena
else 
select '0'
end
GO
USE [master]
GO
ALTER DATABASE [SibuDesigns] SET  READ_WRITE 
GO
