USE [ITintheD]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](255) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[14_Student]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[14_Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](100) NOT NULL,
	[LastName] [nchar](100) NOT NULL,
	[Age] [smallint] NULL,
	[EducationLevel] [int] NOT NULL,
	[Address1] [nchar](100) NULL,
	[Address2] [nchar](10) NULL,
	[City] [nchar](100) NULL,
	[State] [nchar](10) NULL,
	[Zip] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[14_Student_EducationLevel]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[14_Student_EducationLevel](
	[EducationLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nchar](50) NOT NULL,
	[Description] [nchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[EducationLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[15_4_UserInfo]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[15_4_UserInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](15) NOT NULL,
	[Password] [nchar](15) NOT NULL,
	[Address1] [nchar](30) NULL,
	[Address2] [nchar](30) NULL,
	[City] [nchar](30) NULL,
	[State] [nchar](30) NULL,
	[ZipCode] [int] NULL,
	[FirstName] [nchar](30) NOT NULL,
	[LastName] [nchar](30) NOT NULL,
	[SecurityQuestion] [nchar](30) NOT NULL,
	[SecurityAnswer] [nchar](15) NOT NULL,
	[SecurityHint] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AzzamAzizTable]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AzzamAzizTable](
	[UserName] [varchar](50) NULL,
	[Password] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Faq]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faq](
	[FaqID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_Faq] PRIMARY KEY CLUSTERED 
(
	[FaqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProspectiveAcademic]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProspectiveAcademic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AcademicId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[AcademyName] [nvarchar](255) NOT NULL,
	[AcademyAddress] [nvarchar](255) NULL,
	[PrimaryContactName] [nvarchar](255) NOT NULL,
	[PrimaryTitle] [nvarchar](255) NULL,
	[PrimaryTelephone] [varchar](14) NULL,
	[PrimaryEmailAddress] [nvarchar](255) NOT NULL,
	[SecondaryContactName] [nvarchar](255) NULL,
	[SecondaryTitle] [nvarchar](255) NULL,
	[SecondaryTelephone] [varchar](14) NULL,
	[SecondaryEmailAddress] [nvarchar](255) NULL,
	[AcademicInstitutionTextField] [nvarchar](max) NULL,
	[ImageUploaded] [varchar](3) NULL,
 CONSTRAINT [PK_ProspectiveAcademic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProspectiveCorporateSponsor]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProspectiveCorporateSponsor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SponsorId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CompanyName] [nvarchar](255) NOT NULL,
	[CompanyAddress] [nvarchar](255) NULL,
	[ContactName] [nvarchar](255) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Telephone] [varchar](14) NULL,
	[EmailAddress] [nvarchar](255) NOT NULL,
	[Reason] [nvarchar](max) NULL,
	[SponsorPageTextField] [nvarchar](max) NULL,
	[ImageUploaded] [varchar](3) NULL,
 CONSTRAINT [PK_ProspectiveCorporateSponsor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProspectiveStudent]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProspectiveStudent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Telephone] [varchar](14) NULL,
	[EmailAddress] [nvarchar](255) NOT NULL,
	[DesiredCareerPath] [nvarchar](255) NULL,
	[Gender] [varchar](6) NULL,
	[ResumeUploaded] [varchar](3) NULL,
	[TranscriptUploaded] [varchar](3) NULL,
	[ProspectiveStudentTextField] [nvarchar](max) NULL,
	[ImageUploaded] [varchar](3) NULL,
 CONSTRAINT [PK_ProspectiveStudent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProspectiveStudentResume]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProspectiveStudentResume](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FileName] [nvarchar](max) NOT NULL,
	[FileContent] [varbinary](max) NOT NULL,
	[ContentType] [nvarchar](max) NOT NULL,
	[ContentLength] [int] NOT NULL,
 CONSTRAINT [PK_ProspectiveStudentResume] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProspectiveStudentTranscript]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProspectiveStudentTranscript](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FileName] [nvarchar](max) NOT NULL,
	[FileContent] [varbinary](max) NOT NULL,
	[ContentType] [nvarchar](max) NOT NULL,
	[ContentLength] [int] NOT NULL,
 CONSTRAINT [PK_ProspectiveStudentTranscript] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SiteAdmin]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SiteAdmin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Name] [nchar](255) NOT NULL,
	[Telephone] [varchar](14) NULL,
	[EmailAddress] [nvarchar](255) NOT NULL,
	[Company] [nvarchar](255) NULL,
	[ImageUploaded] [varchar](3) NULL,
 CONSTRAINT [PK_SiteAdmin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserImage]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserImage](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[FileName] [nvarchar](max) NOT NULL,
	[FileContent] [varbinary](max) NOT NULL,
	[ContentType] [nvarchar](max) NOT NULL,
	[ContentLength] [int] NOT NULL,
 CONSTRAINT [PK_UserImage] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 5/29/2013 10:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [dbo].[14_Student]  WITH CHECK ADD  CONSTRAINT [FK_14_Student_14_Student_EducationLevel] FOREIGN KEY([EducationLevel])
REFERENCES [dbo].[14_Student_EducationLevel] ([EducationLevelId])
GO
ALTER TABLE [dbo].[14_Student] CHECK CONSTRAINT [FK_14_Student_14_Student_EducationLevel]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
