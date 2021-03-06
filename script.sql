USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 11/5/2017 11:17:12 PM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 11/5/2017 11:17:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryPhoto] [nvarchar](50) NULL,
	[AccessoryColor] [nvarchar](50) NOT NULL,
	[AccessorySeason] [nvarchar](50) NULL,
	[AccessoryOccasion] [nvarchar](50) NULL,
	[TypeID] [int] NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 11/5/2017 11:17:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](50) NULL,
	[BottomColor] [nvarchar](50) NOT NULL,
	[BottomSeason] [nvarchar](50) NULL,
	[BottomOccasion] [nvarchar](50) NULL,
	[TypeID] [int] NOT NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClothingType]    Script Date: 11/5/2017 11:17:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClothingType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 11/5/2017 11:17:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoePicture] [nvarchar](50) NULL,
	[ShoeColor] [nvarchar](50) NOT NULL,
	[ShoeSeason] [nvarchar](50) NULL,
	[ShoeOccasion] [nvarchar](50) NULL,
	[TypeID] [int] NOT NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Top]    Script Date: 11/5/2017 11:17:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](50) NULL,
	[TopColor] [nvarchar](50) NOT NULL,
	[TopSeason] [nvarchar](50) NULL,
	[TopOccasion] [nvarchar](50) NULL,
	[TypeID] [int] NOT NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion], [TypeID]) VALUES (1, N'Cool Watch', N'\Content\Images\coolwatch.jpeg', N'Silver', N'Any', N'Any', 4)
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion], [TypeID]) VALUES (2, N'Lame Watch', N'\Content\images\lamewatch.jpeg', N'Black', N'Any', N'Any', 4)
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion], [TypeID]) VALUES (1, N'Hipster Slacks', N'\Content\images\hipsterslacks.jpeg', N'Tan', N'Any', N'Casual', 2)
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion], [TypeID]) VALUES (2, N'Denim Jeans', N'\Content\images\blackjeans.jpeg', N'Black', N'Any', N'Casual', 2)
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[ClothingType] ON 

INSERT [dbo].[ClothingType] ([TypeID], [TypeName]) VALUES (1, N'Tops')
INSERT [dbo].[ClothingType] ([TypeID], [TypeName]) VALUES (2, N'Bottoms')
INSERT [dbo].[ClothingType] ([TypeID], [TypeName]) VALUES (3, N'Shoes')
INSERT [dbo].[ClothingType] ([TypeID], [TypeName]) VALUES (4, N'Accessories')
SET IDENTITY_INSERT [dbo].[ClothingType] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePicture], [ShoeColor], [ShoeSeason], [ShoeOccasion], [TypeID]) VALUES (1, N'Converse Shoes', N'\Content\images\converses.jpeg', N'Black', N'Any', N'Casual', 3)
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePicture], [ShoeColor], [ShoeSeason], [ShoeOccasion], [TypeID]) VALUES (2, N'Nike Shoes', N'\Content\images\nikes.jpg', N'Gray', N'Any', N'Casual', 3)
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePicture], [ShoeColor], [ShoeSeason], [ShoeOccasion], [TypeID]) VALUES (3, N'Dress Shoes', N'\Content\images\dressshoes.jpg', N'Black', N'Any', N'Formal', 3)
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[Top] ON 

INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion], [TypeID]) VALUES (1, N'The Chaplin', N'\Content\images\thechaplin.jpg', N'White', N'Fall', N'Formal', 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion], [TypeID]) VALUES (2, N'The Hipster™', N'\Content\images\thehipster.jpeg', N'Plaid', N'Fall', N'Hipster', 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion], [TypeID]) VALUES (3, N'Legendary Tee', N'\Content\images\legendarytee.jpeg', N'Black', N'Summer', N'Casual', 1)
SET IDENTITY_INSERT [dbo].[Top] OFF
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ClothingType] ([TypeID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Type]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ClothingType] ([TypeID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Type]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ClothingType] ([TypeID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_Type]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ClothingType] ([TypeID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Type]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
