USE [master]
GO
/****** Object:  Database [KT_7_MasterPo]    Script Date: 11.11.2024 16:33:11 ******/
CREATE DATABASE [KT_7_MasterPo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KT_7_MasterPo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\KT_7_MasterPo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KT_7_MasterPo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\KT_7_MasterPo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KT_7_MasterPo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KT_7_MasterPo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KT_7_MasterPo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET ARITHABORT OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KT_7_MasterPo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KT_7_MasterPo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KT_7_MasterPo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KT_7_MasterPo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET RECOVERY FULL 
GO
ALTER DATABASE [KT_7_MasterPo] SET  MULTI_USER 
GO
ALTER DATABASE [KT_7_MasterPo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KT_7_MasterPo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KT_7_MasterPo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KT_7_MasterPo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KT_7_MasterPo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KT_7_MasterPo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KT_7_MasterPo', N'ON'
GO
ALTER DATABASE [KT_7_MasterPo] SET QUERY_STORE = OFF
GO
USE [KT_7_MasterPo]
GO
/****** Object:  Table [dbo].[AdressCity]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressCity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_AdressCity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdressIndex]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressIndex](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_AdressIndex] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdressRegion]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressRegion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_AdressRegion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdressStreet]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressStreet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_AdressStreet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyName]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyName](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_CompanyName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyType]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_CompanyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[faultPercent] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[partnerId] [int] NOT NULL,
	[count] [nvarchar](20) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[companyType] [int] NOT NULL,
	[companyName] [int] NOT NULL,
	[lastname] [nvarchar](100) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[surname] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](11) NOT NULL,
	[index] [int] NOT NULL,
	[region] [int] NOT NULL,
	[city] [int] NOT NULL,
	[street] [int] NOT NULL,
	[building] [int] NOT NULL,
	[inn] [nvarchar](50) NOT NULL,
	[rating] [int] NOT NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productType] [int] NOT NULL,
	[productName] [int] NOT NULL,
	[art] [nvarchar](50) NOT NULL,
	[minCost] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 11.11.2024 16:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[faultPercent] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdressCity] ON 

INSERT [dbo].[AdressCity] ([id], [name]) VALUES (1, N'Приморск')
INSERT [dbo].[AdressCity] ([id], [name]) VALUES (2, N'Реутов')
INSERT [dbo].[AdressCity] ([id], [name]) VALUES (3, N'Северодвинск')
INSERT [dbo].[AdressCity] ([id], [name]) VALUES (4, N'Старый Оскол')
INSERT [dbo].[AdressCity] ([id], [name]) VALUES (5, N'Юрга')
SET IDENTITY_INSERT [dbo].[AdressCity] OFF
GO
SET IDENTITY_INSERT [dbo].[AdressIndex] ON 

INSERT [dbo].[AdressIndex] ([id], [name]) VALUES (1, N'143960')
INSERT [dbo].[AdressIndex] ([id], [name]) VALUES (2, N'164500')
INSERT [dbo].[AdressIndex] ([id], [name]) VALUES (3, N'188910')
INSERT [dbo].[AdressIndex] ([id], [name]) VALUES (4, N'309500')
INSERT [dbo].[AdressIndex] ([id], [name]) VALUES (5, N'652050')
SET IDENTITY_INSERT [dbo].[AdressIndex] OFF
GO
SET IDENTITY_INSERT [dbo].[AdressRegion] ON 

INSERT [dbo].[AdressRegion] ([id], [name]) VALUES (1, N'Архангельская')
INSERT [dbo].[AdressRegion] ([id], [name]) VALUES (2, N'Белгородская')
INSERT [dbo].[AdressRegion] ([id], [name]) VALUES (3, N'Кемеровская')
INSERT [dbo].[AdressRegion] ([id], [name]) VALUES (4, N'Ленинградская')
INSERT [dbo].[AdressRegion] ([id], [name]) VALUES (5, N'Московская')
SET IDENTITY_INSERT [dbo].[AdressRegion] OFF
GO
SET IDENTITY_INSERT [dbo].[AdressStreet] ON 

INSERT [dbo].[AdressStreet] ([id], [name]) VALUES (1, N'Лесная')
INSERT [dbo].[AdressStreet] ([id], [name]) VALUES (2, N'Парковая')
INSERT [dbo].[AdressStreet] ([id], [name]) VALUES (3, N'Рабочая')
INSERT [dbo].[AdressStreet] ([id], [name]) VALUES (4, N'Свободы')
INSERT [dbo].[AdressStreet] ([id], [name]) VALUES (5, N'Строителей')
SET IDENTITY_INSERT [dbo].[AdressStreet] OFF
GO
SET IDENTITY_INSERT [dbo].[CompanyName] ON 

INSERT [dbo].[CompanyName] ([id], [name]) VALUES (1, N'База Строитель')
INSERT [dbo].[CompanyName] ([id], [name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[CompanyName] ([id], [name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[CompanyName] ([id], [name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[CompanyName] ([id], [name]) VALUES (5, N'Стройсервис')
SET IDENTITY_INSERT [dbo].[CompanyName] OFF
GO
SET IDENTITY_INSERT [dbo].[CompanyType] ON 

INSERT [dbo].[CompanyType] ([id], [name]) VALUES (1, N'ЗАО')
INSERT [dbo].[CompanyType] ([id], [name]) VALUES (2, N'ОАО')
INSERT [dbo].[CompanyType] ([id], [name]) VALUES (3, N'ООО')
INSERT [dbo].[CompanyType] ([id], [name]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[CompanyType] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([id], [name], [faultPercent]) VALUES (1, N'Тип материала 1', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[MaterialType] ([id], [name], [faultPercent]) VALUES (2, N'Тип материала 2', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[MaterialType] ([id], [name], [faultPercent]) VALUES (3, N'Тип материала 3', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[MaterialType] ([id], [name], [faultPercent]) VALUES (4, N'Тип материала 4', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[MaterialType] ([id], [name], [faultPercent]) VALUES (5, N'Тип материала 5', CAST(0 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (1, 4, 1, N'15500', CAST(N'2023-03-23' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (2, 2, 1, N'12350', CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (3, 3, 1, N'37400', CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (4, 1, 2, N'35000', CAST(N'2022-12-02' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (5, 5, 2, N'1250', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (6, 2, 2, N'1000', CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (7, 4, 2, N'7550', CAST(N'2024-07-01' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (8, 4, 3, N'7250', CAST(N'2023-01-22' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (9, 1, 3, N'2500', CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (10, 3, 2, N'59050', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (11, 2, 2, N'37200', CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (12, 5, 2, N'4500', CAST(N'2024-05-14' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (13, 2, 1, N'50000', CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (14, 3, 1, N'670000', CAST(N'2023-11-10' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (15, 4, 1, N'35000', CAST(N'2024-04-15' AS Date))
INSERT [dbo].[Orders] ([id], [productId], [partnerId], [count], [date]) VALUES (16, 1, 1, N'25000', CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([id], [companyType], [companyName], [lastname], [name], [surname], [email], [phone], [index], [region], [city], [street], [building], [inn], [rating]) VALUES (1, 1, 1, N'Иванова', N'Александра', N'Ивановна', N'aleksandraivanova@ml.ru', N'4931234567', 5, 3, 5, 1, 15, N'2222455179', 7)
INSERT [dbo].[Partner] ([id], [companyType], [companyName], [lastname], [name], [surname], [email], [phone], [index], [region], [city], [street], [building], [inn], [rating]) VALUES (2, 3, 3, N'Петров', N'Василий', N'Петрович', N'vppetrov@vl.ru', N'9871235678', 2, 1, 3, 5, 18, N'3333888520', 7)
INSERT [dbo].[Partner] ([id], [companyType], [companyName], [lastname], [name], [surname], [email], [phone], [index], [region], [city], [street], [building], [inn], [rating]) VALUES (3, 4, 5, N'Соловьев', N'Андрей', N'Николаевич', N'ansolovev@st.ru', N'8122233200', 3, 4, 1, 2, 21, N'4440391035', 7)
INSERT [dbo].[Partner] ([id], [companyType], [companyName], [lastname], [name], [surname], [email], [phone], [index], [region], [city], [street], [building], [inn], [rating]) VALUES (4, 2, 4, N'Воробьева', N'Екатерина', N'Валерьевна', N'ekaterina.vorobeva@ml.ru', N'4442223311', 1, 5, 2, 4, 51, N'1111520857', 5)
INSERT [dbo].[Partner] ([id], [companyType], [companyName], [lastname], [name], [surname], [email], [phone], [index], [region], [city], [street], [building], [inn], [rating]) VALUES (5, 1, 2, N'Степанов', N'Степан', N'Сергеевич', N'stepanov@stepan.ru', N'9128883333', 4, 2, 4, 3, 122, N'5552431140', 10)
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [productType], [productName], [art], [minCost]) VALUES (1, 3, 4, N'8758385', CAST(4457 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([id], [productType], [productName], [art], [minCost]) VALUES (2, 3, 1, N'8858958', CAST(7331 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([id], [productType], [productName], [art], [minCost]) VALUES (3, 2, 2, N'7750282', CAST(1799 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([id], [productType], [productName], [art], [minCost]) VALUES (4, 2, 3, N'7028748', CAST(3890 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([id], [productType], [productName], [art], [minCost]) VALUES (5, 4, 5, N'5012543', CAST(5451 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductName] ON 

INSERT [dbo].[ProductName] ([id], [name]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[ProductName] ([id], [name]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
SET IDENTITY_INSERT [dbo].[ProductName] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([id], [name], [faultPercent]) VALUES (1, N'Пробковое покрытие', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[ProductType] ([id], [name], [faultPercent]) VALUES (2, N'Ламинат', CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[ProductType] ([id], [name], [faultPercent]) VALUES (3, N'Паркетная доска', CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[ProductType] ([id], [name], [faultPercent]) VALUES (4, N'Массивная доска', CAST(5 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Partner] FOREIGN KEY([partnerId])
REFERENCES [dbo].[Partner] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Partner]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Product]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_AdressCity] FOREIGN KEY([city])
REFERENCES [dbo].[AdressCity] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_AdressCity]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_AdressIndex] FOREIGN KEY([index])
REFERENCES [dbo].[AdressIndex] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_AdressIndex]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_AdressRegion] FOREIGN KEY([region])
REFERENCES [dbo].[AdressRegion] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_AdressRegion]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_AdressStreet] FOREIGN KEY([street])
REFERENCES [dbo].[AdressStreet] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_AdressStreet]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_CompanyName] FOREIGN KEY([companyName])
REFERENCES [dbo].[CompanyName] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_CompanyName]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_CompanyType] FOREIGN KEY([companyType])
REFERENCES [dbo].[CompanyType] ([id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_CompanyType]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductName] FOREIGN KEY([productName])
REFERENCES [dbo].[ProductName] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductName]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([productType])
REFERENCES [dbo].[ProductType] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
USE [master]
GO
ALTER DATABASE [KT_7_MasterPo] SET  READ_WRITE 
GO
