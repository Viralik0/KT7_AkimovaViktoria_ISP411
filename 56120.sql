USE [master]
GO
/****** Object:  Database [MasterFloorDB]    Script Date: 12.11.2024 12:37:39 ******/
CREATE DATABASE [MasterFloorDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterFloorDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterFloorDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterFloorDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterFloorDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MasterFloorDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterFloorDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterFloorDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterFloorDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterFloorDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterFloorDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterFloorDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterFloorDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterFloorDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterFloorDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterFloorDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterFloorDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterFloorDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterFloorDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterFloorDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterFloorDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterFloorDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterFloorDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterFloorDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterFloorDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterFloorDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterFloorDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterFloorDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterFloorDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterFloorDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterFloorDB] SET  MULTI_USER 
GO
ALTER DATABASE [MasterFloorDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterFloorDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterFloorDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterFloorDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterFloorDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterFloorDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterFloorDB] SET QUERY_STORE = OFF
GO
USE [MasterFloorDB]
GO
/****** Object:  Table [dbo].[City]    Script Date: 12.11.2024 12:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comp]    Script Date: 12.11.2024 12:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Comp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_type_import]    Script Date: 12.11.2024 12:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_type_import](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MatType] [nvarchar](152) NOT NULL,
	[BrakMat] [decimal](6, 4) NOT NULL,
 CONSTRAINT [PK_Material_type_import_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Obl]    Script Date: 12.11.2024 12:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Obl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[OblName] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_Obl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner_products_import]    Script Date: 12.11.2024 12:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner_products_import](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[PartnerNameId] [int] NOT NULL,
	[KolProd] [int] NOT NULL,
	[DateB] [date] NOT NULL,
 CONSTRAINT [PK_Partner_products_import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners_import]    Script Date: 12.11.2024 12:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners_import](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PartnerType] [int] NOT NULL,
	[PartnerName] [nvarchar](152) NOT NULL,
	[Boss] [nvarchar](152) NOT NULL,
	[Email] [nvarchar](152) NOT NULL,
	[PhoneNum] [nvarchar](50) NOT NULL,
	[PartnerIndex] [int] NOT NULL,
	[OblId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[StreetId] [int] NOT NULL,
	[House] [int] NOT NULL,
	[INN] [int] NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_Partners_import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type_import]    Script Date: 12.11.2024 12:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type_import](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduct] [nvarchar](152) NOT NULL,
	[KofProd] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_Product_type_import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_import]    Script Date: 12.11.2024 12:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_import](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[ProductName] [nvarchar](152) NOT NULL,
	[Articul] [int] NOT NULL,
	[MinCost] [decimal](10, 5) NOT NULL,
 CONSTRAINT [PK_Products_import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 12.11.2024 12:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[StreetName] [nvarchar](152) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([id], [CityName]) VALUES (1, N' город Приморск')
INSERT [dbo].[City] ([id], [CityName]) VALUES (2, N' город Реутов')
INSERT [dbo].[City] ([id], [CityName]) VALUES (3, N' город Северодвинск')
INSERT [dbo].[City] ([id], [CityName]) VALUES (4, N' город Старый Оскол')
INSERT [dbo].[City] ([id], [CityName]) VALUES (5, N' город Юрга')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Comp] ON 

INSERT [dbo].[Comp] ([Id], [CompName]) VALUES (1, N'ЗАО')
INSERT [dbo].[Comp] ([Id], [CompName]) VALUES (2, N'ОАО')
INSERT [dbo].[Comp] ([Id], [CompName]) VALUES (3, N'ООО')
INSERT [dbo].[Comp] ([Id], [CompName]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[Comp] OFF
GO
SET IDENTITY_INSERT [dbo].[Material_type_import] ON 

INSERT [dbo].[Material_type_import] ([id], [MatType], [BrakMat]) VALUES (1, N'Тип материала 1', CAST(0.0010 AS Decimal(6, 4)))
INSERT [dbo].[Material_type_import] ([id], [MatType], [BrakMat]) VALUES (2, N'Тип материала 2', CAST(0.0095 AS Decimal(6, 4)))
INSERT [dbo].[Material_type_import] ([id], [MatType], [BrakMat]) VALUES (3, N'Тип материала 3', CAST(0.0028 AS Decimal(6, 4)))
INSERT [dbo].[Material_type_import] ([id], [MatType], [BrakMat]) VALUES (4, N'Тип материала 4', CAST(0.0055 AS Decimal(6, 4)))
INSERT [dbo].[Material_type_import] ([id], [MatType], [BrakMat]) VALUES (5, N'Тип материала 5', CAST(0.0034 AS Decimal(6, 4)))
SET IDENTITY_INSERT [dbo].[Material_type_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Obl] ON 

INSERT [dbo].[Obl] ([id], [OblName]) VALUES (1, N' Архангельская область')
INSERT [dbo].[Obl] ([id], [OblName]) VALUES (2, N' Белгородская область')
INSERT [dbo].[Obl] ([id], [OblName]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[Obl] ([id], [OblName]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[Obl] ([id], [OblName]) VALUES (5, N' Московская область')
SET IDENTITY_INSERT [dbo].[Obl] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_type_import] ON 

INSERT [dbo].[Product_type_import] ([id], [TypeProduct], [KofProd]) VALUES (1, N'Ламинат', CAST(2.35 AS Decimal(5, 2)))
INSERT [dbo].[Product_type_import] ([id], [TypeProduct], [KofProd]) VALUES (2, N'Массивная доска', CAST(5.15 AS Decimal(5, 2)))
INSERT [dbo].[Product_type_import] ([id], [TypeProduct], [KofProd]) VALUES (3, N'Паркетная доска', CAST(4.34 AS Decimal(5, 2)))
INSERT [dbo].[Product_type_import] ([id], [TypeProduct], [KofProd]) VALUES (4, N'Пробковое покрытие', CAST(1.50 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[Product_type_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Products_import] ON 

INSERT [dbo].[Products_import] ([id], [TypeId], [ProductName], [Articul], [MinCost]) VALUES (1, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 8858958, CAST(7330.99000 AS Decimal(10, 5)))
INSERT [dbo].[Products_import] ([id], [TypeId], [ProductName], [Articul], [MinCost]) VALUES (2, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 7750282, CAST(1799.33000 AS Decimal(10, 5)))
INSERT [dbo].[Products_import] ([id], [TypeId], [ProductName], [Articul], [MinCost]) VALUES (3, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 7028748, CAST(3890.41000 AS Decimal(10, 5)))
INSERT [dbo].[Products_import] ([id], [TypeId], [ProductName], [Articul], [MinCost]) VALUES (4, 3, N'Паркетная доска Ясень темный однополосная 14 мм', 8758385, CAST(4456.90000 AS Decimal(10, 5)))
INSERT [dbo].[Products_import] ([id], [TypeId], [ProductName], [Articul], [MinCost]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 5012543, CAST(5450.59000 AS Decimal(10, 5)))
SET IDENTITY_INSERT [dbo].[Products_import] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([id], [StreetName]) VALUES (1, N' ул. Лесная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (2, N' ул. Парковая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (3, N' ул. Рабочая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (4, N' ул. Свободы')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (5, N' ул. Строителей')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Partners_import] FOREIGN KEY([PartnerNameId])
REFERENCES [dbo].[Partners_import] ([id])
GO
ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Partners_import]
GO
ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Products_import] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products_import] ([id])
GO
ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Products_import]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_City]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Comp] FOREIGN KEY([PartnerType])
REFERENCES [dbo].[Comp] ([Id])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_Comp]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Obl] FOREIGN KEY([OblId])
REFERENCES [dbo].[Obl] ([id])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_Obl]
GO
ALTER TABLE [dbo].[Partners_import]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Street] FOREIGN KEY([StreetId])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Partners_import] CHECK CONSTRAINT [FK_Partners_import_Street]
GO
ALTER TABLE [dbo].[Products_import]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Product_type_import] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Product_type_import] ([id])
GO
ALTER TABLE [dbo].[Products_import] CHECK CONSTRAINT [FK_Products_import_Product_type_import]
GO
USE [master]
GO
ALTER DATABASE [MasterFloorDB] SET  READ_WRITE 
GO
