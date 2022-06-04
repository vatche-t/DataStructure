USE [master]
GO
/****** Object:  Database [Shop]    Script Date: 1/1/2022 01:11:26 ب.ظ ******/
CREATE DATABASE [Shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Shop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shop] SET RECOVERY FULL 
GO
ALTER DATABASE [Shop] SET  MULTI_USER 
GO
ALTER DATABASE [Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Shop', N'ON'
GO
ALTER DATABASE [Shop] SET QUERY_STORE = OFF
GO
USE [Shop]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[CanBeUsedFor] [nvarchar](max) NOT NULL,
	[AccountType] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Price] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Childish]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Childish](
	[ChildrenProductCode] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Baby] [nvarchar](50) NULL,
	[Girls] [nvarchar](50) NULL,
	[Boys] [nvarchar](50) NULL,
 CONSTRAINT [PK_Childish] PRIMARY KEY CLUSTERED 
(
	[ChildrenProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChildrenAccessories]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildrenAccessories](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[CanBeUsedFor] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_ChildrenAccessories] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChildrenShoes]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildrenShoes](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_BabyShoes] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChildrenSocks]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildrenSocks](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[Used] [nvarchar](50) NOT NULL,
	[Design] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_ChildrenSocks] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChildrensPants]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildrensPants](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Used] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Design] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Size] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_ChildrensPants] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clothing]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clothing](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Used] [nvarchar](max) NOT NULL,
	[TypeOfClothing] [nvarchar](max) NOT NULL,
	[LongOrShort] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_clothing] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JacketsAndCoats]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JacketsAndCoats](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Used] [nvarchar](50) NOT NULL,
	[Design] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_JacketsAndCoats] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KidsCloth]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KidsCloth](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Genus] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_kidsCloth] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mens]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mens](
	[MensProductCode] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Mens] PRIMARY KEY CLUSTERED 
(
	[MensProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pants]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pants](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Used] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Design] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Pants] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purse]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purse](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Purse] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Used] [nvarchar](50) NOT NULL,
	[CanBeUsedFor] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[WomensProductCode] [int] NOT NULL,
	[MensProductCode] [int] NOT NULL,
	[ChildrenProductCode] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socks]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socks](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[Used] [nvarchar](50) NOT NULL,
	[Design] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Socks] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Womens]    Script Date: 1/1/2022 01:11:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Womens](
	[WomensProductCode] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Womens] PRIMARY KEY CLUSTERED 
(
	[WomensProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChildrenAccessories] ([ProductID], [ProductName], [CanBeUsedFor], [Brand], [Color], [Price]) VALUES (20, N'Eynak', N'Girls', N'ReyBan', N'Abi', 120.0000)
GO
INSERT [dbo].[ChildrenAccessories] ([ProductID], [ProductName], [CanBeUsedFor], [Brand], [Color], [Price]) VALUES (21, N'Eynak', N'Girls', N'ReyBan', N'Sefid', 120.0000)
GO
INSERT [dbo].[ChildrenAccessories] ([ProductID], [ProductName], [CanBeUsedFor], [Brand], [Color], [Price]) VALUES (22, N'Eynak', N'Girls', N'ReyBan', N'Sorati', 120.0000)
GO
INSERT [dbo].[ChildrenAccessories] ([ProductID], [ProductName], [CanBeUsedFor], [Brand], [Color], [Price]) VALUES (23, N'Eynak', N'Girls', N'ReyBan', N'Banafsh', 120.0000)
GO
INSERT [dbo].[ChildrenAccessories] ([ProductID], [ProductName], [CanBeUsedFor], [Brand], [Color], [Price]) VALUES (24, N'Eynak', N'Boy', N'ReyBan', N'Abi', 120.0000)
GO
INSERT [dbo].[ChildrenAccessories] ([ProductID], [ProductName], [CanBeUsedFor], [Brand], [Color], [Price]) VALUES (25, N'Eynak', N'Boy', N'ReyBan', N'Sefid', 120.0000)
GO
INSERT [dbo].[ChildrenAccessories] ([ProductID], [ProductName], [CanBeUsedFor], [Brand], [Color], [Price]) VALUES (26, N'Eynak', N'Boy', N'ReyBan', N'Meshki', 120.0000)
GO
INSERT [dbo].[ChildrenShoes] ([ProductID], [ProductName], [Gender], [Color], [Size], [Price]) VALUES (1, N'Sandal', N'Charm', N'Abi', 1, 320.0000)
GO
INSERT [dbo].[ChildrenShoes] ([ProductID], [ProductName], [Gender], [Color], [Size], [Price]) VALUES (2, N'Kalej', N'Charm', N'Meshki', 2, 400.0000)
GO
INSERT [dbo].[ChildrenShoes] ([ProductID], [ProductName], [Gender], [Color], [Size], [Price]) VALUES (3, N'Katoni', N'Parche', N'Meshki', 2, 200.0000)
GO
INSERT [dbo].[ChildrenShoes] ([ProductID], [ProductName], [Gender], [Color], [Size], [Price]) VALUES (4, N'Sandal', N'Parche', N'Meshki', 3, 150.0000)
GO
INSERT [dbo].[ChildrenSocks] ([ProductID], [ProductName], [Gender], [Used], [Design], [Color], [Size], [Price]) VALUES (30, N'JorabShalvary', N'Baft', N'Mehmani', N'Sade', N'Sefid', 2, 100.0000)
GO
INSERT [dbo].[ChildrenSocks] ([ProductID], [ProductName], [Gender], [Used], [Design], [Color], [Size], [Price]) VALUES (31, N'JorabMochi', N'Nakh', N'Rozane', N'Sade', N'Sefid', 1, 50.0000)
GO
INSERT [dbo].[ChildrenSocks] ([ProductID], [ProductName], [Gender], [Used], [Design], [Color], [Size], [Price]) VALUES (32, N'JorabMochi', N'Nakh', N'Rozane', N'Sade', N'Meshki', 1, 50.0000)
GO
INSERT [dbo].[KidsCloth] ([ProductID], [ProductName], [Gender], [Genus], [Brand], [Color], [Size], [Price]) VALUES (60, N'Pirahan', N'Girls', N'Nakh', N'H&M', N'Sefid', 10, 120000.0000)
GO
ALTER TABLE [dbo].[Childish]  WITH CHECK ADD  CONSTRAINT [FK_Childish_ChildrenAccessories] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ChildrenAccessories] ([ProductID])
GO
ALTER TABLE [dbo].[Childish] CHECK CONSTRAINT [FK_Childish_ChildrenAccessories]
GO
ALTER TABLE [dbo].[Childish]  WITH CHECK ADD  CONSTRAINT [FK_Childish_ChildrenShoes] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ChildrenShoes] ([ProductID])
GO
ALTER TABLE [dbo].[Childish] CHECK CONSTRAINT [FK_Childish_ChildrenShoes]
GO
ALTER TABLE [dbo].[Childish]  WITH CHECK ADD  CONSTRAINT [FK_Childish_ChildrenSocks] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ChildrenSocks] ([ProductID])
GO
ALTER TABLE [dbo].[Childish] CHECK CONSTRAINT [FK_Childish_ChildrenSocks]
GO
ALTER TABLE [dbo].[Childish]  WITH CHECK ADD  CONSTRAINT [FK_Childish_ChildrensPants] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ChildrensPants] ([ProductID])
GO
ALTER TABLE [dbo].[Childish] CHECK CONSTRAINT [FK_Childish_ChildrensPants]
GO
ALTER TABLE [dbo].[Childish]  WITH CHECK ADD  CONSTRAINT [FK_Childish_kidsCloth] FOREIGN KEY([ProductID])
REFERENCES [dbo].[KidsCloth] ([ProductID])
GO
ALTER TABLE [dbo].[Childish] CHECK CONSTRAINT [FK_Childish_kidsCloth]
GO
ALTER TABLE [dbo].[Mens]  WITH CHECK ADD  CONSTRAINT [FK_Mens_Accessory] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Accessory] ([ProductID])
GO
ALTER TABLE [dbo].[Mens] CHECK CONSTRAINT [FK_Mens_Accessory]
GO
ALTER TABLE [dbo].[Mens]  WITH CHECK ADD  CONSTRAINT [FK_Mens_clothing] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Clothing] ([ProductID])
GO
ALTER TABLE [dbo].[Mens] CHECK CONSTRAINT [FK_Mens_clothing]
GO
ALTER TABLE [dbo].[Mens]  WITH CHECK ADD  CONSTRAINT [FK_Mens_JacketsAndCoats] FOREIGN KEY([ProductID])
REFERENCES [dbo].[JacketsAndCoats] ([ProductID])
GO
ALTER TABLE [dbo].[Mens] CHECK CONSTRAINT [FK_Mens_JacketsAndCoats]
GO
ALTER TABLE [dbo].[Mens]  WITH CHECK ADD  CONSTRAINT [FK_Mens_Pants] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Pants] ([ProductID])
GO
ALTER TABLE [dbo].[Mens] CHECK CONSTRAINT [FK_Mens_Pants]
GO
ALTER TABLE [dbo].[Mens]  WITH CHECK ADD  CONSTRAINT [FK_Mens_Shoes] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Shoes] ([ProductID])
GO
ALTER TABLE [dbo].[Mens] CHECK CONSTRAINT [FK_Mens_Shoes]
GO
ALTER TABLE [dbo].[Mens]  WITH CHECK ADD  CONSTRAINT [FK_Mens_Socks] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Socks] ([ProductID])
GO
ALTER TABLE [dbo].[Mens] CHECK CONSTRAINT [FK_Mens_Socks]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Childish] FOREIGN KEY([ChildrenProductCode])
REFERENCES [dbo].[Childish] ([ChildrenProductCode])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Childish]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Mens] FOREIGN KEY([MensProductCode])
REFERENCES [dbo].[Mens] ([MensProductCode])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Mens]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Womens] FOREIGN KEY([WomensProductCode])
REFERENCES [dbo].[Womens] ([WomensProductCode])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Womens]
GO
ALTER TABLE [dbo].[Womens]  WITH CHECK ADD  CONSTRAINT [FK_Womens_Accessory] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Accessory] ([ProductID])
GO
ALTER TABLE [dbo].[Womens] CHECK CONSTRAINT [FK_Womens_Accessory]
GO
ALTER TABLE [dbo].[Womens]  WITH CHECK ADD  CONSTRAINT [FK_Womens_clothing] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Clothing] ([ProductID])
GO
ALTER TABLE [dbo].[Womens] CHECK CONSTRAINT [FK_Womens_clothing]
GO
ALTER TABLE [dbo].[Womens]  WITH CHECK ADD  CONSTRAINT [FK_Womens_JacketsAndCoats] FOREIGN KEY([ProductID])
REFERENCES [dbo].[JacketsAndCoats] ([ProductID])
GO
ALTER TABLE [dbo].[Womens] CHECK CONSTRAINT [FK_Womens_JacketsAndCoats]
GO
ALTER TABLE [dbo].[Womens]  WITH CHECK ADD  CONSTRAINT [FK_Womens_Pants] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Pants] ([ProductID])
GO
ALTER TABLE [dbo].[Womens] CHECK CONSTRAINT [FK_Womens_Pants]
GO
ALTER TABLE [dbo].[Womens]  WITH CHECK ADD  CONSTRAINT [FK_Womens_Purse] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Purse] ([ProductID])
GO
ALTER TABLE [dbo].[Womens] CHECK CONSTRAINT [FK_Womens_Purse]
GO
ALTER TABLE [dbo].[Womens]  WITH CHECK ADD  CONSTRAINT [FK_Womens_Shoes] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Shoes] ([ProductID])
GO
ALTER TABLE [dbo].[Womens] CHECK CONSTRAINT [FK_Womens_Shoes]
GO
ALTER TABLE [dbo].[Womens]  WITH CHECK ADD  CONSTRAINT [FK_Womens_Socks] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Socks] ([ProductID])
GO
ALTER TABLE [dbo].[Womens] CHECK CONSTRAINT [FK_Womens_Socks]
GO
USE [master]
GO
ALTER DATABASE [Shop] SET  READ_WRITE 
GO
