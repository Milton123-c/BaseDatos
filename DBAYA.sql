USE [master]
GO
/****** Object:  Database [DBAYA]    Script Date: 26/11/2022 09:02:39:PM ******/
CREATE DATABASE [DBAYA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBAYA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBAYA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBAYA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBAYA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBAYA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBAYA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBAYA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBAYA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBAYA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBAYA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBAYA] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBAYA] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBAYA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBAYA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBAYA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBAYA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBAYA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBAYA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBAYA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBAYA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBAYA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBAYA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBAYA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBAYA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBAYA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBAYA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBAYA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBAYA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBAYA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBAYA] SET  MULTI_USER 
GO
ALTER DATABASE [DBAYA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBAYA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBAYA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBAYA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBAYA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBAYA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBAYA] SET QUERY_STORE = OFF
GO
USE [DBAYA]
GO
/****** Object:  Table [dbo].[tb_abonados]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_abonados](
	[id] [int] NOT NULL,
	[ragoAbonado] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ADMIN]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ADMIN](
	[ID_ADMIN] [int] NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
	[APELLIDOS] [varchar](50) NOT NULL,
	[CEDULA] [varchar](20) NULL,
	[TELEFONO_1] [varchar](13) NULL,
	[TELEFONO_2] [varchar](13) NULL,
	[CELULAR] [varchar](13) NULL,
	[DIRECCION] [text] NULL,
	[PROVINCIA] [varchar](50) NOT NULL,
	[CANTON] [varchar](50) NOT NULL,
	[DISTRITO] [varchar](50) NOT NULL,
	[CORREO] [varchar](100) NULL,
	[CONTRA] [varchar](20) NOT NULL,
	[STATU] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ADMIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_bloqueConsumo]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bloqueConsumo](
	[id] [int] NOT NULL,
	[bloqueUno] [varchar](10) NULL,
	[bloqueDos] [varchar](10) NULL,
	[bloqueTres] [varchar](10) NULL,
	[bloqueCuatro] [varchar](11) NULL,
	[id_abonados] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CARGOS]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CARGOS](
	[ID_CARGOS] [int] NOT NULL,
	[TARIFA_BASE] [smallmoney] NOT NULL,
	[MONTO_M3] [smallmoney] NOT NULL,
	[OTROS_CARGOS] [smallmoney] NULL,
	[HIDRANTES] [smallmoney] NOT NULL,
	[MORA] [smallmoney] NULL,
	[CARGO_ADMINISTRATIVO] [smallmoney] NULL,
	[CORTA_RECONEXION] [smallmoney] NULL,
	[IVA] [smallmoney] NULL,
	[NOTA_CREDITO] [smallmoney] NULL,
	[TOTAL] [smallmoney] NOT NULL,
	[SALDO_ARREGLO] [smallmoney] NULL,
	[PAGADO_EN] [varchar](50) NULL,
	[N_DOCUMENTO] [int] NULL,
	[TARIFA] [varchar](15) NULL,
	[CANCELA] [bit] NULL,
	[ID_USER] [int] NULL,
	[TIPO_ABONADOS] [int] NULL,
	[SISTEMA] [varchar](22) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CARGOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_categoriaTarifa]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_categoriaTarifa](
	[id] [int] NOT NULL,
	[servicioFijo] [smallmoney] NULL,
	[cargoFijo] [smallmoney] NULL,
	[tarifa] [varchar](7) NULL,
	[sistema] [varchar](22) NULL,
	[id_abonados] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Codigo]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Codigo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](20) NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_DEMIPRE]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DEMIPRE](
	[ID_DEMIPRE] [int] NOT NULL,
	[RANGO_ABONADOS] [varchar](15) NOT NULL,
	[CARGO_FIJO] [smallmoney] NOT NULL,
	[D1_10] [smallmoney] NOT NULL,
	[D11_30] [smallmoney] NOT NULL,
	[D31_60] [smallmoney] NOT NULL,
	[MAS_DE_60] [smallmoney] NOT NULL,
	[TARIFA_FIJA] [smallmoney] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DEMIPRE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_EMPREGO]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_EMPREGO](
	[ID_EMPREGO] [int] NOT NULL,
	[RANGO_ABONADOS] [varchar](15) NOT NULL,
	[CARGO_FIJO] [smallmoney] NOT NULL,
	[D1_10] [smallmoney] NOT NULL,
	[D11_30] [smallmoney] NOT NULL,
	[D31_60] [smallmoney] NOT NULL,
	[MAS_DE_60] [smallmoney] NOT NULL,
	[TARIFA_FIJA] [smallmoney] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_EMPREGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_HISTORIA_CONSUMO]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_HISTORIA_CONSUMO](
	[ID_HISTORIA] [int] NOT NULL,
	[HISTORICO] [varchar](20) NULL,
	[CONSUMO] [int] NULL,
	[RANGOS_TARIFA] [text] NULL,
	[ID_USER] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_HISTORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_MEDIDOR]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_MEDIDOR](
	[ID_MEDIDOR] [int] NOT NULL,
	[DOMIPRE] [bit] NOT NULL,
	[EMPREGO] [bit] NOT NULL,
	[NUMERO_MEDIDOR] [varchar](50) NOT NULL,
	[ANTERIOR] [int] NOT NULL,
	[ACTUAL] [int] NOT NULL,
	[MT3] [int] NOT NULL,
	[ID_USER] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_MEDIDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_MES_COBRO]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_MES_COBRO](
	[ID_COBRO] [int] NOT NULL,
	[MES] [varchar](20) NULL,
	[FECHA] [date] NULL,
	[ID_USER] [int] NULL,
	[N_DOCUMENTO] [int] NULL,
	[FECHA_VENCE] [date] NULL,
	[DIA_VENCIDO] [int] NULL,
	[VENCIDO] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_COBRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_RESIDENCIA]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_RESIDENCIA](
	[ID_RESIDENCIA] [int] NOT NULL,
	[NUMERO_CASA] [varchar](10) NULL,
	[DIRECCION] [text] NOT NULL,
	[COLOR] [varchar](10) NULL,
	[PROVINCIA] [varchar](50) NOT NULL,
	[CANTON] [varchar](50) NOT NULL,
	[DISTRITO] [varchar](50) NOT NULL,
	[ID_USER] [int] NULL,
	[BARRIO] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_RESIDENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_servicioHidrantes]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_servicioHidrantes](
	[id] [int] NOT NULL,
	[tarifaMedida] [int] NULL,
	[tarifaFija] [int] NULL,
	[id_abonados] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_tarifa]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_tarifa](
	[id] [int] NOT NULL,
	[tipoSistema] [varchar](25) NULL,
	[categoriaTarifa] [varchar](8) NULL,
	[tarifaUno] [int] NULL,
	[tarifaDos] [int] NULL,
	[tarifaTres] [int] NULL,
	[tarifaCuatro] [int] NULL,
	[id_abonados] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_USER]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_USER](
	[ID_USER] [int] NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
	[APELLIDOS] [varchar](50) NOT NULL,
	[CEDULA] [varchar](20) NULL,
	[TELEFONO_1] [varchar](13) NULL,
	[TELEFONO_2] [varchar](13) NULL,
	[CELULAR] [varchar](13) NULL,
	[CORREO] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_USER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_abonados] ([id], [ragoAbonado]) VALUES (1, N'1 a 50')
GO
INSERT [dbo].[tb_abonados] ([id], [ragoAbonado]) VALUES (2, N'51 a 100')
GO
INSERT [dbo].[tb_abonados] ([id], [ragoAbonado]) VALUES (3, N'101 a 150')
GO
INSERT [dbo].[tb_abonados] ([id], [ragoAbonado]) VALUES (4, N'151 a 300')
GO
INSERT [dbo].[tb_abonados] ([id], [ragoAbonado]) VALUES (5, N'301 a 500')
GO
INSERT [dbo].[tb_abonados] ([id], [ragoAbonado]) VALUES (6, N'501 a 1000')
GO
INSERT [dbo].[tb_abonados] ([id], [ragoAbonado]) VALUES (7, N'Más de 1000')
GO
INSERT [dbo].[TB_ADMIN] ([ID_ADMIN], [NOMBRE], [APELLIDOS], [CEDULA], [TELEFONO_1], [TELEFONO_2], [CELULAR], [DIRECCION], [PROVINCIA], [CANTON], [DISTRITO], [CORREO], [CONTRA], [STATU]) VALUES (0, N'Milton David', N'GAGO MERCADO', N'155830255611', N'70829179', N'71802910', N'70829179', N'DEL CEMENTERIO DEL SILENCIO 170 MTS AL NORTE 50 MTS AL OESTE CASA COLOR CELESTE', N'GUANACASTE', N'HOJANCHA', N'San Rafael', N'miltonmercado92@gmail.com', N'milt1234', 0)
GO
INSERT [dbo].[TB_ADMIN] ([ID_ADMIN], [NOMBRE], [APELLIDOS], [CEDULA], [TELEFONO_1], [TELEFONO_2], [CELULAR], [DIRECCION], [PROVINCIA], [CANTON], [DISTRITO], [CORREO], [CONTRA], [STATU]) VALUES (2, N'Guillermo Jose', N'Henrriquez', N'52892982', N'8998592', N'9898689', N'14818986', N'DEL CEMENTERIO DEL SILENCIO 170 MTS AL NORTE 50 MTS AL OESTE CASA COLOR CELESTE', N'ALAJUELA', N'LOSCHILES', N'San Rafael', N'josehenrriquez@gmail.com', N'jose1234', 0)
GO
INSERT [dbo].[tb_bloqueConsumo] ([id], [bloqueUno], [bloqueDos], [bloqueTres], [bloqueCuatro], [id_abonados]) VALUES (1, N'1 a 10', N'11 a 30', N'31 a 60', N'Más de 60', 1)
GO
INSERT [dbo].[TB_CARGOS] ([ID_CARGOS], [TARIFA_BASE], [MONTO_M3], [OTROS_CARGOS], [HIDRANTES], [MORA], [CARGO_ADMINISTRATIVO], [CORTA_RECONEXION], [IVA], [NOTA_CREDITO], [TOTAL], [SALDO_ARREGLO], [PAGADO_EN], [N_DOCUMENTO], [TARIFA], [CANCELA], [ID_USER], [TIPO_ABONADOS], [SISTEMA]) VALUES (1, 2096.0000, 3192.0000, 0.0000, 546.0000, 0.0000, 0.0000, 0.0000, 0.5000, 0.0000, 8751.0000, 0.0000, N'Banco', 1, N'Domipre', 0, 1, 7, N'Gravedad')
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (1, 12.6540, 3409.0000, N'Domipre', N'Bombeo y Mixto', 1)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (2, 51.4170, 3409.0000, N'Emprego', N'Bombeo y Mixto', 1)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (3, 10.5880, 2954.0000, N'Domipre', N'Gravedad', 1)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (4, 43.0240, 2954.0000, N'Emprego', N'Gravedad', 1)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (5, 7.8920, 3805.0000, N'Domipre', N'Planta potabilizadora', 1)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (6, 32.0680, 3805.0000, N'Emprego', N'Planta potabilizadora', 1)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (7, 11.5200, 3398.0000, N'Domipre', N'Bombeo y Mixto', 2)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (8, 46.8100, 3398.0000, N'Emprego', N'Bombeo y Mixto', 2)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (9, 10.0140, 2755.0000, N'Domipre', N'Gravedad', 2)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (10, 40.6890, 2755.0000, N'Emprego', N'Gravedad', 2)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (11, 7.8920, 3805.0000, N'Domipre', N'Planta potabilizadora', 2)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (12, 32.0680, 3805.0000, N'Emprego', N'Planta potabilizadora', 2)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (13, 9.1220, 3384.0000, N'Domipre', N'Bombeo y Mixto', 3)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (14, 37.0670, 3384.0000, N'Emprego', N'Bombeo y Mixto', 3)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (15, 8.4400, 2650.0000, N'Domipre', N'Gravedad', 3)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (16, 34.2940, 2650.0000, N'Emprego', N'Gravedad', 3)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (17, 7.8920, 3805.0000, N'Domipre', N'Planta potabilizadora', 3)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (18, 32.0680, 3805.0000, N'Emprego', N'Planta potabilizadora', 3)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (19, 8.6650, 3360.0000, N'Domipre', N'Bombeo y Mixto', 4)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (20, 35.2090, 3360.0000, N'Emprego', N'Bombeo y Mixto', 4)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (21, 8.3830, 2528.0000, N'Domipre', N'Gravedad', 4)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (22, 34.0630, 2528.0000, N'Emprego', N'Gravedad', 4)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (23, 7.8920, 3805.0000, N'Domipre', N'Planta potabilizadora', 4)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (24, 32.0680, 3805.0000, N'Emprego', N'Planta potabilizadora', 4)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (25, 6.6660, 3312.0000, N'Domipre', N'Bombeo y Mixto', 5)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (26, 27.0870, 3312.0000, N'Emprego', N'Bombeo y Mixto', 5)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (27, 6.5930, 2393.0000, N'Domipre', N'Gravedad', 5)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (28, 26.7910, 2393.0000, N'Emprego', N'Gravedad', 5)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (29, 7.8920, 3805.0000, N'Domipre', N'Planta potabilizadora', 5)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (30, 32.0680, 3805.0000, N'Emprego', N'Planta potabilizadora', 5)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (31, 6.6540, 3233.0000, N'Domipre', N'Bombeo y Mixto', 6)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (32, 27.0360, 3233.0000, N'Emprego', N'Bombeo y Mixto', 6)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (33, 6.5510, 2287.0000, N'Domipre', N'Gravedad', 6)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (34, 26.6180, 2287.0000, N'Emprego', N'Gravedad', 6)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (35, 7.8920, 3805.0000, N'Domipre', N'Planta potabilizadora', 6)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (36, 32.0680, 3805.0000, N'Emprego', N'Planta potabilizadora', 6)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (37, 4.3120, 2883.0000, N'Domipre', N'Bombeo y Mixto', 7)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (38, 17.5190, 2883.0000, N'Emprego', N'Bombeo y Mixto', 7)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (39, 4.4750, 2096.0000, N'Domipre', N'Gravedad', 7)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (40, 18.1830, 2096.0000, N'Emprego', N'Gravedad', 7)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (41, 7.8920, 3805.0000, N'Domipre', N'Planta potabilizadora', 7)
GO
INSERT [dbo].[tb_categoriaTarifa] ([id], [servicioFijo], [cargoFijo], [tarifa], [sistema], [id_abonados]) VALUES (42, 32.0680, 3805.0000, N'Emprego', N'Planta potabilizadora', 7)
GO
SET IDENTITY_INSERT [dbo].[tb_Codigo] ON 
GO
INSERT [dbo].[tb_Codigo] ([id], [codigo], [estado]) VALUES (1, N'bn123', 0)
GO
SET IDENTITY_INSERT [dbo].[tb_Codigo] OFF
GO
INSERT [dbo].[TB_DEMIPRE] ([ID_DEMIPRE], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (1, N'1 A 50', 2.9540, 333.0000, 383.0000, 479.0000, 719.0000, 10.5880)
GO
INSERT [dbo].[TB_DEMIPRE] ([ID_DEMIPRE], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (2, N'51 A 100', 2.7550, 315.0000, 363.0000, 453.0000, 680.0000, 10.0140)
GO
INSERT [dbo].[TB_DEMIPRE] ([ID_DEMIPRE], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (3, N'101 A 150', 2.6500, 266.0000, 306.0000, 382.0000, 573.0000, 8.4400)
GO
INSERT [dbo].[TB_DEMIPRE] ([ID_DEMIPRE], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (4, N'151 A 300', 2.5280, 264.0000, 304.0000, 379.0000, 569.0000, 8.3830)
GO
INSERT [dbo].[TB_DEMIPRE] ([ID_DEMIPRE], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (5, N'301 A 500', 2.3930, 208.0000, 239.0000, 298.0000, 448.0000, 6.5930)
GO
INSERT [dbo].[TB_DEMIPRE] ([ID_DEMIPRE], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (6, N'501 A 1000', 2.2870, 206.0000, 237.0000, 296.0000, 445.0000, 6.5510)
GO
INSERT [dbo].[TB_DEMIPRE] ([ID_DEMIPRE], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (7, N'MAS DE 1001', 2.0960, 141.0000, 162.0000, 203.0000, 304.0000, 4.4750)
GO
INSERT [dbo].[TB_EMPREGO] ([ID_EMPREGO], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (1, N'1 A 50', 2.9540, 500.0000, 575.0000, 719.0000, 719.0000, 43.0240)
GO
INSERT [dbo].[TB_EMPREGO] ([ID_EMPREGO], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (2, N'51 A 100', 2.7550, 473.0000, 544.0000, 680.0000, 680.0000, 40.6890)
GO
INSERT [dbo].[TB_EMPREGO] ([ID_EMPREGO], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (3, N'101 A 150', 2.6500, 399.0000, 458.0000, 573.0000, 573.0000, 34.2940)
GO
INSERT [dbo].[TB_EMPREGO] ([ID_EMPREGO], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (4, N'151 A 300', 2.5280, 396.0000, 455.0000, 569.0000, 569.0000, 34.0630)
GO
INSERT [dbo].[TB_EMPREGO] ([ID_EMPREGO], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (5, N'301 A 500', 2.3930, 311.0000, 358.0000, 448.0000, 448.0000, 26.7910)
GO
INSERT [dbo].[TB_EMPREGO] ([ID_EMPREGO], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (6, N'501 A 1000', 2.2870, 309.0000, 356.0000, 445.0000, 445.0000, 26.6180)
GO
INSERT [dbo].[TB_EMPREGO] ([ID_EMPREGO], [RANGO_ABONADOS], [CARGO_FIJO], [D1_10], [D11_30], [D31_60], [MAS_DE_60], [TARIFA_FIJA]) VALUES (7, N'MAS DE 1001', 2.0960, 211.0000, 243.0000, 304.0000, 304.0000, 18.1830)
GO
INSERT [dbo].[TB_MEDIDOR] ([ID_MEDIDOR], [DOMIPRE], [EMPREGO], [NUMERO_MEDIDOR], [ANTERIOR], [ACTUAL], [MT3], [ID_USER]) VALUES (1, 0, 1, N'21243', 795, 816, 21, 1)
GO
INSERT [dbo].[TB_MES_COBRO] ([ID_COBRO], [MES], [FECHA], [ID_USER], [N_DOCUMENTO], [FECHA_VENCE], [DIA_VENCIDO], [VENCIDO]) VALUES (1, N'Noviembre', CAST(N'2022-11-19' AS Date), 1, 1, CAST(N'2022-11-24' AS Date), 0, 0)
GO
INSERT [dbo].[TB_RESIDENCIA] ([ID_RESIDENCIA], [NUMERO_CASA], [DIRECCION], [COLOR], [PROVINCIA], [CANTON], [DISTRITO], [ID_USER], [BARRIO]) VALUES (1, N'25', N'Del cementerio del Silencio 170 mts al norte 50 mts al oeste ', N'CELESTE', N'ALAJUELA', N'GUATUSO', N'San Rafael', 1, N'Silencio')
GO
INSERT [dbo].[tb_servicioHidrantes] ([id], [tarifaMedida], [tarifaFija], [id_abonados]) VALUES (1, 26, 555, 1)
GO
INSERT [dbo].[tb_servicioHidrantes] ([id], [tarifaMedida], [tarifaFija], [id_abonados]) VALUES (2, 26, 555, 2)
GO
INSERT [dbo].[tb_servicioHidrantes] ([id], [tarifaMedida], [tarifaFija], [id_abonados]) VALUES (3, 26, 555, 3)
GO
INSERT [dbo].[tb_servicioHidrantes] ([id], [tarifaMedida], [tarifaFija], [id_abonados]) VALUES (4, 26, 555, 4)
GO
INSERT [dbo].[tb_servicioHidrantes] ([id], [tarifaMedida], [tarifaFija], [id_abonados]) VALUES (5, 26, 555, 5)
GO
INSERT [dbo].[tb_servicioHidrantes] ([id], [tarifaMedida], [tarifaFija], [id_abonados]) VALUES (6, 26, 555, 6)
GO
INSERT [dbo].[tb_servicioHidrantes] ([id], [tarifaMedida], [tarifaFija], [id_abonados]) VALUES (7, 26, 555, 7)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (1, N'Bombeo y Mixto', N'Domipre', 398, 458, 573, 859, 1)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (2, N'Bombeo y Mixto', N'Emprego', 598, 687, 859, 859, 1)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (3, N'Gravedad', N'Domipre', 333, 383, 479, 719, 1)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (4, N'Gravedad', N'Emprego', 500, 575, 719, 719, 1)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (5, N'Planta Potabilizadora', N'Domipre', 248, 286, 357, 536, 1)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (6, N'Planta Potabilizadora', N'Emprego', 373, 429, 536, 536, 1)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (7, N'Bombeo y Mixto', N'Domipre', 363, 417, 521, 782, 2)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (8, N'Bombeo y Mixto', N'Emprego', 544, 626, 782, 782, 2)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (9, N'Gravedad', N'Domipre', 315, 363, 453, 680, 2)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (10, N'Gravedad', N'Emprego', 473, 544, 680, 680, 2)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (11, N'Planta Potabilizadora', N'Domipre', 248, 286, 357, 536, 2)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (12, N'Planta Potabilizadora', N'Emprego', 373, 429, 536, 536, 2)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (13, N'Bombeo y Mixto', N'Domipre', 287, 330, 413, 619, 3)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (14, N'Bombeo y Mixto', N'Emprego', 431, 495, 619, 619, 3)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (15, N'Gravedad', N'Domipre', 266, 306, 382, 573, 3)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (16, N'Gravedad', N'Emprego', 399, 458, 573, 573, 3)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (17, N'Planta Potabilizadora', N'Domipre', 248, 286, 357, 536, 3)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (18, N'Planta Potabilizadora', N'Emprego', 373, 429, 536, 536, 3)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (19, N'Bombeo y Mixto', N'Domipre', 273, 314, 392, 588, 4)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (20, N'Bombeo y Mixto', N'Emprego', 409, 471, 588, 588, 4)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (21, N'Gravedad', N'Domipre', 264, 304, 379, 569, 4)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (22, N'Gravedad', N'Emprego', 396, 455, 569, 569, 4)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (23, N'Planta Potabilizadora', N'Domipre', 248, 286, 357, 536, 4)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (24, N'Planta Potabilizadora', N'Emprego', 373, 429, 536, 536, 4)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (25, N'Bombeo y Mixto', N'Domipre', 210, 241, 302, 453, 5)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (26, N'Bombeo y Mixto', N'Emprego', 315, 362, 453, 453, 5)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (27, N'Gravedad', N'Domipre', 208, 239, 298, 448, 5)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (28, N'Gravedad', N'Emprego', 311, 358, 448, 448, 5)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (29, N'Planta Potabilizadora', N'Domipre', 248, 286, 357, 536, 5)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (30, N'Planta Potabilizadora', N'Emprego', 373, 429, 536, 536, 5)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (31, N'Bombeo y Mixto', N'Domipre', 209, 241, 301, 452, 6)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (32, N'Bombeo y Mixto', N'Emprego', 314, 361, 452, 452, 6)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (33, N'Gravedad', N'Domipre', 206, 237, 296, 445, 6)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (34, N'Gravedad', N'Emprego', 309, 356, 445, 445, 6)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (35, N'Planta Potabilizadora', N'Domipre', 248, 286, 357, 536, 6)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (36, N'Planta Potabilizadora', N'Emprego', 373, 429, 536, 536, 6)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (38, N'Bombeo y Mixto', N'Domipre', 136, 151, 195, 293, 7)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (39, N'Bombeo y Mixto', N'Emprego', 204, 234, 293, 293, 7)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (40, N'Gravedad', N'Domipre', 141, 162, 203, 304, 7)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (41, N'Gravedad', N'Emprego', 211, 243, 304, 304, 7)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (142, N'Planta Potabilizadora', N'Domipre', 248, 286, 357, 536, 7)
GO
INSERT [dbo].[tb_tarifa] ([id], [tipoSistema], [categoriaTarifa], [tarifaUno], [tarifaDos], [tarifaTres], [tarifaCuatro], [id_abonados]) VALUES (143, N'Planta Potabilizadora', N'Emprego', 373, 429, 536, 536, 7)
GO
INSERT [dbo].[TB_USER] ([ID_USER], [NOMBRE], [APELLIDOS], [CEDULA], [TELEFONO_1], [TELEFONO_2], [CELULAR], [CORREO]) VALUES (1, N'Milton Jose', N'Gago Mercado', N'155830255611', N'71802910', N'70451147', N'70829179', N'miltonmercado92@gmail.com')
GO
ALTER TABLE [dbo].[tb_bloqueConsumo]  WITH CHECK ADD  CONSTRAINT [pk_id_abonados] FOREIGN KEY([id_abonados])
REFERENCES [dbo].[tb_abonados] ([id])
GO
ALTER TABLE [dbo].[tb_bloqueConsumo] CHECK CONSTRAINT [pk_id_abonados]
GO
ALTER TABLE [dbo].[tb_categoriaTarifa]  WITH CHECK ADD  CONSTRAINT [pk_idCategoria] FOREIGN KEY([id_abonados])
REFERENCES [dbo].[tb_abonados] ([id])
GO
ALTER TABLE [dbo].[tb_categoriaTarifa] CHECK CONSTRAINT [pk_idCategoria]
GO
ALTER TABLE [dbo].[TB_MES_COBRO]  WITH CHECK ADD  CONSTRAINT [PK_USER] FOREIGN KEY([ID_USER])
REFERENCES [dbo].[TB_USER] ([ID_USER])
GO
ALTER TABLE [dbo].[TB_MES_COBRO] CHECK CONSTRAINT [PK_USER]
GO
ALTER TABLE [dbo].[tb_servicioHidrantes]  WITH CHECK ADD  CONSTRAINT [pk_idHidrantes] FOREIGN KEY([id_abonados])
REFERENCES [dbo].[tb_abonados] ([id])
GO
ALTER TABLE [dbo].[tb_servicioHidrantes] CHECK CONSTRAINT [pk_idHidrantes]
GO
ALTER TABLE [dbo].[tb_tarifa]  WITH CHECK ADD  CONSTRAINT [pk_idTarifa] FOREIGN KEY([id_abonados])
REFERENCES [dbo].[tb_abonados] ([id])
GO
ALTER TABLE [dbo].[tb_tarifa] CHECK CONSTRAINT [pk_idTarifa]
GO
/****** Object:  StoredProcedure [dbo].[Eliminar]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eliminar]
    @IdMenu int
AS
BEGIN
    DELETE from TB_USER WHERE ID_USER = @IdMenu;
END
GO
/****** Object:  StoredProcedure [dbo].[GUARDAR]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GUARDAR](
			@INCREMENTO INT,
			 @NOMBRE VARCHAR(50),
			@APELLIDOS VARCHAR(50),
			@CEDULA VARCHAR(20),
			@TELEFONO_1 VARCHAR(13),
			@TELEFONO_2 VARCHAR(13),
			@CELULAR VARCHAR(13),
			@CORREO VARCHAR(100),

			@DOMIPRE BIT,
			@EMPREGO BIT,
			@NUMERO_MEDIDOR VARCHAR(50) ,
			@ANTERIOR INT ,
			@ACTUAL INT ,
			@MT3 INT ,

			@NUMERO_CASA VARCHAR(10),
			@DIRECCION TEXT ,
			@COLOR VARCHAR(10),
			@PROVINCIA VARCHAR(50) ,
			@CANTON VARCHAR(50) ,
			@DISTRITO VARCHAR(50) 
	
)
AS
SET @INCREMENTO	= (SELECT MAX(ID_USER) FROM TB_USER)
IF @INCREMENTO IS NULL

	BEGIN
		INSERT INTO TB_USER(ID_USER,NOMBRE,APELLIDOS,CEDULA,TELEFONO_1,TELEFONO_2,CELULAR,CORREO)
		VALUES (1,@NOMBRE, @APELLIDOS, @CEDULA, @TELEFONO_1, @TELEFONO_2, @CELULAR, @CORREO);

		INSERT INTO TB_MEDIDOR(ID_MEDIDOR, DOMIPRE, EMPREGO, NUMERO_MEDIDOR, ANTERIOR, ACTUAL,MT3,ID_USER)
		VALUES (1,@DOMIPRE,@EMPREGO, @NUMERO_MEDIDOR, @ANTERIOR, @ACTUAL, @MT3 ,1);

		INSERT INTO TB_RESIDENCIA(ID_RESIDENCIA, NUMERO_CASA, DIRECCION,COLOR, PROVINCIA,CANTON,DISTRITO,ID_USER)
		VALUES(1, @NUMERO_CASA, @DIRECCION, @COLOR , @PROVINCIA, @CANTON, @DISTRITO, 1);
  	
	END
ELSE

	
	BEGIN
		set @INCREMENTO = (SELECT MAX(ID_USER) FROM TB_USER) + 1
		
		 INSERT INTO TB_USER(ID_USER,NOMBRE,APELLIDOS,CEDULA,TELEFONO_1,TELEFONO_2,CELULAR,CORREO)
		VALUES (@INCREMENTO ,@NOMBRE, @APELLIDOS, @CEDULA, @TELEFONO_1, @TELEFONO_2, @CELULAR, @CORREO);

		INSERT INTO TB_MEDIDOR(ID_MEDIDOR, DOMIPRE, EMPREGO, NUMERO_MEDIDOR, ANTERIOR, ACTUAL,MT3,ID_USER)
		VALUES (@INCREMENTO ,@DOMIPRE,@EMPREGO, @NUMERO_MEDIDOR, @ANTERIOR, @ACTUAL, @MT3 , @INCREMENTO);

		INSERT INTO TB_RESIDENCIA(ID_RESIDENCIA, NUMERO_CASA, DIRECCION,COLOR, PROVINCIA,CANTON,DISTRITO,ID_USER)
		VALUES(@INCREMENTO , @NUMERO_CASA, @DIRECCION, @COLOR , @PROVINCIA, @CANTON, @DISTRITO, @INCREMENTO);
  	
	END

GO
/****** Object:  StoredProcedure [dbo].[PA_USER_BUSCAR]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Buscador de sql 
CREATE PROCEDURE [dbo].[PA_USER_BUSCAR](

@CAMPO INT,
@CRITERIO VARCHAR(50)

)
AS
IF @CAMPO = 0
BEGIN
SELECT ID_USER, NOMBRE, APELLIDOS
FROM TB_USER WHERE NOMBRE LIKE @CRITERIO + '%'
END
IF @CAMPO = 1
BEGIN 
SELECT ID_USER, NOMBRE, APELLIDOS
FROM TB_USER WHERE APELLIDOS LIKE @CRITERIO + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[TB_ACTUALIZAR1]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

			  		 --Procedmiento para actualizar campos 
CREATE PROCEDURE [dbo].[TB_ACTUALIZAR1](
		  @ID  INT,
		  @NOMBRE VARCHAR(50),
			@APELLIDOS VARCHAR(50),
			@CEDULA VARCHAR(20),
			@TELEFONO_1 VARCHAR(13),
			@TELEFONO_2 VARCHAR(13),
			@CELULAR VARCHAR(13),
			@CORREO VARCHAR(100),

			@DOMIPRE BIT,
			@EMPREGO BIT,
			@NUMERO_MEDIDOR VARCHAR(50) ,
			@ANTERIOR INT ,
			@ACTUAL INT ,
			@MT3 INT ,

			@NUMERO_CASA VARCHAR(10),
			@DIRECCION TEXT ,
			@COLOR VARCHAR(10),
			@PROVINCIA VARCHAR(50) ,
			@CANTON VARCHAR(50) ,
			@DISTRITO VARCHAR(50) 
			
			
)
AS
BEGIN
UPDATE TB_USER SET NOMBRE = @NOMBRE, APELLIDOS = @APELLIDOS, CEDULA = @CEDULA, TELEFONO_1 = @TELEFONO_1, TELEFONO_2 = @TELEFONO_2, CELULAR = @CELULAR, CORREO = @CORREO WHERE ID_USER = @ID;
END
BEGIN 
UPDATE TB_MEDIDOR SET DOMIPRE = @DOMIPRE, EMPREGO = @EMPREGO, NUMERO_MEDIDOR = @NUMERO_MEDIDOR, ANTERIOR = @ANTERIOR, ACTUAL = @ACTUAL, MT3 = @MT3;
END
BEGIN 
UPDATE TB_RESIDENCIA SET NUMERO_CASA = @NUMERO_CASA, DIRECCION = @DIRECCION, COLOR = @COLOR, PROVINCIA = @PROVINCIA, CANTON = @CANTON, DISTRITO = @DISTRITO;
END
GO
/****** Object:  StoredProcedure [dbo].[TB_ELIMINAR1]    Script Date: 26/11/2022 09:02:40:PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TB_ELIMINAR1](
	@BANDERA INT
)
AS
BEGIN
DELETE FROM TB_USER WHERE ID_USER = @BANDERA 
END
BEGIN
DELETE FROM TB_RESIDENCIA WHERE ID_RESIDENCIA = @BANDERA
END
BEGIN
DELETE FROM TB_MEDIDOR WHERE ID_MEDIDOR = @BANDERA
END
GO
USE [master]
GO
ALTER DATABASE [DBAYA] SET  READ_WRITE 
GO
