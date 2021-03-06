USE [master]
GO
/****** Object:  Database [SharingPicturesSite]    Script Date: 3/25/2019 9:57:03 AM ******/
CREATE DATABASE [SharingPicturesSite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SharingPicturesSite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SharingPicturesSite.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SharingPicturesSite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SharingPicturesSite_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SharingPicturesSite] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SharingPicturesSite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SharingPicturesSite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET ARITHABORT OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SharingPicturesSite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SharingPicturesSite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SharingPicturesSite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SharingPicturesSite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SharingPicturesSite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SharingPicturesSite] SET  MULTI_USER 
GO
ALTER DATABASE [SharingPicturesSite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SharingPicturesSite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SharingPicturesSite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SharingPicturesSite] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SharingPicturesSite]
GO
/****** Object:  Table [dbo].[Galleries]    Script Date: 3/25/2019 9:57:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galleries](
	[GalleryId] [int] NOT NULL,
	[GalleryName] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Galleries] PRIMARY KEY CLUSTERED 
(
	[GalleryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Images]    Script Date: 3/25/2019 9:57:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageName] [nvarchar](50) NOT NULL,
	[Point] [int] NOT NULL,
	[UpVote] [text] NULL,
	[DownVote] [text] NULL,
	[GalleryId] [int] NOT NULL,
	[Uploader] [nvarchar](50) NOT NULL,
	[Favorite] [text] NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/25/2019 9:57:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[About] [text] NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Galleries] ([GalleryId], [GalleryName], [Status], [UserName]) VALUES (1, N'Animal', N'public', N'Alex')
INSERT [dbo].[Galleries] ([GalleryId], [GalleryName], [Status], [UserName]) VALUES (2, N'Natural', N'public', N'Luthor')
INSERT [dbo].[Images] ([ImageName], [Point], [UpVote], [DownVote], [GalleryId], [Uploader], [Favorite]) VALUES (N'12hdyancke93uajckdl1.jpg', 0, NULL, NULL, 2, N'Luthor', NULL)
INSERT [dbo].[Images] ([ImageName], [Point], [UpVote], [DownVote], [GalleryId], [Uploader], [Favorite]) VALUES (N'asejcmdkzzl13jsamcid.jpg', 0, NULL, NULL, 1, N'Alex', NULL)
INSERT [dbo].[Users] ([UserName], [Password], [Email], [Status], [Gender], [About], [Role]) VALUES (N'Admin', N'Admin', N'Rintoka@gmail.com', 1, N'male', NULL, 1)
INSERT [dbo].[Users] ([UserName], [Password], [Email], [Status], [Gender], [About], [Role]) VALUES (N'Alex', N'1234', N'Alex12@gmail.com', 1, N'male', NULL, 2)
INSERT [dbo].[Users] ([UserName], [Password], [Email], [Status], [Gender], [About], [Role]) VALUES (N'Luthor', N'1111', N'LuthorVinderxavick@gmail.com', 1, N'female', NULL, 2)
ALTER TABLE [dbo].[Galleries]  WITH CHECK ADD  CONSTRAINT [FK_Galleries_Users] FOREIGN KEY([UserName])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[Galleries] CHECK CONSTRAINT [FK_Galleries_Users]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Galleries] FOREIGN KEY([GalleryId])
REFERENCES [dbo].[Galleries] ([GalleryId])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Galleries]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Users] FOREIGN KEY([Uploader])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Users]
GO
USE [master]
GO
ALTER DATABASE [SharingPicturesSite] SET  READ_WRITE 
GO
