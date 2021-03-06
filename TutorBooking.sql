USE [master]
GO
/****** Object:  Database [TutorBooking]    Script Date: 08/06/2013 08:23:28 ******/
CREATE DATABASE [TutorBooking] 
GO
ALTER DATABASE [TutorBooking] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TutorBooking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TutorBooking] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TutorBooking] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TutorBooking] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TutorBooking] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TutorBooking] SET ARITHABORT OFF
GO
ALTER DATABASE [TutorBooking] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TutorBooking] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TutorBooking] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TutorBooking] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TutorBooking] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TutorBooking] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TutorBooking] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TutorBooking] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TutorBooking] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TutorBooking] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TutorBooking] SET  DISABLE_BROKER
GO
ALTER DATABASE [TutorBooking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TutorBooking] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TutorBooking] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TutorBooking] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TutorBooking] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TutorBooking] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TutorBooking] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TutorBooking] SET  READ_WRITE
GO
ALTER DATABASE [TutorBooking] SET RECOVERY SIMPLE
GO
ALTER DATABASE [TutorBooking] SET  MULTI_USER
GO
ALTER DATABASE [TutorBooking] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TutorBooking] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'TutorBooking', N'ON'
GO
USE [TutorBooking]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 08/06/2013 08:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblAdmin] ON
INSERT [dbo].[tblAdmin] ([AdminId], [Name], [Email], [Password]) VALUES (1, N'Pawan', N'pawan@gmail.com', N'pawan123')
SET IDENTITY_INSERT [dbo].[tblAdmin] OFF
/****** Object:  Table [dbo].[tblCourse]    Script Date: 08/06/2013 08:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCourse](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_tblCourse] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblCourse] ON
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (8, N'COMP 212', N'Programming 3')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (9, N'COMP 311', N'Software Testing')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (10, N'COMM 171', N'English 171')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (11, N'COMM 161', N'English 161')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (12, N'COMP 329', N'Business and ICT')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (13, N'COMP 124', N'Networking')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (14, N'MATH 210', N'Linear Algebra and Statistics')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (15, N'COMP 303', N'Java EE Programming')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (16, N'COMP 307', N'Software Security')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (17, N'COMP 304', N'Wireless Programming')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (18, N'COMP 306', N'Web Service Programming')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (19, N'COMP 308', N'Emerging Technologies')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (20, N'COMP 321', N'Systems Integration')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (21, N'EMPS 102', N'Employment Skills 2')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (22, N'COMP 305', N'Game Programming 1')
INSERT [dbo].[tblCourse] ([CourseId], [CourseCode], [Name]) VALUES (23, N'COMP 392', N'Advanced Graphics')
SET IDENTITY_INSERT [dbo].[tblCourse] OFF
/****** Object:  Table [dbo].[tblTutor]    Script Date: 08/06/2013 08:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTutor](
	[TutorId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblTutor] PRIMARY KEY CLUSTERED 
(
	[TutorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblTutor] ON
INSERT [dbo].[tblTutor] ([TutorId], [Id], [Name], [Email], [Password], [Active]) VALUES (7, N'6733663636', N'Pawandeep Dhaliwal', N'pawan@gmail.com', N'pawan123', 1)
INSERT [dbo].[tblTutor] ([TutorId], [Id], [Name], [Email], [Password], [Active]) VALUES (8, N'4343434344', N'Nimerpreet Gill', N'nimerpreet@gmail.com', N'nimerpreet123', 1)
INSERT [dbo].[tblTutor] ([TutorId], [Id], [Name], [Email], [Password], [Active]) VALUES (9, N'7878787878', N'Shyam Sutariya', N'shyam@gmail.com', N'shyam123', 1)
SET IDENTITY_INSERT [dbo].[tblTutor] OFF
/****** Object:  Table [dbo].[tblStudent]    Script Date: 08/06/2013 08:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudent](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblStudent] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblStudent] ON
INSERT [dbo].[tblStudent] ([StudentId], [Id], [Name], [Address], [Email], [Password], [Active]) VALUES (6, N'3767676767', N'Pawandeep', N'12, Scaffold road', N'pawan@gmail.com', N'pawan123', 1)
INSERT [dbo].[tblStudent] ([StudentId], [Id], [Name], [Address], [Email], [Password], [Active]) VALUES (7, N'4587666666', N'Shyam Sutariya', N'23, Clairville Drive, Brampton', N'shyam@gmail.com', N'shyam123', 1)
INSERT [dbo].[tblStudent] ([StudentId], [Id], [Name], [Address], [Email], [Password], [Active]) VALUES (8, N'6767353434', N'Saumil', N'23, Midland Road', N'saumil@gmail.com', N'saumil123', 1)
INSERT [dbo].[tblStudent] ([StudentId], [Id], [Name], [Address], [Email], [Password], [Active]) VALUES (9, N'7655433424', N'Javier', N'23, Midland Road', N'javier@gmail.com', N'javier123', 1)
INSERT [dbo].[tblStudent] ([StudentId], [Id], [Name], [Address], [Email], [Password], [Active]) VALUES (10, N'7655433424', N'Aneela', N'23, Midland Road', N'aneela@gmail.com', N'aneela123', 1)
INSERT [dbo].[tblStudent] ([StudentId], [Id], [Name], [Address], [Email], [Password], [Active]) VALUES (11, N'8776567567', N'Anterpreet', N'34, Dundas West', N'anterpreet@gmail.com', N'anterpreet123', 1)
INSERT [dbo].[tblStudent] ([StudentId], [Id], [Name], [Address], [Email], [Password], [Active]) VALUES (12, N'8776567567', N'Nimerpreet', N'34, Dundas West', N'nimerpreet@gmail.com', N'nimerpreet123', 1)
INSERT [dbo].[tblStudent] ([StudentId], [Id], [Name], [Address], [Email], [Password], [Active]) VALUES (13, N'8776767676', N'Pankaj Sharma', N'34, Dundas East', N'pankaj@gmail.com', N'pankaj123', 1)
SET IDENTITY_INSERT [dbo].[tblStudent] OFF
/****** Object:  Table [dbo].[tblSchedule]    Script Date: 08/06/2013 08:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSchedule](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[TutorId] [int] NOT NULL,
	[Mo] [varchar](50) NULL,
	[Tu] [varchar](50) NULL,
	[We] [varchar](50) NULL,
	[Th] [varchar](50) NULL,
	[Fr] [varchar](50) NULL,
 CONSTRAINT [PK_tblSchedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSchedule] ON
INSERT [dbo].[tblSchedule] ([ScheduleId], [TutorId], [Mo], [Tu], [We], [Th], [Fr]) VALUES (7, 7, N'16to18', N'12to16', N'13to18', N'10to12', N'10to11')
INSERT [dbo].[tblSchedule] ([ScheduleId], [TutorId], [Mo], [Tu], [We], [Th], [Fr]) VALUES (8, 8, N'08to13', N'12to14', N'11to15', N'14to16', N'12to16')
INSERT [dbo].[tblSchedule] ([ScheduleId], [TutorId], [Mo], [Tu], [We], [Th], [Fr]) VALUES (9, 9, N'11to13', N'09to15', N'13to16', N'16to19', N'11to16')
SET IDENTITY_INSERT [dbo].[tblSchedule] OFF
/****** Object:  Table [dbo].[tblRating]    Script Date: 08/06/2013 08:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRating](
	[RatingId] [int] IDENTITY(1,1) NOT NULL,
	[TutorId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[Rate] [int] NOT NULL,
 CONSTRAINT [PK_tblRating] PRIMARY KEY CLUSTERED 
(
	[RatingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRating] ON
INSERT [dbo].[tblRating] ([RatingId], [TutorId], [StudentId], [Rate]) VALUES (10, 9, 6, 4)
INSERT [dbo].[tblRating] ([RatingId], [TutorId], [StudentId], [Rate]) VALUES (11, 9, 6, 1)
SET IDENTITY_INSERT [dbo].[tblRating] OFF
/****** Object:  Table [dbo].[tblTutorCourse]    Script Date: 08/06/2013 08:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTutorCourse](
	[TutorCourseId] [int] IDENTITY(1,1) NOT NULL,
	[TutorId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Grade] [varchar](2) NOT NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblTutorCourse] PRIMARY KEY CLUSTERED 
(
	[TutorCourseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblTutorCourse] ON
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (18, 7, 8, N'A+', 1)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (19, 7, 17, N'A', 1)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (20, 7, 21, N'B', 1)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (21, 7, 13, N'B+', 0)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (22, 8, 11, N'A', 0)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (23, 8, 19, N'B', 0)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (24, 8, 8, N'B', 1)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (25, 8, 15, N'A', 1)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (26, 9, 8, N'A', 1)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (27, 9, 15, N'A+', 1)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (28, 9, 17, N'B', 1)
INSERT [dbo].[tblTutorCourse] ([TutorCourseId], [TutorId], [CourseId], [Grade], [Active]) VALUES (29, 9, 22, N'A', 1)
SET IDENTITY_INSERT [dbo].[tblTutorCourse] OFF
/****** Object:  StoredProcedure [dbo].[SP_tblCourseUpdate]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tblCourseUpdate] (
	@CourseId int,
@CourseCode varchar(50),
@Name varchar(50)
)

AS

SET NOCOUNT ON

UPDATE
	[tblCourse]
SET
	[CourseCode] = @CourseCode,
[Name] = @Name
WHERE
	 [CourseId] = @CourseId
GO
/****** Object:  StoredProcedure [dbo].[SP_tblCourseInsert]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tblCourseInsert] (
	@CourseCode varchar(50),
@Name varchar(50),

	@Inserted int out
)

AS

SET NOCOUNT ON

INSERT INTO [tblCourse] (
	[CourseCode],
[Name]
) VALUES (
	@CourseCode,
@Name
)

set @Inserted=SCOPE_IDENTITY()
SELECT @Inserted
GO
/****** Object:  Table [dbo].[tblBooking]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBooking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[TutorId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[DateOfBooking] [datetime] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[TimeOfBooking] [varchar](50) NOT NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_tblBooking] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_tblStudentUpdate]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tblStudentUpdate] (
	@StudentId int,
@Student_Id varchar(50),
@Name varchar(50),
@Address varchar(50),
@Email varchar(50),
@Password varchar(50)
)

AS

SET NOCOUNT ON

UPDATE
	[tblStudent]
SET
	[Student_Id] = @Student_Id,
[Name] = @Name,
[Address] = @Address,
[Email] = @Email,
[Password] = @Password
WHERE
	 [StudentId] = @StudentId
GO
/****** Object:  StoredProcedure [dbo].[SP_tblStudentInsert]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tblStudentInsert] (
	@Student_Id varchar(50),
@Name varchar(50),
@Address varchar(50),
@Email varchar(50),
@Password varchar(50),

	@Inserted int out
)

AS

SET NOCOUNT ON

INSERT INTO [tblStudent] (
	[Student_Id],
[Name],
[Address],
[Email],
[Password]
) VALUES (
	@Student_Id,
@Name,
@Address,
@Email,
@Password
)

set @Inserted=SCOPE_IDENTITY()
SELECT @Inserted
GO
/****** Object:  StoredProcedure [dbo].[SP_tblTutorUpdate]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tblTutorUpdate] (
	@TutorId int,
@Student_Id varchar(50),
@Name varchar(50),
@Email varchar(50),
@Password varchar(50),
@Active bit
)

AS

SET NOCOUNT ON

UPDATE
	[tblTutor]
SET
	[Student_Id] = @Student_Id,
[Name] = @Name,
[Email] = @Email,
[Password] = @Password,
[Active] = @Active
WHERE
	 [TutorId] = @TutorId
GO
/****** Object:  StoredProcedure [dbo].[SP_tblTutorInsert]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tblTutorInsert] (
	@Student_Id varchar(50),
@Name varchar(50),
@Email varchar(50),
@Password varchar(50),
@Active bit,

	@Inserted int out
)

AS

SET NOCOUNT ON

INSERT INTO [tblTutor] (
	[Student_Id],
[Name],
[Email],
[Password],
[Active]
) VALUES (
	@Student_Id,
@Name,
@Email,
@Password,
@Active
)

set @Inserted=SCOPE_IDENTITY()
SELECT @Inserted
GO
/****** Object:  StoredProcedure [dbo].[SP_tblTutorCourseUpdate]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tblTutorCourseUpdate] (
	@TutorCourseId int,
@TutorId int,
@CourseId int,
@Grade varchar(2),
@Active bit
)

AS

SET NOCOUNT ON

UPDATE
	[tblTutorCourse]
SET
	[TutorId] = @TutorId,
[CourseId] = @CourseId,
[Grade] = @Grade,
[Active] = @Active
WHERE
	 [TutorCourseId] = @TutorCourseId
GO
/****** Object:  StoredProcedure [dbo].[SP_tblTutorCourseInsert]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tblTutorCourseInsert] (
	@TutorId int,
@CourseId int,
@Grade varchar(2),
@Active bit,

	@Inserted int out
)

AS

SET NOCOUNT ON

INSERT INTO [tblTutorCourse] (
	[TutorId],
[CourseId],
[Grade],
[Active]
) VALUES (
	@TutorId,
@CourseId,
@Grade,
@Active
)

set @Inserted=SCOPE_IDENTITY()
SELECT @Inserted
GO
/****** Object:  StoredProcedure [dbo].[SP_tblScheduleUpdate]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tblScheduleUpdate] (
	@ScheduleId int,
@TutorId int,
@Mo varchar(50),
@Tu varchar(50),
@We varchar(50),
@Th varchar(50),
@Fr varchar(50)
)

AS

SET NOCOUNT ON

UPDATE
	[tblSchedule]
SET
	[TutorId] = @TutorId,
[Mo] = @Mo,
[Tu] = @Tu,
[We] = @We,
[Th] = @Th,
[Fr] = @Fr
WHERE
	 [ScheduleId] = @ScheduleId
GO
/****** Object:  StoredProcedure [dbo].[SP_tblScheduleInsert]    Script Date: 08/06/2013 08:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_tblScheduleInsert] (
	@TutorId int,
@Mo varchar(50),
@Tu varchar(50),
@We varchar(50),
@Th varchar(50),
@Fr varchar(50),

	@Inserted int out
)

AS

SET NOCOUNT ON

INSERT INTO [tblSchedule] (
	[TutorId],
[Mo],
[Tu],
[We],
[Th],
[Fr]
) VALUES (
	@TutorId,
@Mo,
@Tu,
@We,
@Th,
@Fr
)

set @Inserted=SCOPE_IDENTITY()
SELECT @Inserted
GO
/****** Object:  ForeignKey [FK_tblSchedule_tblTutor]    Script Date: 08/06/2013 08:23:30 ******/
ALTER TABLE [dbo].[tblSchedule]  WITH CHECK ADD  CONSTRAINT [FK_tblSchedule_tblTutor] FOREIGN KEY([TutorId])
REFERENCES [dbo].[tblTutor] ([TutorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSchedule] CHECK CONSTRAINT [FK_tblSchedule_tblTutor]
GO
/****** Object:  ForeignKey [FK_tblRating_tblStudent]    Script Date: 08/06/2013 08:23:30 ******/
ALTER TABLE [dbo].[tblRating]  WITH CHECK ADD  CONSTRAINT [FK_tblRating_tblStudent] FOREIGN KEY([StudentId])
REFERENCES [dbo].[tblStudent] ([StudentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblRating] CHECK CONSTRAINT [FK_tblRating_tblStudent]
GO
/****** Object:  ForeignKey [FK_tblRating_tblTutor]    Script Date: 08/06/2013 08:23:30 ******/
ALTER TABLE [dbo].[tblRating]  WITH CHECK ADD  CONSTRAINT [FK_tblRating_tblTutor] FOREIGN KEY([TutorId])
REFERENCES [dbo].[tblTutor] ([TutorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblRating] CHECK CONSTRAINT [FK_tblRating_tblTutor]
GO
/****** Object:  ForeignKey [FK_tblTutorCourse_tblCourse]    Script Date: 08/06/2013 08:23:30 ******/
ALTER TABLE [dbo].[tblTutorCourse]  WITH CHECK ADD  CONSTRAINT [FK_tblTutorCourse_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblTutorCourse] CHECK CONSTRAINT [FK_tblTutorCourse_tblCourse]
GO
/****** Object:  ForeignKey [FK_tblTutorCourse_tblTutor]    Script Date: 08/06/2013 08:23:30 ******/
ALTER TABLE [dbo].[tblTutorCourse]  WITH CHECK ADD  CONSTRAINT [FK_tblTutorCourse_tblTutor] FOREIGN KEY([TutorId])
REFERENCES [dbo].[tblTutor] ([TutorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblTutorCourse] CHECK CONSTRAINT [FK_tblTutorCourse_tblTutor]
GO
/****** Object:  ForeignKey [FK_tblBooking_tblCourse]    Script Date: 08/06/2013 08:23:37 ******/
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD  CONSTRAINT [FK_tblBooking_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblBooking] CHECK CONSTRAINT [FK_tblBooking_tblCourse]
GO
/****** Object:  ForeignKey [FK_tblBooking_tblStudent]    Script Date: 08/06/2013 08:23:37 ******/
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD  CONSTRAINT [FK_tblBooking_tblStudent] FOREIGN KEY([StudentId])
REFERENCES [dbo].[tblStudent] ([StudentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblBooking] CHECK CONSTRAINT [FK_tblBooking_tblStudent]
GO
/****** Object:  ForeignKey [FK_tblBooking_tblTutor]    Script Date: 08/06/2013 08:23:37 ******/
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD  CONSTRAINT [FK_tblBooking_tblTutor] FOREIGN KEY([TutorId])
REFERENCES [dbo].[tblTutor] ([TutorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblBooking] CHECK CONSTRAINT [FK_tblBooking_tblTutor]
GO
