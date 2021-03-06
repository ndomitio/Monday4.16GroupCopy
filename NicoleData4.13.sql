USE [master]
GO
/****** Object:  Database [Phyt-RxProjectDB]    Script Date: 4/16/2018 11:28:33 AM ******/
CREATE DATABASE [Phyt-RxProjectDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Phyt-RxProjectDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Phyt-RxProjectDB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Phyt-RxProjectDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Phyt-RxProjectDB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Phyt-RxProjectDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Phyt-RxProjectDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Phyt-RxProjectDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET  MULTI_USER 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Phyt-RxProjectDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Phyt-RxProjectDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Phyt-RxProjectDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Durations]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Durations](
	[DurID] [int] IDENTITY(1,1) NOT NULL,
	[DurName] [int] NOT NULL,
	[Reps] [int] NOT NULL,
	[Sets] [int] NOT NULL,
	[Holds] [int] NOT NULL,
	[Bands] [nvarchar](20) NULL,
	[Weights] [int] NULL,
	[PerDays] [int] NOT NULL,
	[XDays] [int] NOT NULL,
	[ExID] [int] NOT NULL,
 CONSTRAINT [PK_Durations] PRIMARY KEY CLUSTERED 
(
	[DurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exercises]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exercises](
	[ExID] [int] IDENTITY(1,1) NOT NULL,
	[ExName] [nvarchar](200) NOT NULL,
	[ExDesc] [nvarchar](max) NOT NULL,
	[ExPic1] [nvarchar](max) NULL,
	[ExVid] [nvarchar](max) NULL,
	[RxID] [int] NULL,
	[DurID] [int] NULL,
 CONSTRAINT [PK_Exercises] PRIMARY KEY CLUSTERED 
(
	[ExID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logs]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[PainNumb] [int] NOT NULL,
	[DiffNumb] [int] NOT NULL,
	[ComTxt] [nvarchar](200) NULL,
	[IsComplete] [bit] NOT NULL,
	[FullSet] [int] NULL,
	[PartialSet] [int] NULL,
	[PID] [int] NOT NULL,
	[PhID] [int] NOT NULL,
	[RxID] [int] NOT NULL,
	[ExID] [int] NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patients]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[PPic] [nvarchar](200) NULL,
	[PhID] [int] NULL,
	[LogID] [int] NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Physicians]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Physicians](
	[PhID] [int] IDENTITY(1,1) NOT NULL,
	[PhName] [nvarchar](100) NULL,
	[PhPic] [nvarchar](200) NULL,
	[PID] [int] NULL,
	[LogID] [int] NULL,
	[RxID] [int] NULL,
 CONSTRAINT [PK_Physicians] PRIMARY KEY CLUSTERED 
(
	[PhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RX]    Script Date: 4/16/2018 11:28:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RX](
	[RxID] [int] IDENTITY(1,1) NOT NULL,
	[RxName] [nvarchar](100) NOT NULL,
	[ExID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[PhID] [int] NOT NULL,
	[LogID] [int] NULL,
 CONSTRAINT [PK_RX] PRIMARY KEY CLUSTERED 
(
	[RxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'49d75daa-5e7c-4d2e-8e29-1e35b1f5eab6', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'bfa3846e-20e1-4819-9dfe-efe12821a825', N'Doctor')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2a4475f8-603d-40eb-97da-70e47dfc661b', N'Patient')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'116add42-85cb-45bc-9d44-d1f9057ba84c', N'49d75daa-5e7c-4d2e-8e29-1e35b1f5eab6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c765e81-0e6d-4068-8caa-803444ebb102', N'2a4475f8-603d-40eb-97da-70e47dfc661b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c10fff15-a7af-476b-84b3-95ca35eae09b', N'2a4475f8-603d-40eb-97da-70e47dfc661b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f7916cab-24bb-440c-9b2b-9ad60a0f2cc3', N'bfa3846e-20e1-4819-9dfe-efe12821a825')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'116add42-85cb-45bc-9d44-d1f9057ba84c', N'Dr.Doctor@gmail.com', 0, N'AAZ5fOM+Bkug2I1hBHmuJOpAOO7xWRNg9y82CZz9ynnjTXOVAthQ+wnAdAbPw/ORDg==', N'f14f223d-c380-4d17-8201-8076b3f1cf35', NULL, 0, 0, NULL, 0, 0, N'Dr.Doctor')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7c765e81-0e6d-4068-8caa-803444ebb102', N'Mana@doggie.com', 0, N'AB1TeDTYIaLIAyS8nqkZCQRafHCJJ83/m/IaSnTP+dwQ7dk8wqnMxcvzplX5wdSthA==', N'd933904b-2b67-4ad3-86ac-39c5d5b40be6', NULL, 0, 0, NULL, 1, 0, N'Mana@doggie.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c10fff15-a7af-476b-84b3-95ca35eae09b', N'Emmalani@doggie.com', 0, N'AO4gS8VLRgZm3Pyq5dx815/yJGtS/p9gStqDEsZle8U3UThC497GkfkSi2SgMSdTug==', N'522c0453-8969-4495-b241-79519a812312', NULL, 0, 0, NULL, 1, 0, N'Emmalani@doggie.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f7916cab-24bb-440c-9b2b-9ad60a0f2cc3', N'Dr.Bina@kitty.com', 0, N'AF6CdEvq5f7VwZjb3jHPYEEGpMgHUj8lJjDKdQ9ZD2i642KrnL6GlTlpuO4Ts4XgwQ==', N'0465012a-8782-45e9-9786-c3beef25b4f5', NULL, 0, 0, NULL, 1, 0, N'Dr.Bina@kitty.com')
SET IDENTITY_INSERT [dbo].[Durations] ON 

INSERT [dbo].[Durations] ([DurID], [DurName], [Reps], [Sets], [Holds], [Bands], [Weights], [PerDays], [XDays], [ExID]) VALUES (1, 1, 5, 3, 5, NULL, NULL, 2, 3, 1)
INSERT [dbo].[Durations] ([DurID], [DurName], [Reps], [Sets], [Holds], [Bands], [Weights], [PerDays], [XDays], [ExID]) VALUES (2, 2, 5, 3, 5, N'Red', NULL, 2, 3, 2)
INSERT [dbo].[Durations] ([DurID], [DurName], [Reps], [Sets], [Holds], [Bands], [Weights], [PerDays], [XDays], [ExID]) VALUES (3, 3, 5, 3, 5, NULL, 2, 2, 3, 5)
SET IDENTITY_INSERT [dbo].[Durations] OFF
SET IDENTITY_INSERT [dbo].[Exercises] ON 

INSERT [dbo].[Exercises] ([ExID], [ExName], [ExDesc], [ExPic1], [ExVid], [RxID], [DurID]) VALUES (1, N'Hip: Bridge', N'1. Lie on your back with your knees bent. Flatten your back and exhale to set your ribs down. Perform a glute squeeze to activate the glutes.  2. Pushing through your heels, use your glutes to raise your hips up off the ground. You should feel your glute muscles and hamstring muscles engage. Keep your back relaxed and your ribs down throughout the movement. ', N'/Content/images/bridge.gif', N'/Content/images/IMG_0572.mp4', 1, NULL)
INSERT [dbo].[Exercises] ([ExID], [ExName], [ExDesc], [ExPic1], [ExVid], [RxID], [DurID]) VALUES (2, N'Hip: Side Lying Clamshell', N'1. Position yourself on your side with your back rounded and your “tail tucked.” 2. Keeping your back rounded and your ankles together, squeeze your top glute muscle and rotate the knee up. You should feel your top outer hip and glute muscle engage. ', N'/Content/images/sidelying_clamshell.gif', N'/Content/images/IMG_0574.mp4', 1, NULL)
INSERT [dbo].[Exercises] ([ExID], [ExName], [ExDesc], [ExPic1], [ExVid], [RxID], [DurID]) VALUES (5, N'Hip: Side Lying Hip Abduction', N'1. Lie on your side with your ankle, knee, hip, and shoulders in a straight line. Do a slight “tail tuck”.  2. Keeping your leg straight, lift your leg up using your glute muscle. Try not to arch your back or side bend your trunk. You should feel your outer hip muscle engage.', N'/Content/images/Sidelying Hip Abduction.gif', N'/Content/images/IMG_0575.mp4', 1, NULL)
SET IDENTITY_INSERT [dbo].[Exercises] OFF
SET IDENTITY_INSERT [dbo].[Logs] ON 

INSERT [dbo].[Logs] ([LogID], [PainNumb], [DiffNumb], [ComTxt], [IsComplete], [FullSet], [PartialSet], [PID], [PhID], [RxID], [ExID]) VALUES (1, 8, 4, N'Ouch', 0, 2, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Logs] OFF
SET IDENTITY_INSERT [dbo].[Patients] ON 

INSERT [dbo].[Patients] ([PID], [UserID], [PPic], [PhID], [LogID]) VALUES (1, N'116add42-85cb-45bc-9d44-d1f9057ba84c', NULL, 1, NULL)
INSERT [dbo].[Patients] ([PID], [UserID], [PPic], [PhID], [LogID]) VALUES (2, N'7c765e81-0e6d-4068-8caa-803444ebb102', N'/Content/images/Mana.JPG', 1, NULL)
INSERT [dbo].[Patients] ([PID], [UserID], [PPic], [PhID], [LogID]) VALUES (3, N'c10fff15-a7af-476b-84b3-95ca35eae09b', N'/Content/images/Emmalani.JPG', 1, NULL)
SET IDENTITY_INSERT [dbo].[Patients] OFF
SET IDENTITY_INSERT [dbo].[Physicians] ON 

INSERT [dbo].[Physicians] ([PhID], [PhName], [PhPic], [PID], [LogID], [RxID]) VALUES (1, N'Doctor Test', NULL, NULL, NULL, NULL)
INSERT [dbo].[Physicians] ([PhID], [PhName], [PhPic], [PID], [LogID], [RxID]) VALUES (2, N'Doctor Bina', N'/Content/images/Bina 2.JPG', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Physicians] OFF
SET IDENTITY_INSERT [dbo].[RX] ON 

INSERT [dbo].[RX] ([RxID], [RxName], [ExID], [PID], [PhID], [LogID]) VALUES (1, N'Hips 1', 1, 1, 1, NULL)
INSERT [dbo].[RX] ([RxID], [RxName], [ExID], [PID], [PhID], [LogID]) VALUES (2, N'Hips 1', 2, 1, 1, NULL)
INSERT [dbo].[RX] ([RxID], [RxName], [ExID], [PID], [PhID], [LogID]) VALUES (3, N'Hips 2', 3, 2, 2, NULL)
SET IDENTITY_INSERT [dbo].[RX] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/16/2018 11:28:33 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/16/2018 11:28:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/16/2018 11:28:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/16/2018 11:28:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/16/2018 11:28:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/16/2018 11:28:33 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Durations]  WITH CHECK ADD  CONSTRAINT [FK_Durations_Exercises] FOREIGN KEY([ExID])
REFERENCES [dbo].[Exercises] ([ExID])
GO
ALTER TABLE [dbo].[Durations] CHECK CONSTRAINT [FK_Durations_Exercises]
GO
ALTER TABLE [dbo].[Exercises]  WITH CHECK ADD  CONSTRAINT [FK_Exercises_RX] FOREIGN KEY([RxID])
REFERENCES [dbo].[RX] ([RxID])
GO
ALTER TABLE [dbo].[Exercises] CHECK CONSTRAINT [FK_Exercises_RX]
GO
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_Logs_Exercises] FOREIGN KEY([ExID])
REFERENCES [dbo].[Exercises] ([ExID])
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_Logs_Exercises]
GO
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_Logs_RX] FOREIGN KEY([RxID])
REFERENCES [dbo].[RX] ([RxID])
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_Logs_RX]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_AspNetUsers]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_Logs] FOREIGN KEY([LogID])
REFERENCES [dbo].[Logs] ([LogID])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_Logs]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_Physicians] FOREIGN KEY([PhID])
REFERENCES [dbo].[Physicians] ([PhID])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_Physicians]
GO
ALTER TABLE [dbo].[Physicians]  WITH CHECK ADD  CONSTRAINT [FK_Physicians_Logs] FOREIGN KEY([LogID])
REFERENCES [dbo].[Logs] ([LogID])
GO
ALTER TABLE [dbo].[Physicians] CHECK CONSTRAINT [FK_Physicians_Logs]
GO
ALTER TABLE [dbo].[Physicians]  WITH CHECK ADD  CONSTRAINT [FK_Physicians_RX] FOREIGN KEY([RxID])
REFERENCES [dbo].[RX] ([RxID])
GO
ALTER TABLE [dbo].[Physicians] CHECK CONSTRAINT [FK_Physicians_RX]
GO
ALTER TABLE [dbo].[RX]  WITH CHECK ADD  CONSTRAINT [FK_RX_Patients] FOREIGN KEY([PID])
REFERENCES [dbo].[Patients] ([PID])
GO
ALTER TABLE [dbo].[RX] CHECK CONSTRAINT [FK_RX_Patients]
GO
USE [master]
GO
ALTER DATABASE [Phyt-RxProjectDB] SET  READ_WRITE 
GO
