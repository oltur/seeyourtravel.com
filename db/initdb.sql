USE [master]
GO
/****** Object:  Database [SeeYourTravel2]    Script Date: 8/4/2015 10:28:41 AM ******/
CREATE DATABASE [SeeYourTravel2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SeeYourTravel', FILENAME = N'D:\DATA\SeeYourTravel2.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SeeYourTravel_log', FILENAME = N'D:\DATA\SeeYourTravel2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SeeYourTravel2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SeeYourTravel2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SeeYourTravel2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET ARITHABORT OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SeeYourTravel2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SeeYourTravel2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SeeYourTravel2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SeeYourTravel2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SeeYourTravel2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET RECOVERY FULL 
GO
ALTER DATABASE [SeeYourTravel2] SET  MULTI_USER 
GO
ALTER DATABASE [SeeYourTravel2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SeeYourTravel2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SeeYourTravel2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SeeYourTravel2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SeeYourTravel', N'ON'
GO
USE [SeeYourTravel2]
GO
/****** Object:  User [SeeYourTravel2]    Script Date: 8/4/2015 10:28:41 AM ******/
CREATE USER [SeeYourTravel] FOR LOGIN [SeeYourTravel] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [SeeYourTravel]
GO
/****** Object:  StoredProcedure [dbo].[GetFriendsLocations]    Script Date: 8/4/2015 10:28:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFriendsLocations] 
	@UserID uniqueidentifier 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	select u.UserID, u.UserName, ul.Lat, ul.Lng, ul.[Time] from UserLocation ul
	inner join [User] u on ul.UserID = u.UserID
	where ul.Time = 
	(select max(ul2.[Time]) from UserLocation ul2 where ul2.UserID = ul.UserID )
END

GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/4/2015 10:28:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 8/4/2015 10:28:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPassword] [nvarchar](100) NOT NULL,
	[FacebookId] [nvarchar](100) NULL,
	[Disabled] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLocation]    Script Date: 8/4/2015 10:28:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLocation](
	[UserLocationID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[Lat] [float] NOT NULL,
	[Lng] [float] NOT NULL,
	[Time] [datetime] NOT NULL,
 CONSTRAINT [PK_UserLocation] PRIMARY KEY CLUSTERED 
(
	[UserLocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 8/4/2015 10:28:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[UserLoginID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[Time] [datetime] NOT NULL,
	[LoginType] [nvarchar](50) NOT NULL,
	[CallerIp] [nvarchar](max) NULL,
	[CallerAgent] [nvarchar](max) NULL,
	[CalledUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[UserLoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 8/4/2015 10:28:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_RoleID]  DEFAULT (newid()) FOR [RoleID]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_UserID]  DEFAULT (newid()) FOR [UserID]
GO
ALTER TABLE [dbo].[UserLocation] ADD  CONSTRAINT [DF_UserLocation_UserLocationID]  DEFAULT (newid()) FOR [UserLocationID]
GO
ALTER TABLE [dbo].[UserLocation] ADD  CONSTRAINT [DF_UserLocation_Time]  DEFAULT (getdate()) FOR [Time]
GO
ALTER TABLE [dbo].[UserLogin] ADD  CONSTRAINT [DF_UserLogin_UserLoginID]  DEFAULT (newid()) FOR [UserLoginID]
GO
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [DF_UserRole_UserRoleID]  DEFAULT (newid()) FOR [UserRoleID]
GO
ALTER TABLE [dbo].[UserLocation]  WITH CHECK ADD  CONSTRAINT [FK_UserLocation_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserLocation] CHECK CONSTRAINT [FK_UserLocation_User]
GO
ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserLogin] CHECK CONSTRAINT [FK_UserLogin_User]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
USE [master]
GO
ALTER DATABASE [SeeYourTravel2] SET  READ_WRITE 
GO
