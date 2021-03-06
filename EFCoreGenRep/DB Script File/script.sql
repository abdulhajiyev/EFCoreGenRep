USE [EFCoreGenRep]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/16/2021 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/16/2021 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/16/2021 11:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211216191043_Initial', N'5.0.13')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Phone')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Tablet')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Laptop')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Console')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryId]) VALUES (1, N'iPhone 7', 799, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryId]) VALUES (2, N'iPhone 7 Plus', 899, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryId]) VALUES (3, N'iPhone X', 999, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryId]) VALUES (4, N'iPad Pro', 799, 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryId]) VALUES (5, N'iPad Air', 599, 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryId]) VALUES (6, N'MacBook Pro', 2999, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryId]) VALUES (7, N'MacBook Air', 999, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryId]) VALUES (8, N'Xbox One', 499, 4)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryId]) VALUES (9, N'Playstation 4', 399, 4)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryId]) VALUES (10, N'Nintendo Switch', 299, 4)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
