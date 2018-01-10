USE [master]
GO
/****** Object:  Database [Clubs]    Script Date: 2017-10-05 10:58:43 AM ******/
CREATE DATABASE [Clubs]
GO
ALTER DATABASE [Clubs] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Clubs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Clubs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Clubs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Clubs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Clubs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Clubs] SET ARITHABORT OFF 
GO
ALTER DATABASE [Clubs] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Clubs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Clubs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Clubs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Clubs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Clubs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Clubs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Clubs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Clubs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Clubs] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Clubs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Clubs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Clubs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Clubs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Clubs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Clubs] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Clubs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Clubs] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Clubs] SET  MULTI_USER 
GO
ALTER DATABASE [Clubs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Clubs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Clubs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Clubs] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Clubs] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Clubs]
GO
/****** Object:  Table [dbo].[club]    Script Date: 2017-10-05 10:58:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[club](
	[clubId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[phone] [varchar](50) NULL,
	[styleCode] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contract]    Script Date: 2017-10-05 10:58:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contract](
	[contractId] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [datetime] NOT NULL,
	[groupId] [int] NOT NULL,
	[clubId] [int] NOT NULL,
	[pricePerPerformace] [float] NOT NULL,
	[numberOfPerformances] [int] NOT NULL,
	[totalPrice] [float] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[groupInstrument]    Script Date: 2017-10-05 10:58:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groupInstrument](
	[groupInstumentId] [int] IDENTITY(1,1) NOT NULL,
	[groupId] [int] NOT NULL,
	[instrumentCode] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[groups]    Script Date: 2017-10-05 10:58:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groups](
	[groupId] [int] IDENTITY(1,1) NOT NULL,
	[size] [smallint] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[styleCode] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[instrument]    Script Date: 2017-10-05 10:58:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instrument](
	[instrumentCode] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[style]    Script Date: 2017-10-05 10:58:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[style](
	[styleCode] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[club] ON 

INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (350, N'The Alligator Club', N'(206) 555-0471', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (400, N'The Baby Seal Club', N'(206) 555-2200', N'Clsc')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (1500, N'The Bacchus Tavern', N'(206) 555-1616', N'Mag')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (2650, N'The Bosston Inn', N'(206) 555-0100', N'Flk')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (4250, N'The Candy Bar', N'(206) 555-2200', N'CR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (5000, N'CandyBox', N'(206) 555-7755', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (5250, N'Dirty Dance Club', N'(206) 555-1440', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (7000, N'Geppetto''s Rockshop', N'(206) 555-0229', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (7050, N'Jumpin'' Jack''s Tavern', N'(206) 555-3333', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (8500, N'Lilliput Tavern', N'(509) 555-9211', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (12000, N'Lucifer''s Lighthouse', N'(206) 555-7447', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (13400, N'The Misery Club', N'(206) 555-6325', N'50s')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (14400, N'Mudskipper''s', N'(206) 555-1064', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (14950, N'The Olympic Bar', N'(206) 555-1123', N'CR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (18600, N'The Putt Putt Club', N'(206) 555-8877', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (18900, N'The Rickshaw Shack', N'(206) 555-7700', N'Con')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (19350, N'Little Ricky''s Diner', N'(206) 555-1000', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (20400, N'Rock Chocolate', N'(206) 555-6430', N'Clsc')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (21700, N'Satyr''s', N'(206) 555-4141', N'CR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (22050, N'The Salt and Pepper Lounge', N'(206) 555-2704', N'TOP40')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (22800, N'The Sourdough Café', N'(206) 555-1234', N'Flk')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (23800, N'Mom''s Kitchen Café', N'(206) 555-7559', N'MOR')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (24252, N'The Ski Haus', NULL, N'Flk')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (24259, N'The Wine Seller', N'(206) 555-3241', N'Cm')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (24269, N'West Coast Comedy Club', N'(206) 555-1224', N'Cm')
INSERT [dbo].[club] ([clubId], [name], [phone], [styleCode]) VALUES (24548, N'No One Wants to Work Here', N'(360) 888-5555', N'Kr')
SET IDENTITY_INSERT [dbo].[club] OFF
SET IDENTITY_INSERT [dbo].[contract] ON 

INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4642, CAST(N'1999-06-26T00:00:00.000' AS DateTime), 500, 12000, 550, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4643, CAST(N'1999-07-01T00:00:00.000' AS DateTime), 5300, 24269, 450, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4644, CAST(N'1999-07-01T00:00:00.000' AS DateTime), 4400, 24252, 0, 16, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4645, CAST(N'1999-07-03T00:00:00.000' AS DateTime), 5200, 5250, 600, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4646, CAST(N'1999-07-09T00:00:00.000' AS DateTime), 14615, 1500, 700, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4647, CAST(N'1999-07-12T00:00:00.000' AS DateTime), 14555, 400, 550, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4648, CAST(N'1999-07-12T00:00:00.000' AS DateTime), 5200, 400, 550, 14, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4649, CAST(N'1999-07-12T00:00:00.000' AS DateTime), 5200, 400, 550, 10, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4650, CAST(N'1999-07-12T00:00:00.000' AS DateTime), 14250, 400, 550, 10, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4651, CAST(N'1999-07-12T00:00:00.000' AS DateTime), 14555, 400, 550, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4652, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 6650, 14400, 300, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4654, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14300, 14950, 550, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4655, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 4400, 14950, 550, 15, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4656, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 9750, 14950, 550, 15, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4657, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 9750, 14950, 550, 14, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4658, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 4400, 14950, 550, 10, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4659, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 5300, 14950, 550, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4660, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 4400, 14950, 550, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4661, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 4400, 14950, 550, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4662, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14250, 22800, 700, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4663, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 9750, 14950, 550, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4664, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 5300, 14950, 550, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4666, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14524, 22800, 750, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4667, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14615, 22800, 800, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4668, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 4400, 400, 550, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4669, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14524, 22800, 750, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4670, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14524, 22800, 750, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4671, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 4400, 400, 550, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4672, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14615, 22800, 800, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4673, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14615, 22800, 800, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4674, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14300, 14950, 550, 13, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4675, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14300, 14950, 550, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4676, CAST(N'1999-07-13T00:00:00.000' AS DateTime), 14615, 22800, 800, 14, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4678, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 5650, 24252, 0, 17, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4679, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 14536, 13400, 1500, 15, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4680, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 5650, 13400, 750, 14, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4681, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 14536, 13400, 1500, 10, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4682, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 14562, 13400, 1100, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4683, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 14562, 13400, 1100, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4684, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 14562, 13400, 1100, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4685, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 5200, 5250, 600, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4686, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 5300, 24269, 450, 10, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4687, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 14555, 24269, 450, 18, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4688, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 4400, 350, 300, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4690, CAST(N'1999-07-16T00:00:00.000' AS DateTime), 8350, 13400, 1100, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4691, CAST(N'1999-07-23T00:00:00.000' AS DateTime), 14524, 24252, 0, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4692, CAST(N'1999-07-24T00:00:00.000' AS DateTime), 500, 19350, 750, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4693, CAST(N'1999-07-26T00:00:00.000' AS DateTime), 14555, 400, 550, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4694, CAST(N'1999-07-26T00:00:00.000' AS DateTime), 14555, 400, 550, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4695, CAST(N'1999-07-27T00:00:00.000' AS DateTime), 14555, 350, 300, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4696, CAST(N'1999-08-03T00:00:00.000' AS DateTime), 5300, 350, 300, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4697, CAST(N'1999-08-04T00:00:00.000' AS DateTime), 500, 1500, 450, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4698, CAST(N'1999-08-10T00:00:00.000' AS DateTime), 14562, 350, 400, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4699, CAST(N'1999-08-11T00:00:00.000' AS DateTime), 14250, 19350, 650, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4700, CAST(N'1999-08-11T00:00:00.000' AS DateTime), 500, 19350, 750, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4702, CAST(N'1999-08-11T00:00:00.000' AS DateTime), 14555, 19350, 650, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4703, CAST(N'1999-08-11T00:00:00.000' AS DateTime), 14250, 19350, 650, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4704, CAST(N'1999-08-11T00:00:00.000' AS DateTime), 500, 19350, 750, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4705, CAST(N'1999-08-12T00:00:00.000' AS DateTime), 5200, 19350, 650, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4706, CAST(N'1999-08-12T00:00:00.000' AS DateTime), 14524, 24259, 750, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4707, CAST(N'1999-08-12T00:00:00.000' AS DateTime), 4400, 24259, 600, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4708, CAST(N'1999-08-12T00:00:00.000' AS DateTime), 14555, 24259, 550, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4709, CAST(N'1999-08-13T00:00:00.000' AS DateTime), 14562, 24252, 0, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4710, CAST(N'1999-09-02T00:00:00.000' AS DateTime), 14300, 24269, 450, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4711, CAST(N'1999-09-03T00:00:00.000' AS DateTime), 6650, 1500, 450, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4712, CAST(N'1999-09-10T00:00:00.000' AS DateTime), 5300, 24259, 550, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4714, CAST(N'1999-09-17T00:00:00.000' AS DateTime), 14562, 24252, 0, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4715, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 14536, 13400, 1500, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4716, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 14562, 8500, 1350, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4717, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 14300, 24269, 450, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4718, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 5300, 24269, 450, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4719, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 14562, 350, 400, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4720, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 14300, 350, 300, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4721, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 10750, 18600, 250, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4722, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 14524, 8500, 925, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4723, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 10750, 18600, 250, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4724, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 4400, 400, 550, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4726, CAST(N'1999-09-23T00:00:00.000' AS DateTime), 6650, 350, 300, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4727, CAST(N'1999-09-27T00:00:00.000' AS DateTime), 500, 1500, 450, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4728, CAST(N'1999-09-27T00:00:00.000' AS DateTime), 6650, 1500, 450, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4729, CAST(N'1999-09-30T00:00:00.000' AS DateTime), 14536, 13400, 1500, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4730, CAST(N'1999-10-06T00:00:00.000' AS DateTime), 6650, 23800, 475, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4731, CAST(N'1999-10-19T00:00:00.000' AS DateTime), 14562, 13400, 1100, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4732, CAST(N'1999-10-24T00:00:00.000' AS DateTime), 500, 1500, 450, 13, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4733, CAST(N'1999-11-02T00:00:00.000' AS DateTime), 6650, 14400, 300, 13, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4734, CAST(N'1999-11-02T00:00:00.000' AS DateTime), 9750, 350, 300, 10, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4735, CAST(N'1999-11-12T00:00:00.000' AS DateTime), 14555, 24259, 600, 10, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4736, CAST(N'1999-11-15T00:00:00.000' AS DateTime), 14555, 350, 300, 10, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4738, CAST(N'1999-11-15T00:00:00.000' AS DateTime), 4400, 350, 300, 10, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4739, CAST(N'1999-11-16T00:00:00.000' AS DateTime), 6650, 4250, 250, 10, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4740, CAST(N'1999-11-20T00:00:00.000' AS DateTime), 14200, 19350, 600, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4741, CAST(N'1999-11-26T00:00:00.000' AS DateTime), 11050, 14950, 550, 14, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4742, CAST(N'1999-11-26T00:00:00.000' AS DateTime), 6650, 350, 300, 1, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4743, CAST(N'1999-11-26T00:00:00.000' AS DateTime), 6650, 350, 400, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4744, CAST(N'1999-11-26T00:00:00.000' AS DateTime), 5300, 20400, 400, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4745, CAST(N'1999-12-03T00:00:00.000' AS DateTime), 6650, 1500, 450, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4746, CAST(N'1999-12-14T00:00:00.000' AS DateTime), 10750, 350, 400, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4747, CAST(N'1999-12-19T00:00:00.000' AS DateTime), 500, 1500, 150, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4748, CAST(N'1999-12-21T00:00:00.000' AS DateTime), 14300, 21700, 250, 33, 0)
GO
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4750, CAST(N'1999-12-24T00:00:00.000' AS DateTime), 14562, 13400, 1100, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4751, CAST(N'1999-12-24T00:00:00.000' AS DateTime), 5650, 13400, 800, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4752, CAST(N'1999-12-24T00:00:00.000' AS DateTime), 14536, 13400, 1500, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4753, CAST(N'1999-12-24T00:00:00.000' AS DateTime), 11050, 24252, 0, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4754, CAST(N'1999-12-24T00:00:00.000' AS DateTime), 14536, 13400, 1500, 66, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4755, CAST(N'1999-12-28T00:00:00.000' AS DateTime), 9750, 21700, 250, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4756, CAST(N'2000-01-04T00:00:00.000' AS DateTime), 4400, 350, 300, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4757, CAST(N'2000-01-05T00:00:00.000' AS DateTime), 14555, 20400, 400, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4758, CAST(N'2000-01-05T00:00:00.000' AS DateTime), 14562, 20400, 500, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4759, CAST(N'2000-01-05T00:00:00.000' AS DateTime), 4400, 20400, 400, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4760, CAST(N'2000-01-05T00:00:00.000' AS DateTime), 4400, 20400, 400, 21, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4762, CAST(N'2000-01-11T00:00:00.000' AS DateTime), 5300, 350, 300, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4763, CAST(N'2000-01-18T00:00:00.000' AS DateTime), 10750, 350, 300, 14, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4764, CAST(N'2000-01-18T00:00:00.000' AS DateTime), 5300, 21700, 250, 15, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4765, CAST(N'2000-01-21T00:00:00.000' AS DateTime), 5200, 20400, 400, 17, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4766, CAST(N'2000-01-21T00:00:00.000' AS DateTime), 500, 19350, 750, 15, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4767, CAST(N'2000-01-25T00:00:00.000' AS DateTime), 6650, 350, 300, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4768, CAST(N'2000-02-01T00:00:00.000' AS DateTime), 6650, 22050, 300, 13, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4769, CAST(N'2000-02-01T00:00:00.000' AS DateTime), 11050, 5000, 300, 14, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4770, CAST(N'2000-02-01T00:00:00.000' AS DateTime), 4400, 350, 300, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4771, CAST(N'2000-02-04T00:00:00.000' AS DateTime), 5650, 24252, 235, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4772, CAST(N'2000-02-05T00:00:00.000' AS DateTime), 14555, 19350, 650, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4774, CAST(N'2000-02-06T00:00:00.000' AS DateTime), 8350, 7000, 650, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4775, CAST(N'2000-02-08T00:00:00.000' AS DateTime), 14300, 350, 300, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4776, CAST(N'2000-02-08T00:00:00.000' AS DateTime), 14562, 13400, 400, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4777, CAST(N'2000-02-15T00:00:00.000' AS DateTime), 6650, 350, 300, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4778, CAST(N'2000-02-22T00:00:00.000' AS DateTime), 4400, 21700, 250, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4779, CAST(N'2000-02-22T00:00:00.000' AS DateTime), 14601, 5000, 250, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4780, CAST(N'2000-02-22T00:00:00.000' AS DateTime), 14562, 350, 400, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4781, CAST(N'2000-02-29T00:00:00.000' AS DateTime), 14615, 5000, 300, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4782, CAST(N'2000-02-29T00:00:00.000' AS DateTime), 14601, 350, 300, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4783, CAST(N'2000-03-11T00:00:00.000' AS DateTime), 9750, 400, 550, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4784, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 5200, 19350, 650, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4786, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 6650, 1500, 200, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4787, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 14200, 14950, 550, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4788, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 14555, 5000, 300, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4789, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 14615, 350, 300, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4790, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 14555, 20400, 400, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4791, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 500, 20400, 400, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4792, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 11050, 5000, 450, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4793, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 10750, 5000, 250, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4794, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 14615, 22800, 850, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4795, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 1650, 22800, 650, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4796, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 14562, 350, 400, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4798, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 14562, 20400, 500, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4799, CAST(N'2000-03-16T00:00:00.000' AS DateTime), 4400, 21700, 350, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4800, CAST(N'2000-03-17T00:00:00.000' AS DateTime), 14555, 23800, 0, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4801, CAST(N'2000-03-17T00:00:00.000' AS DateTime), 14555, 23800, 0, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4802, CAST(N'2000-03-17T00:00:00.000' AS DateTime), 14555, 23800, 0, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4803, CAST(N'2000-03-17T00:00:00.000' AS DateTime), 14555, 23800, 0, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4804, CAST(N'2000-03-23T00:00:00.000' AS DateTime), 11050, 24252, 100, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4805, CAST(N'2000-03-23T00:00:00.000' AS DateTime), 4400, 4250, 0, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4806, CAST(N'2000-03-23T00:00:00.000' AS DateTime), 14615, 19350, 700, 1, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4807, CAST(N'2000-03-23T00:00:00.000' AS DateTime), 14250, 400, 0, 1, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4808, CAST(N'2000-03-23T00:00:00.000' AS DateTime), 4400, 400, 0, 12, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4810, CAST(N'2000-03-27T00:00:00.000' AS DateTime), 500, 12000, 150, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4811, CAST(N'2000-03-27T00:00:00.000' AS DateTime), 500, 12000, 450, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4812, CAST(N'2000-03-30T00:00:00.000' AS DateTime), 14536, 13400, 1500, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4813, CAST(N'2000-03-30T00:00:00.000' AS DateTime), 14536, 13400, 1500, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4814, CAST(N'2000-03-30T00:00:00.000' AS DateTime), 14536, 13400, 1500, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4815, CAST(N'2000-03-30T00:00:00.000' AS DateTime), 14536, 13400, 1500, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4816, CAST(N'2000-03-30T00:00:00.000' AS DateTime), 14536, 13400, 1500, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4817, CAST(N'2000-03-30T00:00:00.000' AS DateTime), 14536, 13400, 1500, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4818, CAST(N'2000-03-30T00:00:00.000' AS DateTime), 14536, 24252, 1000, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4819, CAST(N'2000-03-30T00:00:00.000' AS DateTime), 14536, 13400, 1500, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4820, CAST(N'2000-03-30T00:00:00.000' AS DateTime), 14536, 13400, 1500, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4822, CAST(N'2000-04-11T00:00:00.000' AS DateTime), 14601, 18600, 250, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4823, CAST(N'2000-04-22T00:00:00.000' AS DateTime), 500, 2650, 600, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4824, CAST(N'2000-04-27T00:00:00.000' AS DateTime), 5650, 24252, 160, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4825, CAST(N'2000-05-02T00:00:00.000' AS DateTime), 4400, 8500, 700, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4826, CAST(N'2000-05-02T00:00:00.000' AS DateTime), 500, 2650, 600, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4827, CAST(N'2000-05-02T00:00:00.000' AS DateTime), 4400, 8500, 1350, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4828, CAST(N'2000-05-02T00:00:00.000' AS DateTime), 4400, 8500, 1350, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4829, CAST(N'2000-05-02T00:00:00.000' AS DateTime), 4400, 8500, 1350, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4830, CAST(N'2000-05-02T00:00:00.000' AS DateTime), 14562, 350, 750, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4831, CAST(N'2000-05-03T00:00:00.000' AS DateTime), 14200, 18600, 250, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4832, CAST(N'2000-05-03T00:00:00.000' AS DateTime), 4400, 5000, 400, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4834, CAST(N'2000-05-04T00:00:00.000' AS DateTime), 14562, 18900, 750, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4835, CAST(N'2000-05-08T00:00:00.000' AS DateTime), 4400, 8500, 1350, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4836, CAST(N'2000-05-08T00:00:00.000' AS DateTime), 14524, 8500, 950, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4837, CAST(N'2000-05-08T00:00:00.000' AS DateTime), 14524, 8500, 950, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4838, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14562, 19350, 850, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4839, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14200, 19350, 600, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4840, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14615, 19350, 0, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4841, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14200, 19350, 600, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4842, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 500, 19350, 750, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4843, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14250, 19350, 650, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4844, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14562, 22800, 800, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4846, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14562, 22800, 800, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4847, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14524, 22800, 800, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4848, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14615, 19350, 800, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4850, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14524, 22800, 800, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4851, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14615, 22800, 800, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4852, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14555, 19350, 650, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4853, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14615, 22800, 800, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4854, CAST(N'2000-05-10T00:00:00.000' AS DateTime), 14615, 22800, 800, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4855, CAST(N'2000-05-11T00:00:00.000' AS DateTime), 9750, 400, 550, 8, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4856, CAST(N'2000-05-11T00:00:00.000' AS DateTime), 9750, 400, 550, 1, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4858, CAST(N'2000-05-11T00:00:00.000' AS DateTime), 4400, 400, 550, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4859, CAST(N'2000-05-11T00:00:00.000' AS DateTime), 14555, 400, 550, 2, 0)
GO
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4860, CAST(N'2000-05-11T00:00:00.000' AS DateTime), 14615, 400, 550, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4861, CAST(N'2000-05-11T00:00:00.000' AS DateTime), 14250, 400, 550, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4862, CAST(N'2000-05-11T00:00:00.000' AS DateTime), 4400, 400, 550, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4863, CAST(N'2000-05-18T00:00:00.000' AS DateTime), 14555, 5000, 400, 34, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4864, CAST(N'2000-05-18T00:00:00.000' AS DateTime), 6650, 18600, 200, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4865, CAST(N'2000-05-18T00:00:00.000' AS DateTime), 14618, 350, 1000, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4866, CAST(N'2000-05-18T00:00:00.000' AS DateTime), 14200, 5000, 400, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4867, CAST(N'2000-05-23T00:00:00.000' AS DateTime), 5650, 13400, 640, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4868, CAST(N'2000-05-23T00:00:00.000' AS DateTime), 8350, 24252, 650, 45, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4870, CAST(N'2000-06-08T00:00:00.000' AS DateTime), 4400, 14950, 550, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4871, CAST(N'2000-06-08T00:00:00.000' AS DateTime), 10750, 5000, 300, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4872, CAST(N'2000-06-08T00:00:00.000' AS DateTime), 5300, 14950, 550, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4873, CAST(N'2000-06-08T00:00:00.000' AS DateTime), 5300, 14950, 550, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4874, CAST(N'2000-06-08T00:00:00.000' AS DateTime), 4400, 14950, 550, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4875, CAST(N'2000-06-08T00:00:00.000' AS DateTime), 14200, 14950, 550, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4876, CAST(N'2000-06-08T00:00:00.000' AS DateTime), 4400, 14950, 550, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4877, CAST(N'2000-06-12T00:00:00.000' AS DateTime), 14562, 19350, 850, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4878, CAST(N'2000-06-12T00:00:00.000' AS DateTime), 14562, 22800, 850, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4879, CAST(N'2000-06-22T00:00:00.000' AS DateTime), 5650, 18600, 0, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4882, CAST(N'2000-06-22T00:00:00.000' AS DateTime), 11050, 18600, 300, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4883, CAST(N'2000-06-23T00:00:00.000' AS DateTime), 5200, 14950, 550, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4884, CAST(N'2000-06-23T00:00:00.000' AS DateTime), 8350, 7000, 700, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4885, CAST(N'2000-06-23T00:00:00.000' AS DateTime), 8350, 7000, 700, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4886, CAST(N'2000-06-23T00:00:00.000' AS DateTime), 8350, 7000, 700, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4887, CAST(N'2000-06-23T00:00:00.000' AS DateTime), 8350, 7000, 700, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4888, CAST(N'2000-06-23T00:00:00.000' AS DateTime), 10750, 5000, 300, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4889, CAST(N'2000-06-23T00:00:00.000' AS DateTime), 14555, 23800, 500, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4890, CAST(N'2000-06-23T00:00:00.000' AS DateTime), 4400, 5000, 300, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4891, CAST(N'2000-06-23T00:00:00.000' AS DateTime), 8350, 7000, 700, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4892, CAST(N'2000-06-23T00:00:00.000' AS DateTime), 8350, 7000, 700, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4894, CAST(N'2000-06-29T00:00:00.000' AS DateTime), 5300, 24269, 450, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4895, CAST(N'2000-07-11T00:00:00.000' AS DateTime), 9750, 14950, 550, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4896, CAST(N'2000-07-11T00:00:00.000' AS DateTime), 6650, 14400, 300, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4900, CAST(N'2000-07-14T00:00:00.000' AS DateTime), 5300, 24269, 450, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4902, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 14552, 7050, 450, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4903, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 14555, 5000, 300, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4904, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 10750, 18600, 250, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4906, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 14601, 5000, 300, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4907, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 14601, 18600, 250, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4908, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 5650, 24252, 180, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4909, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 10750, 5000, 300, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4910, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 14618, 350, 1000, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4911, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 500, 5000, 300, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4912, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 11050, 23800, 400, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4913, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 10750, 18600, 300, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4914, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 7150, 5000, 300, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4915, CAST(N'2000-07-19T00:00:00.000' AS DateTime), 6650, 14400, 300, 7, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4916, CAST(N'2000-07-20T00:00:00.000' AS DateTime), 10750, 5000, 300, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4918, CAST(N'2000-07-20T00:00:00.000' AS DateTime), 7150, 5000, 300, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4919, CAST(N'2000-07-20T00:00:00.000' AS DateTime), 14601, 18600, 250, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4921, CAST(N'2000-08-01T00:00:00.000' AS DateTime), 5300, 350, 300, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4923, CAST(N'2000-08-09T00:00:00.000' AS DateTime), 14250, 19350, 650, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4924, CAST(N'2000-08-10T00:00:00.000' AS DateTime), 14555, 24259, 550, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4925, CAST(N'2000-08-10T00:00:00.000' AS DateTime), 4400, 24259, 600, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4926, CAST(N'2000-08-10T00:00:00.000' AS DateTime), 14524, 24259, 750, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4928, CAST(N'2000-08-16T00:00:00.000' AS DateTime), 500, 23800, 500, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4930, CAST(N'2000-09-01T00:00:00.000' AS DateTime), 6650, 1500, 450, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4931, CAST(N'2000-09-08T00:00:00.000' AS DateTime), 5300, 24259, 550, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4932, CAST(N'2000-09-15T00:00:00.000' AS DateTime), 14562, 24252, 0, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4933, CAST(N'2000-09-21T00:00:00.000' AS DateTime), 6650, 350, 300, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4934, CAST(N'2000-09-21T00:00:00.000' AS DateTime), 10750, 18600, 250, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4935, CAST(N'2000-09-21T00:00:00.000' AS DateTime), 5300, 24269, 450, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4936, CAST(N'2000-09-21T00:00:00.000' AS DateTime), 10750, 18600, 250, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4937, CAST(N'2000-09-21T00:00:00.000' AS DateTime), 14524, 8500, 925, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4938, CAST(N'2000-09-21T00:00:00.000' AS DateTime), 14562, 350, 400, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4939, CAST(N'2000-09-21T00:00:00.000' AS DateTime), 14562, 8500, 1350, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4940, CAST(N'2000-09-21T00:00:00.000' AS DateTime), 14300, 24269, 450, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4942, CAST(N'2000-09-25T00:00:00.000' AS DateTime), 6650, 1500, 450, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4943, CAST(N'2000-09-25T00:00:00.000' AS DateTime), 500, 1500, 450, 2, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4944, CAST(N'2000-10-04T00:00:00.000' AS DateTime), 6650, 23800, 475, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4946, CAST(N'2000-10-31T00:00:00.000' AS DateTime), 9750, 350, 300, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4947, CAST(N'2000-10-31T00:00:00.000' AS DateTime), 6650, 14400, 300, 3, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4948, CAST(N'2000-11-10T00:00:00.000' AS DateTime), 14555, 24259, 600, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4949, CAST(N'2000-11-13T00:00:00.000' AS DateTime), 14555, 350, 300, 4, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4951, CAST(N'2000-11-14T00:00:00.000' AS DateTime), 6650, 4250, 250, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4952, CAST(N'2000-11-24T00:00:00.000' AS DateTime), 5300, 20400, 400, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4954, CAST(N'2000-11-24T00:00:00.000' AS DateTime), 11050, 14950, 550, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4955, CAST(N'2000-11-24T00:00:00.000' AS DateTime), 6650, 350, 300, 5, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4956, CAST(N'2000-11-24T00:00:00.000' AS DateTime), 6650, 350, 400, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4957, CAST(N'2000-12-01T00:00:00.000' AS DateTime), 6650, 1500, 450, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4958, CAST(N'2000-12-12T00:00:00.000' AS DateTime), 10750, 350, 400, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4959, CAST(N'2000-12-17T00:00:00.000' AS DateTime), 500, 1500, 150, 6, 0)
INSERT [dbo].[contract] ([contractId], [startDate], [groupId], [clubId], [pricePerPerformace], [numberOfPerformances], [totalPrice]) VALUES (4960, CAST(N'2000-12-19T00:00:00.000' AS DateTime), 14300, 21700, 250, 6, 0)
SET IDENTITY_INSERT [dbo].[contract] OFF
SET IDENTITY_INSERT [dbo].[groupInstrument] ON 

INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (1, 500, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (2, 500, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (3, 500, N'M')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (4, 500, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (5, 1650, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (6, 1650, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (7, 3700, N'BG')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (8, 3700, N'D')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (9, 3700, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (10, 3700, N'StG')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (11, 3700, N'V')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (12, 4400, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (13, 4400, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (14, 4400, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (15, 4400, N'V')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (16, 5200, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (17, 5300, N'AcP')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (18, 5300, N'BG')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (19, 5300, N'D')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (20, 5300, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (21, 5300, N'Sax')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (22, 5300, N'V')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (23, 5650, N'AcP')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (24, 5650, N'B')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (25, 5650, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (26, 6650, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (27, 6650, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (28, 6650, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (29, 7150, N'Ka')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (30, 7150, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (31, 9750, N'AcG')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (32, 9750, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (33, 10750, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (34, 11050, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (35, 11050, N'Tp')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (36, 14200, N'Dis')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (37, 14250, N'B')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (38, 14250, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (39, 14250, N'Sax')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (40, 14300, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (41, 14300, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (42, 14300, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (43, 14524, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (44, 14524, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (45, 14524, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (46, 14536, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (47, 14536, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (48, 14536, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (49, 14555, N'AcG')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (50, 14555, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (51, 14555, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (52, 14601, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (53, 14601, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (54, 14601, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (55, 14615, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (56, 14615, N'Keys')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (57, 14615, N'Sax')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (58, 14615, N'Seq')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (59, 14618, N'BG')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (60, 14618, N'D')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (61, 14618, N'G')
INSERT [dbo].[groupInstrument] ([groupInstumentId], [groupId], [instrumentCode]) VALUES (62, 14618, N'StG')
SET IDENTITY_INSERT [dbo].[groupInstrument] OFF
SET IDENTITY_INSERT [dbo].[groups] ON 

INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (500, 3, N'The Yurts', N'C')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (1650, 1, N'Non-Nutritious', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (3700, 3, N'Internal Hemorrhage', N'CR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (4400, 3, N'Tomes', N'TOP40')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (5200, 2, N'Blind Logwara', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (5300, 5, N'Muddled Thoughts', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (5650, 2, N'The Buddy Love Orchestra', N'Clsc')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (6650, 3, N'Monk Seal', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (7150, 1, N'Cornish Game Hens', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (8350, 1, N'Generation Sex', N'CR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (9750, 2, N'Seiza Bench', N'Flk')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (10750, 1, N'King Tut and the Uncommons', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (11050, 1, N'Jelly Plug', N'TOP40')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14200, 1, N'The Kevins', N'Kr')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14250, 3, N'Bedcandy', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14300, 1, N'Life Irritates Art', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14524, 2, N'The Codpieces', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14536, 2, N'Bucky and the Fullerenes', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14552, 2, N'Henry and Otis', N'TOP40')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14555, 1, N'Shaman''s Apprentice', N'Con')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14562, 2, N'Apes of Wrath', N'MOR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14601, 1, N'Tiny People', N'Clsc')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14615, 4, N'Urban Runoff', N'CR')
INSERT [dbo].[groups] ([groupId], [size], [name], [styleCode]) VALUES (14618, 4, N'Supertube', N'CR')
SET IDENTITY_INSERT [dbo].[groups] OFF
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'AcG', N'Acoustic Guitar')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'AcP', N'Acoustic Piano')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'B', N'Bass')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'BG', N'Bass Guitar')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Cg', N'Conga Drums')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Cl', N'Clarinet')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'D', N'Drums')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Dis', N'Disco')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'F', N'Flute')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Fdl', N'Fiddle')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'G', N'Guitar')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'H', N'Harp')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Hy', N'Hypnosis')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Ka', N'Karaoke')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Keys', N'Keyboards')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'L', N'Lights')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'M', N'Marimba')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Mg', N'Magician')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'P', N'Piano')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Sax', N'Saxophone')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'SD', N'Steel Drums')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Seq', N'Sequences')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'StG', N'Steel Guitar')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Tb', N'Trombone')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Tp', N'Tapes')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'Tr', N'Trumpet')
INSERT [dbo].[instrument] ([instrumentCode], [name]) VALUES (N'V', N'Vocals')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'50s', N'50s Music')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'C', N'Country')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'Clsc', N'Classic Rock & Roll')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'Cm', N'Comedy')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'Con', N'Contemporary')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'CR', N'Country-Rock')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'Flk', N'Folk')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'Kr', N'Karaoke')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'Mag', N'Magic')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'MOR', N'Middle of the Road')
INSERT [dbo].[style] ([styleCode], [name]) VALUES (N'TOP40', N'Top 40 Hits')
/****** Object:  Index [aaaaaclub_PK]    Script Date: 2017-10-05 10:58:43 AM ******/
ALTER TABLE [dbo].[club] ADD  CONSTRAINT [aaaaaclub_PK] PRIMARY KEY NONCLUSTERED 
(
	[clubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaacontract_PK]    Script Date: 2017-10-05 10:58:43 AM ******/
ALTER TABLE [dbo].[contract] ADD  CONSTRAINT [aaaaacontract_PK] PRIMARY KEY NONCLUSTERED 
(
	[contractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaagroupInstrument_PK]    Script Date: 2017-10-05 10:58:43 AM ******/
ALTER TABLE [dbo].[groupInstrument] ADD  CONSTRAINT [aaaaagroupInstrument_PK] PRIMARY KEY NONCLUSTERED 
(
	[groupInstumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaagroup_PK]    Script Date: 2017-10-05 10:58:43 AM ******/
ALTER TABLE [dbo].[groups] ADD  CONSTRAINT [aaaaagroup_PK] PRIMARY KEY NONCLUSTERED 
(
	[groupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aaaaainstrument_PK]    Script Date: 2017-10-05 10:58:43 AM ******/
ALTER TABLE [dbo].[instrument] ADD  CONSTRAINT [aaaaainstrument_PK] PRIMARY KEY NONCLUSTERED 
(
	[instrumentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aaaaastyle_PK]    Script Date: 2017-10-05 10:58:43 AM ******/
ALTER TABLE [dbo].[style] ADD  CONSTRAINT [aaaaastyle_PK] PRIMARY KEY NONCLUSTERED 
(
	[styleCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[groupInstrument] ADD  CONSTRAINT [DF__groupInst__Group__0425A276]  DEFAULT ((0)) FOR [groupId]
GO
ALTER TABLE [dbo].[club]  WITH CHECK ADD  CONSTRAINT [FK_club_style1] FOREIGN KEY([styleCode])
REFERENCES [dbo].[style] ([styleCode])
GO
ALTER TABLE [dbo].[club] CHECK CONSTRAINT [FK_club_style1]
GO
ALTER TABLE [dbo].[contract]  WITH CHECK ADD  CONSTRAINT [contract_FK00] FOREIGN KEY([clubId])
REFERENCES [dbo].[club] ([clubId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[contract] CHECK CONSTRAINT [contract_FK00]
GO
ALTER TABLE [dbo].[contract]  WITH CHECK ADD  CONSTRAINT [contract_FK01] FOREIGN KEY([groupId])
REFERENCES [dbo].[groups] ([groupId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[contract] CHECK CONSTRAINT [contract_FK01]
GO
ALTER TABLE [dbo].[groupInstrument]  WITH CHECK ADD  CONSTRAINT [groupInstrument_FK00] FOREIGN KEY([instrumentCode])
REFERENCES [dbo].[instrument] ([instrumentCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[groupInstrument] CHECK CONSTRAINT [groupInstrument_FK00]
GO
ALTER TABLE [dbo].[groupInstrument]  WITH CHECK ADD  CONSTRAINT [groupInstrument_FK01] FOREIGN KEY([groupId])
REFERENCES [dbo].[groups] ([groupId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[groupInstrument] CHECK CONSTRAINT [groupInstrument_FK01]
GO
ALTER TABLE [dbo].[groups]  WITH CHECK ADD  CONSTRAINT [FK_groups_style] FOREIGN KEY([styleCode])
REFERENCES [dbo].[style] ([styleCode])
GO
ALTER TABLE [dbo].[groups] CHECK CONSTRAINT [FK_groups_style]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'900' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Club ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique club number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ClubID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ClubID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'club' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Club Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Club name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ClubName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'45' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ClubName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'club' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Club Phone Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Club phone number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_InputMask', @value=N'!\(999") "000\-0000;0;_' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'phone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'phone' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'club' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'style of the club''s entertainment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'club' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'28/09/1998 11:06:39 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'02/03/2010 3:21:46 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Master clubs table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SubdatasheetName', @value=N'[Auto]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'club' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'club'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Contract Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique contract number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'contractNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'contractNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'contractId'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1395' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'=Date()' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Contract Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date contract created' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'startDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'startDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Group ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'1584;1440;720;0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Group ID for this contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'4104twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'qryGroupNamesSorted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'groupId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'groupId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Club ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'2160;1080;0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link to Club for this contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'3600twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'qryClubsSorted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'clubId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'clubId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'clubId'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Contract Price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contract price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract', @level2type=N'COLUMN',@level2name=N'pricePerPerformace'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontHeight', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontItalic', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontName', @value=N'Times New Roman' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontUnderline', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontWeight', @value=N'400' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeColor', @value=N'33554432' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeColor12', @value=N'33554432' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesBehavior', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'28/09/1998 11:06:42 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'02/03/2010 3:21:46 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Master contracts table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'282' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'TabularCharSet', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'TabularFamily', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'contract'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'GenUniqueID()' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Group ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'GroupId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'GroupId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'groupInstrument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1575' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Instrument Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code for instrument or entertainment type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'InstrumentCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'InstrumentCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'groupInstrument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'28/09/1998 11:06:45 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'02/03/2010 3:21:46 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Group instruments link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'groupInstrument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'62' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groupInstrument'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1080' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique group number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'groupId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'groupId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'groupId'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'735' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Group size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Standard' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2025' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Group name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'style of music played' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontHeight', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontItalic', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontName', @value=N'Times New Roman' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontUnderline', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontWeight', @value=N'400' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeColor', @value=N'33554432' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeColor12', @value=N'33554432' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesBehavior', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'28/09/1998 11:06:45 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'02/03/2010 3:21:46 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Master Groups table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'TabularCharSet', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'TabularFamily', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'groups'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Instrument Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code for this instrument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'InstrumentCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'InstrumentCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'instrument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'instrumentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Instrument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name of the instrument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'InstrumentName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'InstrumentName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'instrument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'28/09/1998 11:06:46 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'02/03/2010 3:21:46 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Instrument codes table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'instrument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'27' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'instrument'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Style Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code for style of music' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'StyleCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'StyleCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'styleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2340' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Style Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Long description for style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'StyleDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'StyleDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'28/09/1998 11:06:47 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'02/03/2010 3:21:46 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Styles code table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'style'
GO
USE [master]
GO
ALTER DATABASE [Clubs] SET  READ_WRITE 
GO
