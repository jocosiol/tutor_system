USE [master]
GO
/****** Object:  Database [tutorb]    Script Date: 07/23/2013 13:38:16 ******/
CREATE DATABASE [tutorb] ON  PRIMARY 
( NAME = N'tutorb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\tutorb.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tutorb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\tutorb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tutorb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tutorb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tutorb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [tutorb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [tutorb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [tutorb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [tutorb] SET ARITHABORT OFF
GO
ALTER DATABASE [tutorb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [tutorb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [tutorb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [tutorb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [tutorb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [tutorb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [tutorb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [tutorb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [tutorb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [tutorb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [tutorb] SET  DISABLE_BROKER
GO
ALTER DATABASE [tutorb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [tutorb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [tutorb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [tutorb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [tutorb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [tutorb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [tutorb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [tutorb] SET  READ_WRITE
GO
ALTER DATABASE [tutorb] SET RECOVERY FULL
GO
ALTER DATABASE [tutorb] SET  MULTI_USER
GO
ALTER DATABASE [tutorb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [tutorb] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'tutorb', N'ON'
GO
USE [tutorb]
GO
/****** Object:  Table [dbo].[userr]    Script Date: 07/23/2013 13:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userr](
	[userid] [varchar](20) NOT NULL,
	[usertype] [char](1) NOT NULL,
	[username] [varchar](500) NULL,
	[password] [varchar](100) NULL,
	[officenum] [varchar](10) NULL,
	[email] [varchar](500) NULL,
	[cellphone] [varchar](10) NULL,
	[exchangenum] [varchar](10) NULL,
	[registerdate] [date] NOT NULL,
	[updatedate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tutoraccount]    Script Date: 07/23/2013 13:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tutoraccount](
	[tutorID] [varchar](25) NOT NULL,
	[FirstName] [varchar](25) NULL,
	[LastName] [varchar](25) NULL,
	[Password] [varchar](50) NULL,
	[ProSpecialization] [varchar](25) NULL,
	[Department] [varchar](25) NULL,
	[Phone] [varchar](10) NULL,
	[Ext] [varchar](6) NULL,
	[Email] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[tutorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student]    Script Date: 07/23/2013 13:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[StudentID] [varchar](25) NOT NULL,
	[FirstName] [varchar](25) NULL,
	[LastName] [varchar](25) NULL,
	[Password] [varchar](25) NULL,
	[programname] [varchar](60) NULL,
	[currentsemester] [varchar](25) NULL,
	[Phone] [varchar](10) NULL,
	[Email] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[schedules]    Script Date: 07/23/2013 13:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[schedules](
	[scheduleid] [varchar](25) NOT NULL,
	[tutorid] [varchar](25) NULL,
	[dates] [date] NULL,
	[starttime] [time](7) NULL,
	[endtime] [time](7) NULL,
	[studentid] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[scheduleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cancel]    Script Date: 07/23/2013 13:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cancel](
	[Cancelid] [varchar](25) NOT NULL,
	[Firstname] [varchar](25) NULL,
	[Lastname] [varchar](25) NULL,
	[Date] [date] NULL,
	[Starttime] [time](7) NULL,
	[Endtime] [time](7) NULL,
	[tutorid] [varchar](25) NULL,
	[Studentid] [varchar](25) NULL,
	[Comment] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cancelid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Appointmentt]    Script Date: 07/23/2013 13:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Appointmentt](
	[AppointmentID] [varchar](25) NOT NULL,
	[StudentID] [varchar](25) NULL,
	[SchduleID] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[appointment]    Script Date: 07/23/2013 13:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[appointment](
	[AppointmentID] [varchar](25) NOT NULL,
	[FirstName] [varchar](25) NULL,
	[LastName] [varchar](25) NULL,
	[Date] [date] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[StudentID] [varchar](25) NULL,
	[tutorID] [varchar](25) NULL,
	[Comment] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__userr__username__2B3F6F97]    Script Date: 07/23/2013 13:38:16 ******/
ALTER TABLE [dbo].[userr] ADD  DEFAULT (NULL) FOR [username]
GO
/****** Object:  Default [DF__userr__password__2C3393D0]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[userr] ADD  DEFAULT (NULL) FOR [password]
GO
/****** Object:  Default [DF__userr__officenum__2D27B809]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[userr] ADD  DEFAULT (NULL) FOR [officenum]
GO
/****** Object:  Default [DF__userr__email__2E1BDC42]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[userr] ADD  DEFAULT (NULL) FOR [email]
GO
/****** Object:  Default [DF__userr__cellphone__2F10007B]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[userr] ADD  DEFAULT (NULL) FOR [cellphone]
GO
/****** Object:  Default [DF__userr__exchangen__300424B4]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[userr] ADD  DEFAULT (NULL) FOR [exchangenum]
GO
/****** Object:  Default [DF__tutoracco__First__014935CB]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[tutoraccount] ADD  DEFAULT (NULL) FOR [FirstName]
GO
/****** Object:  Default [DF__tutoracco__LastN__023D5A04]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[tutoraccount] ADD  DEFAULT (NULL) FOR [LastName]
GO
/****** Object:  Default [DF__tutoracco__Passw__03317E3D]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[tutoraccount] ADD  DEFAULT (NULL) FOR [Password]
GO
/****** Object:  Default [DF__tutoracco__ProSp__0425A276]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[tutoraccount] ADD  DEFAULT (NULL) FOR [ProSpecialization]
GO
/****** Object:  Default [DF__tutoracco__Depar__0519C6AF]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[tutoraccount] ADD  DEFAULT (NULL) FOR [Department]
GO
/****** Object:  Default [DF__tutoracco__Phone__060DEAE8]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[tutoraccount] ADD  DEFAULT (NULL) FOR [Phone]
GO
/****** Object:  Default [DF__tutoraccoun__Ext__07020F21]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[tutoraccount] ADD  DEFAULT (NULL) FOR [Ext]
GO
/****** Object:  Default [DF__tutoracco__Email__07F6335A]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[tutoraccount] ADD  DEFAULT (NULL) FOR [Email]
GO
/****** Object:  Default [DF__student__FirstNa__20C1E124]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[student] ADD  DEFAULT (NULL) FOR [FirstName]
GO
/****** Object:  Default [DF__student__LastNam__21B6055D]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[student] ADD  DEFAULT (NULL) FOR [LastName]
GO
/****** Object:  Default [DF__student__Passwor__22AA2996]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[student] ADD  DEFAULT (NULL) FOR [Password]
GO
/****** Object:  Default [DF__student__program__239E4DCF]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[student] ADD  DEFAULT (NULL) FOR [programname]
GO
/****** Object:  Default [DF__student__current__24927208]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[student] ADD  DEFAULT (NULL) FOR [currentsemester]
GO
/****** Object:  Default [DF__student__Phone__25869641]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[student] ADD  DEFAULT (NULL) FOR [Phone]
GO
/****** Object:  Default [DF__student__Email__267ABA7A]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[student] ADD  DEFAULT (NULL) FOR [Email]
GO
/****** Object:  Default [DF__schedules__tutor__182C9B23]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[schedules] ADD  DEFAULT (NULL) FOR [tutorid]
GO
/****** Object:  Default [DF__schedules__dates__1920BF5C]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[schedules] ADD  DEFAULT (NULL) FOR [dates]
GO
/****** Object:  Default [DF__schedules__start__1A14E395]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[schedules] ADD  DEFAULT (NULL) FOR [starttime]
GO
/****** Object:  Default [DF__schedules__endti__1B0907CE]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[schedules] ADD  DEFAULT (NULL) FOR [endtime]
GO
/****** Object:  Default [DF__schedules__stude__1BFD2C07]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[schedules] ADD  DEFAULT ('Available') FOR [studentid]
GO
/****** Object:  Default [DF__appointme__First__0CBAE877]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[appointment] ADD  DEFAULT (NULL) FOR [FirstName]
GO
/****** Object:  Default [DF__appointme__LastN__0DAF0CB0]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[appointment] ADD  DEFAULT (NULL) FOR [LastName]
GO
/****** Object:  Default [DF__appointmen__Date__0EA330E9]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[appointment] ADD  DEFAULT (NULL) FOR [Date]
GO
/****** Object:  Default [DF__appointme__Start__0F975522]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[appointment] ADD  DEFAULT (NULL) FOR [StartTime]
GO
/****** Object:  Default [DF__appointme__EndTi__108B795B]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[appointment] ADD  DEFAULT (NULL) FOR [EndTime]
GO
/****** Object:  Default [DF__appointme__Stude__117F9D94]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[appointment] ADD  DEFAULT ('Available') FOR [StudentID]
GO
/****** Object:  Default [DF__appointme__tutor__1273C1CD]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[appointment] ADD  DEFAULT (NULL) FOR [tutorID]
GO
/****** Object:  Default [DF__appointme__Comme__1367E606]    Script Date: 07/23/2013 13:38:17 ******/
ALTER TABLE [dbo].[appointment] ADD  DEFAULT (NULL) FOR [Comment]
GO
