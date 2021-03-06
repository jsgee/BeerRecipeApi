USE [master]
GO
/****** Object:  Database [BeerAppDb]    Script Date: 7/23/2018 3:08:59 PM ******/
CREATE DATABASE [BeerAppDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
 --IMPORTANT!: Change "FILENAME" to Path you want to save the DB to.
( NAME = N'BeerAppDb', FILENAME = N'C:\Users\jlech\BeerAppDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
  --IMPORTANT!: Change "FILENAME" to Path you want to save the DB to.
( NAME = N'BeerAppDb_log', FILENAME = N'C:\Users\jlech\BeerAppDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BeerAppDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BeerAppDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BeerAppDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BeerAppDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BeerAppDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BeerAppDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BeerAppDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [BeerAppDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BeerAppDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BeerAppDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BeerAppDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BeerAppDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BeerAppDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BeerAppDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BeerAppDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BeerAppDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BeerAppDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BeerAppDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BeerAppDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BeerAppDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BeerAppDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BeerAppDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BeerAppDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BeerAppDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BeerAppDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BeerAppDb] SET  MULTI_USER 
GO
ALTER DATABASE [BeerAppDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BeerAppDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BeerAppDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BeerAppDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BeerAppDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BeerAppDb] SET QUERY_STORE = OFF
GO
USE [BeerAppDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [BeerAppDb]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 7/23/2018 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IngredientsInBeers]    Script Date: 7/23/2018 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientsInBeers](
	[RecipeId] [int] NOT NULL,
	[IngredientId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RecipeId] ASC,
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 7/23/2018 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ingredients] ON 
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (1, N'Hop Pellets')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (2, N'Beer Yeast')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (3, N'Water')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (4, N'Malt Extract')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (5, N'Belgian Candi Sugar')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (6, N'Honey')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (7, N'Sugar')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (8, N'Priming Sugar')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (9, N'Raspberry Base')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (10, N'Blueberry Base')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (11, N'Blackberry Base')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (12, N'Elderberry Base')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (13, N'Strawberry Base')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (14, N'Mango Base')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (15, N'Sweet Orange Peel')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (16, N'Cacao Nibs')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (17, N'Ginger')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (18, N'Cinnamon Sticks')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (19, N'Lactic Acid')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (20, N'Lactose')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (21, N'Oak Cubes')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (22, N'Malto Dextrin')
GO
INSERT [dbo].[Ingredients] ([Id], [Name]) VALUES (23, N'Biofine Clear')
GO
SET IDENTITY_INSERT [dbo].[Ingredients] OFF
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (1, 1)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (1, 2)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (1, 3)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (1, 4)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (1, 7)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (2, 1)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (2, 2)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (2, 3)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (2, 4)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (2, 7)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (3, 1)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (3, 2)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (3, 3)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (3, 4)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (3, 7)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (4, 1)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (4, 2)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (4, 3)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (4, 4)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (4, 7)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (5, 1)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (5, 2)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (5, 3)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (5, 4)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (5, 7)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (6, 1)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (6, 2)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (6, 3)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (6, 4)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (6, 7)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (8, 1)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (8, 2)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (8, 3)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (8, 4)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (8, 7)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (9, 1)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (9, 2)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (9, 3)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (9, 4)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (9, 7)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (10, 1)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (10, 2)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (10, 3)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (10, 4)
GO
INSERT [dbo].[IngredientsInBeers] ([RecipeId], [IngredientId]) VALUES (10, 7)
GO
SET IDENTITY_INSERT [dbo].[Recipes] ON 
GO
INSERT [dbo].[Recipes] ([Id], [Name]) VALUES (1, N'Test')
GO
INSERT [dbo].[Recipes] ([Id], [Name]) VALUES (4, N'TestPost')
GO
INSERT [dbo].[Recipes] ([Id], [Name]) VALUES (5, N'TestPost')
GO
INSERT [dbo].[Recipes] ([Id], [Name]) VALUES (6, N'TestPost')
GO
INSERT [dbo].[Recipes] ([Id], [Name]) VALUES (8, N'TestPost')
GO
INSERT [dbo].[Recipes] ([Id], [Name]) VALUES (9, N'TestPost')
GO
INSERT [dbo].[Recipes] ([Id], [Name]) VALUES (10, N'TestPost')
GO
SET IDENTITY_INSERT [dbo].[Recipes] OFF
GO
USE [master]
GO
ALTER DATABASE [BeerAppDb] SET  READ_WRITE 
GO
