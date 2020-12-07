USE [hotels_db]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 27.11.2020 23:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[rating] [tinyint] NULL,
	[time_start] [smalldatetime] NOT NULL,
	[time_finish] [smalldatetime] NOT NULL,
	[message] [nvarchar](200) NULL,
	[reservation] [bit] NOT NULL,
	[room_id] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts2]    Script Date: 27.11.2020 23:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts2](
	[hotels_id] [int] NOT NULL,
	[phone] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[food_type]    Script Date: 27.11.2020 23:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[food_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_food_type_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotels]    Script Date: 27.11.2020 23:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](20) NOT NULL,
	[stars] [tinyint] NOT NULL,
	[food_type_id] [int] NOT NULL,
	[country] [nvarchar](20) NOT NULL,
	[city] [nvarchar](20) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_main] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[placings]    Script Date: 27.11.2020 23:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[placings](
	[id] [tinyint] NOT NULL,
	[type_placing] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_placings_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 27.11.2020 23:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_rols_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room_types]    Script Date: 27.11.2020 23:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_types](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[type_rooms] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_type_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 27.11.2020 23:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hotels_id] [int] NOT NULL,
	[room_type_id] [tinyint] NOT NULL,
	[placing_id] [tinyint] NOT NULL,
	[price] [money] NOT NULL,
	[is_booked] [bit] NOT NULL,
 CONSTRAINT [PK_rooms_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 27.11.2020 23:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roles_id] [tinyint] NOT NULL,
	[first_name] [nvarchar](20) NOT NULL,
	[last_name] [nvarchar](20) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_user_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[booking] ON 
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (1, 45, 2, CAST(N'2020-01-23T00:00:00' AS SmallDateTime), CAST(N'2021-10-29T00:00:00' AS SmallDateTime), N'id ligula suspendisse ornare consequat lectus in est', 1, 402)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (2, 85, NULL, CAST(N'2020-04-16T00:00:00' AS SmallDateTime), CAST(N'2021-05-16T00:00:00' AS SmallDateTime), NULL, 1, 401)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (3, 73, 9, CAST(N'2020-08-25T00:00:00' AS SmallDateTime), CAST(N'2021-03-08T00:00:00' AS SmallDateTime), N'arcu sed augue', 0, 406)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (4, 69, 2, CAST(N'2020-01-29T00:00:00' AS SmallDateTime), CAST(N'2020-12-06T00:00:00' AS SmallDateTime), N'fusce lacus purus aliquet at', 0, 455)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (5, 62, 1, CAST(N'2020-11-20T00:00:00' AS SmallDateTime), CAST(N'2020-11-24T00:00:00' AS SmallDateTime), NULL, 1, 600)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (6, 43, 8, CAST(N'2020-05-29T00:00:00' AS SmallDateTime), CAST(N'2021-04-30T00:00:00' AS SmallDateTime), N'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero', 0, 444)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (7, 56, 10, CAST(N'2020-02-17T00:00:00' AS SmallDateTime), CAST(N'2021-01-18T00:00:00' AS SmallDateTime), NULL, 0, 435)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (8, 38, 10, CAST(N'2020-10-23T00:00:00' AS SmallDateTime), CAST(N'2021-02-03T00:00:00' AS SmallDateTime), N'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', 0, 425)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (9, 95, 6, CAST(N'2020-04-30T00:00:00' AS SmallDateTime), CAST(N'2021-02-23T00:00:00' AS SmallDateTime), N'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (10, 29, 9, CAST(N'2019-12-09T00:00:00' AS SmallDateTime), CAST(N'2021-01-30T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (11, 61, 8, CAST(N'2020-05-03T00:00:00' AS SmallDateTime), CAST(N'2021-03-29T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (12, 98, 5, CAST(N'2020-05-29T00:00:00' AS SmallDateTime), CAST(N'2021-06-23T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (13, 23, 2, CAST(N'2019-12-26T00:00:00' AS SmallDateTime), CAST(N'2021-07-02T00:00:00' AS SmallDateTime), N'imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (14, 29, 8, CAST(N'2020-02-10T00:00:00' AS SmallDateTime), CAST(N'2020-12-23T00:00:00' AS SmallDateTime), N'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (15, 13, 7, CAST(N'2020-01-06T00:00:00' AS SmallDateTime), CAST(N'2021-09-11T00:00:00' AS SmallDateTime), N'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (16, 5, 9, CAST(N'2020-07-22T00:00:00' AS SmallDateTime), CAST(N'2021-09-29T00:00:00' AS SmallDateTime), N'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (17, 30, 1, CAST(N'2020-03-21T00:00:00' AS SmallDateTime), CAST(N'2020-12-26T00:00:00' AS SmallDateTime), N'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (18, 47, 4, CAST(N'2020-03-07T00:00:00' AS SmallDateTime), CAST(N'2020-12-29T00:00:00' AS SmallDateTime), N'adipiscing molestie hendrerit at vulputate vitae', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (19, 71, 7, CAST(N'2020-02-23T00:00:00' AS SmallDateTime), CAST(N'2021-08-31T00:00:00' AS SmallDateTime), N'id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (20, 100, 10, CAST(N'2020-02-01T00:00:00' AS SmallDateTime), CAST(N'2020-11-29T00:00:00' AS SmallDateTime), N'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (21, 81, 1, CAST(N'2020-06-19T00:00:00' AS SmallDateTime), CAST(N'2021-09-29T00:00:00' AS SmallDateTime), N'leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (22, 63, 3, CAST(N'2020-04-16T00:00:00' AS SmallDateTime), CAST(N'2020-12-28T00:00:00' AS SmallDateTime), N'bibendum morbi non quam nec dui', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (23, 14, 10, CAST(N'2019-12-25T00:00:00' AS SmallDateTime), CAST(N'2020-12-01T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (24, 37, 7, CAST(N'2020-05-07T00:00:00' AS SmallDateTime), CAST(N'2021-03-05T00:00:00' AS SmallDateTime), N'tortor risus dapibus augue vel accumsan tellus nisi eu orci', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (25, 56, 10, CAST(N'2020-03-06T00:00:00' AS SmallDateTime), CAST(N'2020-11-28T00:00:00' AS SmallDateTime), N'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (26, 1, 5, CAST(N'2020-02-03T00:00:00' AS SmallDateTime), CAST(N'2021-11-02T00:00:00' AS SmallDateTime), N'vel est donec odio justo sollicitudin ut suscipit', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (27, 4, 1, CAST(N'2020-05-19T00:00:00' AS SmallDateTime), CAST(N'2021-05-06T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (28, 28, 1, CAST(N'2020-10-24T00:00:00' AS SmallDateTime), CAST(N'2021-05-12T00:00:00' AS SmallDateTime), N'lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (29, 55, NULL, CAST(N'2020-06-30T00:00:00' AS SmallDateTime), CAST(N'2021-07-06T00:00:00' AS SmallDateTime), N'in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (30, 65, 7, CAST(N'2020-05-16T00:00:00' AS SmallDateTime), CAST(N'2021-01-04T00:00:00' AS SmallDateTime), N'habitasse platea dictumst maecenas ut massa quis augue luctus', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (31, 42, 8, CAST(N'2020-07-12T00:00:00' AS SmallDateTime), CAST(N'2021-05-21T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (32, 69, 1, CAST(N'2020-03-25T00:00:00' AS SmallDateTime), CAST(N'2021-07-04T00:00:00' AS SmallDateTime), N'ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (33, 11, 2, CAST(N'2020-05-11T00:00:00' AS SmallDateTime), CAST(N'2021-06-30T00:00:00' AS SmallDateTime), N'sed augue aliquam erat', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (34, 15, 4, CAST(N'2020-09-20T00:00:00' AS SmallDateTime), CAST(N'2021-02-23T00:00:00' AS SmallDateTime), N'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (35, 5, 5, CAST(N'2020-05-06T00:00:00' AS SmallDateTime), CAST(N'2021-03-08T00:00:00' AS SmallDateTime), N'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (36, 96, 4, CAST(N'2020-04-25T00:00:00' AS SmallDateTime), CAST(N'2021-11-26T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (37, 33, 8, CAST(N'2020-01-25T00:00:00' AS SmallDateTime), CAST(N'2021-04-17T00:00:00' AS SmallDateTime), N'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (38, 8, NULL, CAST(N'2020-05-18T00:00:00' AS SmallDateTime), CAST(N'2021-08-15T00:00:00' AS SmallDateTime), N'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (39, 3, 9, CAST(N'2020-07-07T00:00:00' AS SmallDateTime), CAST(N'2020-12-18T00:00:00' AS SmallDateTime), N'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (40, 30, 2, CAST(N'2020-11-24T00:00:00' AS SmallDateTime), CAST(N'2021-09-11T00:00:00' AS SmallDateTime), N'ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (41, 45, 2, CAST(N'2020-09-18T00:00:00' AS SmallDateTime), CAST(N'2021-05-22T00:00:00' AS SmallDateTime), N'at diam nam tristique tortor eu pede', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (42, 24, NULL, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), CAST(N'2021-05-23T00:00:00' AS SmallDateTime), N'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (43, 70, 1, CAST(N'2020-09-25T00:00:00' AS SmallDateTime), CAST(N'2021-04-15T00:00:00' AS SmallDateTime), N'leo rhoncus sed vestibulum sit amet cursus', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (44, 86, 1, CAST(N'2020-02-21T00:00:00' AS SmallDateTime), CAST(N'2021-04-29T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (45, 60, 6, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), CAST(N'2020-11-27T00:00:00' AS SmallDateTime), N'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (46, 42, 5, CAST(N'2020-09-23T00:00:00' AS SmallDateTime), CAST(N'2021-10-29T00:00:00' AS SmallDateTime), N'at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (47, 70, 6, CAST(N'2020-09-23T00:00:00' AS SmallDateTime), CAST(N'2021-08-09T00:00:00' AS SmallDateTime), N'at feugiat non pretium quis', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (48, 80, 9, CAST(N'2020-10-04T00:00:00' AS SmallDateTime), CAST(N'2021-04-07T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (49, 27, 8, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), CAST(N'2021-05-27T00:00:00' AS SmallDateTime), N'morbi ut odio cras mi pede malesuada in', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (50, 89, 8, CAST(N'2020-04-16T00:00:00' AS SmallDateTime), CAST(N'2021-07-13T00:00:00' AS SmallDateTime), N'porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (51, 38, 7, CAST(N'2020-06-06T00:00:00' AS SmallDateTime), CAST(N'2020-12-21T00:00:00' AS SmallDateTime), N'quam nec dui luctus rutrum nulla', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (52, 84, 2, CAST(N'2020-05-13T00:00:00' AS SmallDateTime), CAST(N'2021-07-19T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (53, 15, 8, CAST(N'2019-12-12T00:00:00' AS SmallDateTime), CAST(N'2021-10-07T00:00:00' AS SmallDateTime), N'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (54, 43, 4, CAST(N'2020-07-05T00:00:00' AS SmallDateTime), CAST(N'2021-03-29T00:00:00' AS SmallDateTime), N'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (55, 55, 1, CAST(N'2020-03-30T00:00:00' AS SmallDateTime), CAST(N'2021-02-01T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (56, 100, NULL, CAST(N'2020-03-14T00:00:00' AS SmallDateTime), CAST(N'2021-03-04T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (57, 43, 8, CAST(N'2020-10-01T00:00:00' AS SmallDateTime), CAST(N'2021-09-16T00:00:00' AS SmallDateTime), N'proin eu mi nulla ac enim in tempor turpis nec euismod', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (58, 69, 1, CAST(N'2020-04-19T00:00:00' AS SmallDateTime), CAST(N'2021-06-04T00:00:00' AS SmallDateTime), N'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (59, 30, 3, CAST(N'2020-05-15T00:00:00' AS SmallDateTime), CAST(N'2021-09-02T00:00:00' AS SmallDateTime), N'imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (60, 96, 2, CAST(N'2020-08-18T00:00:00' AS SmallDateTime), CAST(N'2021-11-24T00:00:00' AS SmallDateTime), N'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (61, 100, 3, CAST(N'2020-09-04T00:00:00' AS SmallDateTime), CAST(N'2021-09-21T00:00:00' AS SmallDateTime), N'sit amet justo morbi ut', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (62, 69, 4, CAST(N'2019-12-31T00:00:00' AS SmallDateTime), CAST(N'2021-09-23T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (63, 79, 1, CAST(N'2020-09-30T00:00:00' AS SmallDateTime), CAST(N'2021-02-05T00:00:00' AS SmallDateTime), N'quis orci nullam molestie', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (64, 29, 8, CAST(N'2020-09-08T00:00:00' AS SmallDateTime), CAST(N'2021-06-08T00:00:00' AS SmallDateTime), N'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (65, 19, 4, CAST(N'2020-07-18T00:00:00' AS SmallDateTime), CAST(N'2021-07-11T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (66, 24, 7, CAST(N'2020-05-26T00:00:00' AS SmallDateTime), CAST(N'2021-09-10T00:00:00' AS SmallDateTime), N'vel est donec odio justo sollicitudin', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (67, 44, 10, CAST(N'2020-04-25T00:00:00' AS SmallDateTime), CAST(N'2021-05-03T00:00:00' AS SmallDateTime), N'nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (68, 33, 9, CAST(N'2020-09-16T00:00:00' AS SmallDateTime), CAST(N'2021-11-23T00:00:00' AS SmallDateTime), N'erat quisque erat eros viverra eget congue eget semper rutrum', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (69, 68, 6, CAST(N'2020-02-17T00:00:00' AS SmallDateTime), CAST(N'2021-05-30T00:00:00' AS SmallDateTime), N'ac tellus semper', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (70, 19, 5, CAST(N'2020-05-22T00:00:00' AS SmallDateTime), CAST(N'2021-07-12T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (71, 78, 3, CAST(N'2020-06-27T00:00:00' AS SmallDateTime), CAST(N'2021-06-13T00:00:00' AS SmallDateTime), N'odio in hac habitasse platea dictumst maecenas ut massa', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (72, 87, 5, CAST(N'2020-01-15T00:00:00' AS SmallDateTime), CAST(N'2021-08-22T00:00:00' AS SmallDateTime), N'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (73, 2, 8, CAST(N'2020-01-01T00:00:00' AS SmallDateTime), CAST(N'2021-10-20T00:00:00' AS SmallDateTime), N'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (74, 76, 1, CAST(N'2020-10-12T00:00:00' AS SmallDateTime), CAST(N'2021-01-29T00:00:00' AS SmallDateTime), N'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (75, 80, 1, CAST(N'2020-06-05T00:00:00' AS SmallDateTime), CAST(N'2021-05-19T00:00:00' AS SmallDateTime), N'nulla neque libero convallis eget', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (76, 61, 6, CAST(N'2019-12-28T00:00:00' AS SmallDateTime), CAST(N'2021-04-12T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (77, 83, 9, CAST(N'2020-05-19T00:00:00' AS SmallDateTime), CAST(N'2021-02-07T00:00:00' AS SmallDateTime), N'vel nisl duis ac nibh', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (78, 53, NULL, CAST(N'2020-09-05T00:00:00' AS SmallDateTime), CAST(N'2021-10-15T00:00:00' AS SmallDateTime), N'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (79, 22, 2, CAST(N'2020-01-06T00:00:00' AS SmallDateTime), CAST(N'2021-07-10T00:00:00' AS SmallDateTime), N'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (80, 34, 8, CAST(N'2020-11-09T00:00:00' AS SmallDateTime), CAST(N'2021-08-20T00:00:00' AS SmallDateTime), N'magna vestibulum aliquet ultrices erat tortor', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (81, 34, 5, CAST(N'2020-05-02T00:00:00' AS SmallDateTime), CAST(N'2020-12-19T00:00:00' AS SmallDateTime), N'nunc nisl duis bibendum felis sed interdum venenatis turpis enim', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (82, 71, 9, CAST(N'2020-02-15T00:00:00' AS SmallDateTime), CAST(N'2021-05-20T00:00:00' AS SmallDateTime), N'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (83, 95, 3, CAST(N'2019-12-15T00:00:00' AS SmallDateTime), CAST(N'2020-11-28T00:00:00' AS SmallDateTime), N'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (84, 1, 10, CAST(N'2020-10-18T00:00:00' AS SmallDateTime), CAST(N'2021-02-15T00:00:00' AS SmallDateTime), N'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (85, 41, 6, CAST(N'2020-07-16T00:00:00' AS SmallDateTime), CAST(N'2021-09-05T00:00:00' AS SmallDateTime), N'rutrum nulla nunc', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (86, 50, 1, CAST(N'2020-05-13T00:00:00' AS SmallDateTime), CAST(N'2021-06-20T00:00:00' AS SmallDateTime), N'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (87, 1, 9, CAST(N'2020-04-07T00:00:00' AS SmallDateTime), CAST(N'2021-05-04T00:00:00' AS SmallDateTime), N'purus sit amet nulla', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (88, 44, 7, CAST(N'2020-02-25T00:00:00' AS SmallDateTime), CAST(N'2021-11-10T00:00:00' AS SmallDateTime), N'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (89, 90, NULL, CAST(N'2020-09-18T00:00:00' AS SmallDateTime), CAST(N'2021-10-02T00:00:00' AS SmallDateTime), N'ligula sit amet eleifend pede libero quis orci nullam molestie', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (90, 58, 4, CAST(N'2020-10-07T00:00:00' AS SmallDateTime), CAST(N'2021-06-10T00:00:00' AS SmallDateTime), N'velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (91, 7, 7, CAST(N'2020-09-30T00:00:00' AS SmallDateTime), CAST(N'2021-06-06T00:00:00' AS SmallDateTime), N'suspendisse potenti cras in purus eu magna vulputate luctus cum', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (92, 68, 10, CAST(N'2020-06-29T00:00:00' AS SmallDateTime), CAST(N'2021-06-29T00:00:00' AS SmallDateTime), N'id nisl venenatis lacinia', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (93, 73, NULL, CAST(N'2019-12-10T00:00:00' AS SmallDateTime), CAST(N'2021-04-13T00:00:00' AS SmallDateTime), N'dictumst maecenas ut massa quis augue luctus', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (94, 11, 5, CAST(N'2020-04-25T00:00:00' AS SmallDateTime), CAST(N'2021-08-26T00:00:00' AS SmallDateTime), N'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (95, 73, 2, CAST(N'2020-06-07T00:00:00' AS SmallDateTime), CAST(N'2021-04-30T00:00:00' AS SmallDateTime), N'luctus ultricies eu nibh quisque id justo', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (96, 4, 1, CAST(N'2020-08-15T00:00:00' AS SmallDateTime), CAST(N'2020-12-04T00:00:00' AS SmallDateTime), N'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (97, 52, 3, CAST(N'2020-01-21T00:00:00' AS SmallDateTime), CAST(N'2021-10-31T00:00:00' AS SmallDateTime), N'erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (98, 13, 5, CAST(N'2020-08-21T00:00:00' AS SmallDateTime), CAST(N'2021-07-04T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (99, 22, 10, CAST(N'2020-04-19T00:00:00' AS SmallDateTime), CAST(N'2021-11-14T00:00:00' AS SmallDateTime), N'posuere metus vitae ipsum aliquam non mauris morbi non lectus', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (100, 47, 2, CAST(N'2020-08-26T00:00:00' AS SmallDateTime), CAST(N'2021-02-09T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (101, 26, 1, CAST(N'2020-06-01T00:00:00' AS SmallDateTime), CAST(N'2021-04-17T00:00:00' AS SmallDateTime), N'nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (102, 72, 7, CAST(N'2020-03-24T00:00:00' AS SmallDateTime), CAST(N'2021-04-22T00:00:00' AS SmallDateTime), N'ligula nec sem duis aliquam convallis nunc proin at turpis a', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (103, 66, 10, CAST(N'2020-07-10T00:00:00' AS SmallDateTime), CAST(N'2021-02-12T00:00:00' AS SmallDateTime), N'id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (104, 10, 1, CAST(N'2020-01-09T00:00:00' AS SmallDateTime), CAST(N'2020-12-22T00:00:00' AS SmallDateTime), N'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (105, 36, 6, CAST(N'2020-09-15T00:00:00' AS SmallDateTime), CAST(N'2021-01-17T00:00:00' AS SmallDateTime), N'mauris vulputate elementum nullam varius nulla facilisi', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (106, 67, 4, CAST(N'2020-11-14T00:00:00' AS SmallDateTime), CAST(N'2021-07-09T00:00:00' AS SmallDateTime), N'nullam orci pede', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (107, 96, 10, CAST(N'2020-07-14T00:00:00' AS SmallDateTime), CAST(N'2021-11-14T00:00:00' AS SmallDateTime), N'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (108, 90, 2, CAST(N'2020-03-21T00:00:00' AS SmallDateTime), CAST(N'2021-05-05T00:00:00' AS SmallDateTime), N'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (109, 59, 10, CAST(N'2020-01-26T00:00:00' AS SmallDateTime), CAST(N'2021-05-05T00:00:00' AS SmallDateTime), N'pellentesque volutpat dui maecenas tristique est et tempus semper est', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (110, 44, 5, CAST(N'2020-10-31T00:00:00' AS SmallDateTime), CAST(N'2021-02-11T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (111, 41, 4, CAST(N'2020-06-10T00:00:00' AS SmallDateTime), CAST(N'2021-05-02T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (112, 16, 1, CAST(N'2020-11-13T00:00:00' AS SmallDateTime), CAST(N'2020-12-02T00:00:00' AS SmallDateTime), N'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (113, 44, 9, CAST(N'2020-04-02T00:00:00' AS SmallDateTime), CAST(N'2020-12-09T00:00:00' AS SmallDateTime), N'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (114, 93, 10, CAST(N'2020-09-26T00:00:00' AS SmallDateTime), CAST(N'2021-07-09T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (115, 24, NULL, CAST(N'2020-04-16T00:00:00' AS SmallDateTime), CAST(N'2020-12-03T00:00:00' AS SmallDateTime), N'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (116, 83, 6, CAST(N'2020-04-28T00:00:00' AS SmallDateTime), CAST(N'2021-05-16T00:00:00' AS SmallDateTime), N'volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (117, 31, 6, CAST(N'2019-12-08T00:00:00' AS SmallDateTime), CAST(N'2021-07-03T00:00:00' AS SmallDateTime), N'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (118, 80, 1, CAST(N'2020-03-25T00:00:00' AS SmallDateTime), CAST(N'2021-01-24T00:00:00' AS SmallDateTime), N'nisi eu orci', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (119, 6, 1, CAST(N'2019-12-23T00:00:00' AS SmallDateTime), CAST(N'2021-09-15T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (120, 3, 1, CAST(N'2020-06-08T00:00:00' AS SmallDateTime), CAST(N'2021-04-30T00:00:00' AS SmallDateTime), N'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (121, 65, 9, CAST(N'2020-02-12T00:00:00' AS SmallDateTime), CAST(N'2021-05-16T00:00:00' AS SmallDateTime), N'duis mattis egestas', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (122, 1, 1, CAST(N'2020-04-16T00:00:00' AS SmallDateTime), CAST(N'2021-06-24T00:00:00' AS SmallDateTime), N'sapien placerat ante nulla', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (123, 20, 3, CAST(N'2020-02-14T00:00:00' AS SmallDateTime), CAST(N'2021-01-07T00:00:00' AS SmallDateTime), N'ipsum dolor sit amet', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (124, 25, 10, CAST(N'2020-09-01T00:00:00' AS SmallDateTime), CAST(N'2021-03-13T00:00:00' AS SmallDateTime), N'posuere cubilia curae donec', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (125, 2, 1, CAST(N'2020-06-26T00:00:00' AS SmallDateTime), CAST(N'2020-12-16T00:00:00' AS SmallDateTime), N'tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (126, 31, 8, CAST(N'2020-09-08T00:00:00' AS SmallDateTime), CAST(N'2021-09-20T00:00:00' AS SmallDateTime), N'cras in purus eu magna', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (127, 9, 8, CAST(N'2020-03-06T00:00:00' AS SmallDateTime), CAST(N'2021-08-18T00:00:00' AS SmallDateTime), N'primis in faucibus orci luctus et ultrices posuere', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (128, 83, 6, CAST(N'2020-04-14T00:00:00' AS SmallDateTime), CAST(N'2021-04-26T00:00:00' AS SmallDateTime), N'luctus et ultrices posuere', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (129, 34, 10, CAST(N'2020-08-08T00:00:00' AS SmallDateTime), CAST(N'2021-01-31T00:00:00' AS SmallDateTime), N'id nulla ultrices aliquet maecenas leo odio condimentum', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (130, 63, 9, CAST(N'2020-10-29T00:00:00' AS SmallDateTime), CAST(N'2021-04-26T00:00:00' AS SmallDateTime), N'in hac habitasse', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (131, 13, 6, CAST(N'2019-12-13T00:00:00' AS SmallDateTime), CAST(N'2021-04-07T00:00:00' AS SmallDateTime), N'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (132, 23, 6, CAST(N'2020-03-20T00:00:00' AS SmallDateTime), CAST(N'2021-05-27T00:00:00' AS SmallDateTime), N'sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (133, 100, 9, CAST(N'2020-05-18T00:00:00' AS SmallDateTime), CAST(N'2021-09-28T00:00:00' AS SmallDateTime), N'quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (134, 19, 9, CAST(N'2020-05-10T00:00:00' AS SmallDateTime), CAST(N'2021-06-22T00:00:00' AS SmallDateTime), N'imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (135, 37, 4, CAST(N'2020-07-10T00:00:00' AS SmallDateTime), CAST(N'2020-12-29T00:00:00' AS SmallDateTime), N'dolor quis odio consequat varius integer ac leo pellentesque ultrices', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (136, 50, 4, CAST(N'2020-08-27T00:00:00' AS SmallDateTime), CAST(N'2021-07-29T00:00:00' AS SmallDateTime), N'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (137, 14, NULL, CAST(N'2020-10-21T00:00:00' AS SmallDateTime), CAST(N'2020-12-13T00:00:00' AS SmallDateTime), N'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (138, 55, 6, CAST(N'2020-03-11T00:00:00' AS SmallDateTime), CAST(N'2021-08-18T00:00:00' AS SmallDateTime), N'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (139, 6, 3, CAST(N'2019-12-18T00:00:00' AS SmallDateTime), CAST(N'2021-04-09T00:00:00' AS SmallDateTime), N'ornare imperdiet sapien', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (140, 2, 2, CAST(N'2020-10-22T00:00:00' AS SmallDateTime), CAST(N'2021-11-11T00:00:00' AS SmallDateTime), N'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (141, 50, 9, CAST(N'2020-07-21T00:00:00' AS SmallDateTime), CAST(N'2021-10-22T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (142, 23, 10, CAST(N'2020-09-03T00:00:00' AS SmallDateTime), CAST(N'2021-09-22T00:00:00' AS SmallDateTime), N'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (143, 91, 7, CAST(N'2020-05-17T00:00:00' AS SmallDateTime), CAST(N'2021-05-22T00:00:00' AS SmallDateTime), N'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (144, 53, 3, CAST(N'2020-06-17T00:00:00' AS SmallDateTime), CAST(N'2021-02-23T00:00:00' AS SmallDateTime), N'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (145, 8, 8, CAST(N'2019-11-29T00:00:00' AS SmallDateTime), CAST(N'2021-02-11T00:00:00' AS SmallDateTime), N'sed sagittis nam congue risus semper porta volutpat quam pede lobortis', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (146, 45, 3, CAST(N'2020-06-05T00:00:00' AS SmallDateTime), CAST(N'2021-01-27T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (147, 52, 5, CAST(N'2020-10-23T00:00:00' AS SmallDateTime), CAST(N'2021-06-12T00:00:00' AS SmallDateTime), N'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (148, 78, 8, CAST(N'2020-01-24T00:00:00' AS SmallDateTime), CAST(N'2021-04-27T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (149, 78, 9, CAST(N'2020-09-16T00:00:00' AS SmallDateTime), CAST(N'2021-04-30T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (150, 67, NULL, CAST(N'2020-06-10T00:00:00' AS SmallDateTime), CAST(N'2021-04-14T00:00:00' AS SmallDateTime), N'enim blandit mi in porttitor pede justo eu massa', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (151, 99, 2, CAST(N'2020-08-17T00:00:00' AS SmallDateTime), CAST(N'2021-04-19T00:00:00' AS SmallDateTime), N'diam cras pellentesque volutpat dui maecenas tristique est et', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (152, 14, NULL, CAST(N'2019-12-07T00:00:00' AS SmallDateTime), CAST(N'2021-06-05T00:00:00' AS SmallDateTime), N'tincidunt in leo maecenas pulvinar lobortis est phasellus sit', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (153, 66, 9, CAST(N'2020-08-28T00:00:00' AS SmallDateTime), CAST(N'2021-04-20T00:00:00' AS SmallDateTime), N'dolor sit amet', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (154, 17, NULL, CAST(N'2020-11-18T00:00:00' AS SmallDateTime), CAST(N'2021-09-10T00:00:00' AS SmallDateTime), N'velit eu est congue', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (155, 1, 5, CAST(N'2020-01-05T00:00:00' AS SmallDateTime), CAST(N'2021-07-12T00:00:00' AS SmallDateTime), N'nullam orci pede venenatis non sodales sed tincidunt eu felis fusce', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (156, 29, 5, CAST(N'2020-08-03T00:00:00' AS SmallDateTime), CAST(N'2020-12-29T00:00:00' AS SmallDateTime), N'volutpat sapien arcu sed augue aliquam erat volutpat', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (157, 9, 9, CAST(N'2020-11-21T00:00:00' AS SmallDateTime), CAST(N'2021-11-15T00:00:00' AS SmallDateTime), N'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (158, 43, 9, CAST(N'2020-03-11T00:00:00' AS SmallDateTime), CAST(N'2021-05-12T00:00:00' AS SmallDateTime), N'ornare consequat lectus in', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (159, 13, 10, CAST(N'2020-11-26T00:00:00' AS SmallDateTime), CAST(N'2021-01-16T00:00:00' AS SmallDateTime), N'luctus nec molestie sed justo pellentesque viverra pede ac diam', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (160, 19, 9, CAST(N'2020-08-03T00:00:00' AS SmallDateTime), CAST(N'2021-02-23T00:00:00' AS SmallDateTime), N'nonummy maecenas tincidunt', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (161, 62, 4, CAST(N'2020-08-30T00:00:00' AS SmallDateTime), CAST(N'2021-03-31T00:00:00' AS SmallDateTime), N'metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (162, 64, NULL, CAST(N'2020-02-19T00:00:00' AS SmallDateTime), CAST(N'2021-06-03T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (163, 11, 6, CAST(N'2020-11-07T00:00:00' AS SmallDateTime), CAST(N'2021-08-02T00:00:00' AS SmallDateTime), N'congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (164, 52, 5, CAST(N'2020-03-08T00:00:00' AS SmallDateTime), CAST(N'2021-06-22T00:00:00' AS SmallDateTime), N'suspendisse accumsan tortor quis turpis sed', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (165, 54, 2, CAST(N'2020-05-06T00:00:00' AS SmallDateTime), CAST(N'2021-11-13T00:00:00' AS SmallDateTime), N'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (166, 73, NULL, CAST(N'2020-08-05T00:00:00' AS SmallDateTime), CAST(N'2021-04-09T00:00:00' AS SmallDateTime), N'sapien non mi integer ac neque duis bibendum morbi non', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (167, 80, 9, CAST(N'2020-08-20T00:00:00' AS SmallDateTime), CAST(N'2020-12-03T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (168, 62, 9, CAST(N'2020-03-28T00:00:00' AS SmallDateTime), CAST(N'2021-01-25T00:00:00' AS SmallDateTime), N'nibh in quis justo maecenas rhoncus aliquam lacus', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (169, 71, 6, CAST(N'2020-03-07T00:00:00' AS SmallDateTime), CAST(N'2021-03-26T00:00:00' AS SmallDateTime), N'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (170, 83, NULL, CAST(N'2020-02-02T00:00:00' AS SmallDateTime), CAST(N'2021-01-30T00:00:00' AS SmallDateTime), N'suscipit nulla elit ac nulla', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (171, 7, 4, CAST(N'2020-08-06T00:00:00' AS SmallDateTime), CAST(N'2021-03-09T00:00:00' AS SmallDateTime), N'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (172, 50, 10, CAST(N'2020-10-27T00:00:00' AS SmallDateTime), CAST(N'2021-02-10T00:00:00' AS SmallDateTime), N'nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (173, 39, 8, CAST(N'2020-10-23T00:00:00' AS SmallDateTime), CAST(N'2020-11-30T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (174, 85, 10, CAST(N'2019-12-14T00:00:00' AS SmallDateTime), CAST(N'2021-01-11T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (175, 34, 5, CAST(N'2020-08-06T00:00:00' AS SmallDateTime), CAST(N'2021-05-14T00:00:00' AS SmallDateTime), N'a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (176, 40, NULL, CAST(N'2020-09-18T00:00:00' AS SmallDateTime), CAST(N'2021-09-01T00:00:00' AS SmallDateTime), N'aliquam augue quam sollicitudin vitae', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (177, 73, 4, CAST(N'2020-08-03T00:00:00' AS SmallDateTime), CAST(N'2021-10-29T00:00:00' AS SmallDateTime), N'eu felis fusce posuere', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (178, 16, 2, CAST(N'2020-08-24T00:00:00' AS SmallDateTime), CAST(N'2021-07-07T00:00:00' AS SmallDateTime), N'nam dui proin leo odio porttitor id consequat in consequat ut nulla', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (179, 26, 10, CAST(N'2020-02-11T00:00:00' AS SmallDateTime), CAST(N'2021-05-03T00:00:00' AS SmallDateTime), N'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (180, 46, 10, CAST(N'2019-12-24T00:00:00' AS SmallDateTime), CAST(N'2021-09-07T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (181, 100, 6, CAST(N'2020-02-01T00:00:00' AS SmallDateTime), CAST(N'2021-04-12T00:00:00' AS SmallDateTime), N'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (182, 70, 1, CAST(N'2020-10-17T00:00:00' AS SmallDateTime), CAST(N'2021-05-20T00:00:00' AS SmallDateTime), N'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (183, 73, 4, CAST(N'2020-02-24T00:00:00' AS SmallDateTime), CAST(N'2021-08-16T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (184, 91, 10, CAST(N'2020-03-16T00:00:00' AS SmallDateTime), CAST(N'2021-10-07T00:00:00' AS SmallDateTime), N'at ipsum ac', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (185, 12, 6, CAST(N'2020-02-22T00:00:00' AS SmallDateTime), CAST(N'2021-05-15T00:00:00' AS SmallDateTime), N'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (186, 100, 2, CAST(N'2020-10-01T00:00:00' AS SmallDateTime), CAST(N'2021-10-31T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (187, 59, 10, CAST(N'2020-07-16T00:00:00' AS SmallDateTime), CAST(N'2021-05-11T00:00:00' AS SmallDateTime), N'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (188, 46, 9, CAST(N'2020-01-31T00:00:00' AS SmallDateTime), CAST(N'2021-04-20T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (189, 82, NULL, CAST(N'2020-06-16T00:00:00' AS SmallDateTime), CAST(N'2021-05-17T00:00:00' AS SmallDateTime), N'vestibulum rutrum rutrum neque aenean auctor gravida', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (190, 31, 8, CAST(N'2020-03-30T00:00:00' AS SmallDateTime), CAST(N'2021-02-11T00:00:00' AS SmallDateTime), NULL, 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (191, 20, NULL, CAST(N'2020-09-21T00:00:00' AS SmallDateTime), CAST(N'2021-03-18T00:00:00' AS SmallDateTime), N'felis fusce posuere felis sed lacus', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (192, 94, 5, CAST(N'2020-08-25T00:00:00' AS SmallDateTime), CAST(N'2021-10-23T00:00:00' AS SmallDateTime), N'massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (193, 85, 6, CAST(N'2020-06-23T00:00:00' AS SmallDateTime), CAST(N'2021-03-01T00:00:00' AS SmallDateTime), NULL, 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (194, 45, 10, CAST(N'2020-02-28T00:00:00' AS SmallDateTime), CAST(N'2021-09-09T00:00:00' AS SmallDateTime), N'sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (195, 48, 6, CAST(N'2019-11-29T00:00:00' AS SmallDateTime), CAST(N'2020-12-25T00:00:00' AS SmallDateTime), N'tempor turpis nec euismod scelerisque', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (196, 66, 9, CAST(N'2019-12-13T00:00:00' AS SmallDateTime), CAST(N'2021-04-08T00:00:00' AS SmallDateTime), N'magna vulputate luctus cum', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (197, 37, NULL, CAST(N'2020-02-13T00:00:00' AS SmallDateTime), CAST(N'2020-12-19T00:00:00' AS SmallDateTime), N'nibh in quis justo', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (198, 90, 4, CAST(N'2020-10-29T00:00:00' AS SmallDateTime), CAST(N'2021-04-20T00:00:00' AS SmallDateTime), N'facilisi cras non', 0, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (199, 3, 3, CAST(N'2020-05-30T00:00:00' AS SmallDateTime), CAST(N'2021-05-14T00:00:00' AS SmallDateTime), N'a ipsum integer a nibh in', 1, NULL)
GO
INSERT [dbo].[booking] ([id], [user_id], [rating], [time_start], [time_finish], [message], [reservation], [room_id]) VALUES (200, 33, NULL, CAST(N'2020-10-31T00:00:00' AS SmallDateTime), CAST(N'2020-12-10T00:00:00' AS SmallDateTime), N'justo aliquam quis turpis eget elit sodales scelerisque mauris', 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[booking] OFF
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (94, N'182-380-9260', N'hrivelin0@shop-pro.jp')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (106, N'919-603-2480', N'lwiddocks1@ucla.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (174, N'790-882-4005', N'kdeary2@diigo.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (65, N'233-736-2575', N'cmycock3@addtoany.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (124, N'144-491-9948', N'krawsthorn4@slideshare.net')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (72, N'560-810-9857', N'pdrummond5@pcworld.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (20, N'758-706-0123', N'tfatkin6@eepurl.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (34, N'353-945-8515', N'vcapron7@examiner.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (182, N'470-382-2171', N'rdewitt8@tinypic.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (33, N'439-580-1323', N'mbrundall9@noaa.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (124, N'678-647-8003', N'flucya@fotki.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (154, N'243-104-8692', N'gyirrellb@cmu.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (75, N'369-830-9114', N'warchbaldc@123-reg.co.uk')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (36, N'849-863-5362', N'dderechterd@businesswire.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (15, N'953-856-1816', N'tguilforde@ovh.net')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (100, N'832-322-9974', N'vruddyf@histats.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (172, N'300-778-8584', N'eolenaneg@skype.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (20, N'913-565-1826', N'pgillhamh@psu.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (78, N'613-544-1108', N'fhamblingtoni@last.fm')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (154, N'631-325-0551', N'moffilerj@washingtonpost.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (98, N'698-709-6465', N'lenderleink@artisteer.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (187, N'796-227-1289', N'blowensohnl@nps.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (3, N'574-335-8912', N'dbulfoym@dyndns.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (103, N'216-621-9096', N'lbramsenn@google.com.br')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (180, N'809-256-3969', N'pelderedo@marriott.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (146, N'406-696-5381', N'cjoshamp@eventbrite.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (113, N'188-902-8311', N'rjanikq@tinypic.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (16, N'251-285-8824', N'mburtwistler@phpbb.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (171, N'893-574-0913', N'npointss@joomla.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (42, N'284-670-9116', N'sholseyt@ebay.co.uk')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (11, N'690-415-3337', N'tlaxtonneu@elpais.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (86, N'665-503-3213', N'klobellv@weibo.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (184, N'419-391-3459', N'nmoohanw@who.int')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (170, N'541-387-7276', N'jenevoldsenx@altervista.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (177, N'922-441-3186', N'abygrovey@uol.com.br')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (23, N'825-937-1840', N'bmaccauleyz@umn.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (64, N'117-317-3317', N'jwalding10@who.int')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (7, N'623-176-0835', N'pmattheissen11@wordpress.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (178, N'810-675-6388', N'jbuten12@scribd.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (108, N'288-799-1511', N'dmatticci13@yahoo.co.jp')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (92, N'788-177-4086', N'olisle14@hubpages.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (174, N'178-484-2654', N'nsivyour15@fc2.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (21, N'141-885-3686', N'jmandrake16@unicef.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (169, N'312-142-0361', N'tflacke17@narod.ru')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (73, N'142-458-6251', N'clavelle18@cornell.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (18, N'223-846-9196', N'ffawson19@nasa.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (156, N'370-191-0942', N'dgallaher1a@sbwire.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (22, N'716-902-6970', N'ovasse1b@tamu.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (145, N'365-260-4307', N'vphateplace1c@wordpress.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (122, N'974-480-5750', N'zverrall1d@studiopress.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (170, N'607-669-8493', N'rcoonihan1e@slashdot.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (184, N'915-782-2777', N'kwhitloe1f@stumbleupon.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (117, N'687-674-3731', N'ccapini1g@ca.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (196, N'365-780-4201', N'hwitty1h@google.nl')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (24, N'371-975-5173', N'wloyley1i@4shared.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (195, N'297-992-2643', N'tricharson1j@typepad.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (29, N'685-787-7030', N'terskinesandys1k@hatena.ne.jp')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (78, N'909-122-8217', N'kelcoat1l@trellian.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (69, N'616-897-1441', N'afetteplace1m@discuz.net')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (184, N'102-872-4850', N'rscard1n@cloudflare.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (65, N'931-608-0118', N'gsewter1o@pen.io')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (5, N'259-123-2222', N'mknapp1p@live.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (113, N'276-906-5585', N'ddonwell1q@wisc.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (122, N'720-234-0924', N'dneill1r@statcounter.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (166, N'513-117-5231', N'mmelby1s@tamu.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (97, N'131-191-4630', N'selman1t@cdc.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (153, N'483-440-0435', N'roveral1u@cbsnews.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (29, N'119-266-1271', N'ljennins1v@1und1.de')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (131, N'241-123-7641', N'rlowdham1w@springer.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (57, N'273-198-5385', N'cbrookes1x@vk.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (157, N'624-651-0691', N'cflatley1y@globo.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (93, N'168-219-4621', N'rfussie1z@shutterfly.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (73, N'662-311-7041', N'knorthridge20@arizona.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (141, N'731-643-9145', N'dsquirrell21@utexas.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (61, N'774-839-8378', N'lhowler22@clickbank.net')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (152, N'320-717-6690', N'pnortcliffe23@upenn.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (8, N'609-636-4947', N'wjouanet24@cbslocal.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (166, N'183-745-2401', N'rthibodeaux25@examiner.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (8, N'634-467-2499', N'wbevis26@blinklist.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (82, N'205-865-1452', N'dwathen27@usda.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (38, N'573-311-8959', N'espencook28@netscape.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (34, N'194-543-9972', N'mfairholme29@columbia.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (24, N'213-664-7982', N'amellmoth2a@mac.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (3, N'140-282-1834', N'nsterman2b@msu.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (41, N'715-759-2642', N'tbrunton2c@irs.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (173, N'383-808-4703', N'lhischke2d@apache.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (10, N'199-620-6920', N'mlegerton2e@livejournal.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (57, N'453-537-9191', N'cattewell2f@shutterfly.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (184, N'536-403-9276', N'mchastel2g@spiegel.de')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (39, N'806-855-7692', N'bzavattiero2h@google.pl')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (179, N'938-908-0650', N'mbabbe2i@seesaa.net')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (92, N'154-430-6604', N'amcaster2j@google.it')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (135, N'566-560-6287', N'fvanarsdall2k@columbia.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (20, N'893-406-8953', N'tmcairt2l@washingtonpost.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (47, N'788-524-6565', N'tbrobak2m@feedburner.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (46, N'917-866-0562', N'nsilson2n@dailymotion.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (118, N'627-310-6007', N'ktebbut2o@uol.com.br')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (126, N'108-262-1089', N'shenworth2p@com.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (52, N'884-256-4586', N'vmcgillecole2q@msu.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (8, N'334-977-4566', N'lred2r@cdc.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (102, N'682-538-4811', N'mrallings2s@plala.or.jp')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (108, N'557-965-2853', N'aghent2t@unc.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (17, N'735-947-6855', N'alindeberg2u@angelfire.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (125, N'123-290-8593', N'rgierck2v@pinterest.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (58, N'946-399-1445', N'asteer2w@mayoclinic.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (95, N'565-418-9251', N'gpigford2x@businesswire.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (14, N'973-203-8865', N'sswanton2y@wikia.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (134, N'301-514-4489', N'prubie2z@cmu.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (104, N'214-309-1780', N'amarshal30@netscape.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (116, N'295-820-3988', N'zhasely31@qq.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (133, N'512-316-5072', N'sdinneges32@xing.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (132, N'320-294-5028', N'cmatherson33@networkadvertising.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (89, N'125-699-3350', N'igroves34@wikimedia.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (134, N'695-854-7590', N'plindermann35@fastcompany.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (123, N'878-336-3573', N'jtrower36@sphinn.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (43, N'723-891-2259', N'amarkey37@theatlantic.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (92, N'231-630-1256', N'wdelmonti38@forbes.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (180, N'469-556-7847', N'cbleiman39@illinois.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (153, N'971-253-6991', N'smckerrow3a@printfriendly.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (175, N'224-881-7782', N'gcearley3b@blog.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (80, N'648-132-4034', N'bbritzius3c@sphinn.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (95, N'598-857-6297', N'alippard3d@networkadvertising.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (12, N'905-730-7731', N'mceney3e@sphinn.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (154, N'173-517-3996', N'pgriffith3f@icio.us')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (94, N'313-192-0763', N'cgotcher3g@unblog.fr')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (95, N'980-102-5208', N'jpriestman3h@guardian.co.uk')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (186, N'170-922-1087', N'pkarpmann3i@redcross.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (18, N'110-970-7090', N'gdooley3j@jalbum.net')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (162, N'634-876-9425', N'mrugieri3k@newyorker.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (135, N'147-460-1390', N'jparcell3l@aol.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (81, N'305-450-8276', N'vchatwood3m@uiuc.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (158, N'512-824-4158', N'bbulgen3n@japanpost.jp')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (127, N'855-553-0730', N'wtruss3o@quantcast.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (71, N'166-306-6125', N'echandlar3p@soundcloud.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (177, N'210-666-9786', N'nbratton3q@google.co.jp')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (35, N'562-208-7140', N'tbehnecke3r@jimdo.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (113, N'491-332-9221', N'kpearcey3s@istockphoto.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (151, N'268-614-1756', N'hfray3t@woothemes.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (148, N'163-531-4549', N'ssaffrin3u@php.net')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (53, N'485-673-3686', N'hlongega3v@yahoo.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (10, N'475-139-2261', N'zgermann3w@gnu.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (156, N'692-553-1475', N'cassad3x@gizmodo.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (182, N'479-388-2623', N'atuckwell3y@uol.com.br')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (193, N'175-673-9615', N'mjaffra3z@hostgator.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (151, N'661-714-1401', N'skingsland40@is.gd')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (80, N'316-297-6216', N'nkeggins41@reference.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (1, N'944-205-6545', N'gstephen42@etsy.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (199, N'978-549-7216', N'rhorribine43@so-net.ne.jp')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (92, N'118-121-2335', N'dpearde44@baidu.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (196, N'256-277-3434', N'kiacofo45@amazon.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (22, N'628-987-3341', N'dneesam46@forbes.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (167, N'690-581-3033', N'moverlow47@bravesites.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (181, N'985-278-5849', N'dmobley48@mapquest.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (7, N'908-407-9883', N'sgamblin49@google.ca')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (163, N'625-673-6991', N'gcochran4a@meetup.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (116, N'647-486-8959', N'aevert4b@home.pl')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (133, N'486-577-5729', N'bmarnes4c@scribd.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (143, N'306-296-8612', N'sstranger4d@hubpages.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (6, N'261-253-9700', N'hmcnaught4e@businesswire.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (175, N'749-824-3825', N'gkenwin4f@amazon.co.uk')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (143, N'466-236-9298', N'rblaxter4g@webmd.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (28, N'791-579-3173', N'hcraik4h@123-reg.co.uk')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (41, N'912-898-8387', N'btimoney4i@1und1.de')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (183, N'866-350-0740', N'ypounder4j@shutterfly.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (196, N'798-288-7639', N'smaile4k@wikipedia.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (155, N'741-347-0094', N'mattwoull4l@senate.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (159, N'196-989-3140', N'pdrysdell4m@bloglovin.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (168, N'185-873-5055', N'kandersson4n@nydailynews.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (121, N'695-813-6014', N'gasey4o@cyberchimps.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (72, N'992-853-8973', N'hlambdin4p@dedecms.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (129, N'283-742-3759', N'nsellek4q@hhs.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (87, N'230-322-9683', N'cbindley4r@xing.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (140, N'298-653-2136', N'naspinal4s@japanpost.jp')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (28, N'112-561-6895', N'jbille4t@salon.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (23, N'813-417-7179', N'rcresar4u@canalblog.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (138, N'719-243-2694', N'ecapes4v@upenn.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (58, N'112-871-8807', N'klorrie4w@yale.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (35, N'848-804-5260', N'mkovnot4x@phoca.cz')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (4, N'410-537-1282', N'sdranfield4y@geocities.jp')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (132, N'924-201-9273', N'dpren4z@wunderground.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (94, N'425-910-6071', N'ntucknott50@reference.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (191, N'817-520-5084', N'mruppertz51@fema.gov')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (181, N'613-968-8284', N'lstokey52@discovery.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (136, N'453-579-7767', N'dbreacher53@sciencedirect.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (56, N'748-158-7638', N'bramshay54@nba.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (191, N'955-410-1994', N'twaite55@nhs.uk')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (50, N'547-242-1618', N'bgilbard56@weibo.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (7, N'202-944-5601', N'mfrickey57@wiley.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (141, N'890-495-8451', N'eyaldren58@edublogs.org')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (195, N'680-548-9285', N'rhavill59@vk.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (136, N'310-153-2030', N'tdomenico5a@gravatar.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (26, N'167-282-9662', N'mclara5b@uiuc.edu')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (184, N'356-906-0866', N'cgeldeard5c@instagram.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (66, N'879-372-6727', N'ibonavia5d@huffingtonpost.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (158, N'632-705-5170', N'cmarcos5e@intel.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (198, N'802-922-6636', N'rpitman5f@netlog.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (155, N'155-823-6146', N'epolson5g@liveinternet.ru')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (32, N'832-972-9358', N'lseville5h@tuttocitta.it')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (68, N'659-851-0398', N'kbollands5i@netscape.com')
GO
INSERT [dbo].[contacts2] ([hotels_id], [phone], [email]) VALUES (184, N'497-743-4152', N'arenwick5j@quantcast.com')
GO
SET IDENTITY_INSERT [dbo].[food_type] ON 
GO
INSERT [dbo].[food_type] ([id], [type]) VALUES (1, N'room_only')
GO
INSERT [dbo].[food_type] ([id], [type]) VALUES (2, N'bed_&_breakfast')
GO
INSERT [dbo].[food_type] ([id], [type]) VALUES (3, N'half_board')
GO
INSERT [dbo].[food_type] ([id], [type]) VALUES (4, N'full_board')
GO
INSERT [dbo].[food_type] ([id], [type]) VALUES (5, N'all_inclusive')
GO
INSERT [dbo].[food_type] ([id], [type]) VALUES (6, N'ultra_all_inclusive')
GO
SET IDENTITY_INSERT [dbo].[food_type] OFF
GO
SET IDENTITY_INSERT [dbo].[hotels] ON 
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (1, N'Alfa', 3, 1, N'Sweden', N'Storuman', N'95 Lawn Drive')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (2, N'Delta Juliett', 3, 2, N'Russia', N'Semiletka', N'6326 Stuart Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (3, N'Whiskey Oscar', 5, 1, N'Indonesia', N'Padasuka', N'35001 Alpine Avenue')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (4, N'Victor', 5, 1, N'Azerbaijan', N'Aghsu', N'29 Ludington Place')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (5, N'Tango', 2, 2, N'South Africa', N'Mpophomeni', N'49 Reinke Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (6, N'Hotel Uniform', 4, 5, N'Indonesia', N'Jambulang', N'26 Sunfield Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (7, N'Papa Delta', 5, 1, N'Bulgaria', N'Ardino', N'9 Sherman Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (8, N'Delta', 4, 4, N'Mongolia', N'Burgaltay', N'471 Arizona Avenue')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (9, N'Bravo', 1, 2, N'France', N'Cambrai', N'4950 Fisk Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (10, N'Mike Hotel', 1, 1, N'Yemen', N'Al ‘Anan', N'29341 Novick Way')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (11, N'Uniform Juliett', 5, 5, N'Iran', N'Jask', N'799 Veith Avenue')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (12, N'Sierra', 1, 3, N'Peru', N'Jayanca', N'0 Northfield Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (13, N'Juliett Whiskey', 1, 5, N'Indonesia', N'Padangtikar', N'95555 Gina Lane')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (14, N'Papa', 5, 4, N'Argentina', N'Parana', N'68 Pond Court')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (15, N'Golf', 1, 3, N'China', N'Tiandu', N'577 Calypso Terrace')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (17, N'Mike', 2, 5, N'Indonesia', N'Lewolen', N'0360 4th Court')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (18, N'Bravo X-ray', 5, 6, N'Indonesia', N'Banjar Gunungpande', N'5003 Bartelt Park')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (19, N'Kilo Tango', 2, 1, N'Russia', N'Miskindzha', N'5774 Beilfuss Terrace')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (20, N'Oscar Sierra', 5, 2, N'Syria', N'‘Ayn al Bay?a', N'9 Bowman Court')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (21, N'Golf', 5, 6, N'Indonesia', N'Gandong', N'3 Lake View Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (22, N'Victor', 1, 2, N'Argentina', N'Villa Constitucion', N'80 8th Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (23, N'X-ray Tango', 2, 6, N'Indonesia', N'Saparua', N'75 Jenifer Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (24, N'India Alfa', 4, 6, N'Colombia', N'Saboya', N'642 Russell Junction')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (25, N'Oscar', 3, 3, N'Tajikistan', N'Yovon', N'49 Namekagon Parkway')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (26, N'Echo Alfa', 4, 5, N'Sweden', N'Uppsala', N'04 Lotheville Avenue')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (27, N'Mike X-ray', 1, 3, N'Poland', N'Konskowola', N'8506 Kensington Parkway')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (28, N'Foxtrot', 4, 1, N'China', N'Sanhe', N'0743 Waywood Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (29, N'Romeo Tango', 3, 4, N'Philippines', N'Bascaron', N'176 Sherman Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (30, N'Romeo', 1, 6, N'United States', N'Boise', N'1628 Golf Course Way')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (31, N'Hotel', 5, 1, N'Indonesia', N'Parung', N'62495 Mcbride Street')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (32, N'Papa', 5, 4, N'Indonesia', N'Gandu', N'4011 American Ash Lane')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (33, N'Mike', 2, 6, N'Netherlands', N'Veldhoven', N'01 Packers Place')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (34, N'Alfa', 4, 6, N'Portugal', N'Almargem do Bispo', N'26 Grasskamp Avenue')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (35, N'Whiskey', 1, 2, N'Portugal', N'Santana', N'81 Dayton Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (36, N'Hotel Echo', 4, 5, N'Nigeria', N'Ughelli', N'5 Homewood Court')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (37, N'Quebec Uniform', 5, 3, N'Brazil', N'Engenheiro Beltrao', N'2 Cottonwood Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (38, N'Sierra', 5, 1, N'China', N'Hechuan', N'725 Village Green Center')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (39, N'Whiskey November', 1, 2, N'Honduras', N'Yuscaran', N'898 Fairview Place')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (40, N'Tango Uniform', 1, 5, N'Poland', N'Lubichowo', N'2 Michigan Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (41, N'Tango Whiskey', 1, 2, N'Serbia', N'Gornji Breg', N'4195 Bayside Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (42, N'Foxtrot', 1, 3, N'China', N'Zhaogezhuang', N'65896 Barnett Plaza')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (43, N'Oscar', 4, 6, N'Brazil', N'Tarauaca', N'0 Summerview Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (44, N'Delta Papa', 2, 4, N'Guatemala', N'Comapa', N'387 Alpine Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (45, N'Hotel', 4, 3, N'France', N'Marseille', N'2165 Walton Alley')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (46, N'Bravo', 2, 2, N'Russia', N'Kugesi', N'4 Waywood Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (47, N'Foxtrot', 1, 2, N'Spain', N'Malaga', N'51135 Carioca Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (48, N'Bravo', 5, 3, N'China', N'Xishui', N'644 Oak Valley Street')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (49, N'Whiskey', 1, 1, N'Portugal', N'Farinheiras', N'03082 Atwood Drive')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (50, N'Uniform Golf', 4, 6, N'Azerbaijan', N'Shamakhi', N'35438 Dapin Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (51, N'Kilo Bravo', 3, 6, N'Brazil', N'Marau', N'12214 Manley Alley')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (52, N'Quebec', 2, 2, N'Indonesia', N'Walakeri', N'77 Hoffman Hill')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (53, N'Juliett Whiskey', 2, 6, N'Cameroon', N'Fundong', N'0 Bluestem Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (54, N'Romeo', 1, 2, N'Indonesia', N'Waso', N'7896 Maple Wood Alley')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (55, N'Tango', 1, 2, N'China', N'Yimamu', N'16081 Judy Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (56, N'Tango India', 5, 5, N'France', N'Alencon', N'2 Talmadge Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (57, N'Bravo', 2, 4, N'United States', N'New York City', N'2885 Waywood Lane')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (58, N'Quebec', 3, 6, N'China', N'Hongshi', N'5285 Ludington Lane')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (59, N'Tango Papa', 2, 4, N'Brazil', N'Tres Pontas', N'9997 Bluestem Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (62, N'Golf', 2, 6, N'Nigeria', N'Owode', N'6864 Coleman Terrace')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (63, N'Yankee X-ray', 4, 1, N'Germany', N'Berlin', N'71653 Anzinger Parkway')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (64, N'Quebec', 3, 3, N'Pakistan', N'Bhalwal', N'92 Johnson Plaza')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (65, N'India', 4, 6, N'China', N'Mocun', N'83004 Surrey Junction')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (66, N'November', 4, 6, N'China', N'Dongzhaogezhuang', N'70126 Shasta Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (67, N'Bravo Hotel', 4, 5, N'France', N'Bordeaux', N'09 Dapin Alley')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (68, N'Charlie Hotel', 5, 1, N'Argentina', N'Valle Grande', N'5 Portage Park')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (69, N'Victor', 3, 5, N'Portugal', N'Oliveira', N'85539 Homewood Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (70, N'Zulu Sierra', 3, 2, N'Netherlands', N'Venlo', N'9 Twin Pines Center')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (71, N'Zulu', 5, 2, N'Finland', N'Vantaa', N'9773 Farwell Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (72, N'Quebec', 3, 6, N'Sweden', N'Vaxjo', N'172 Dapin Lane')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (73, N'Uniform', 1, 3, N'Greece', N'Malesina', N'7 Clarendon Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (74, N'Yankee', 3, 2, N'Brazil', N'Sao Gotardo', N'8 Reinke Plaza')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (75, N'Zulu Romeo', 3, 6, N'Peru', N'Nanchoc', N'9155 Corscot Junction')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (76, N'Kilo', 3, 3, N'Argentina', N'Garupa', N'29 Green Hill')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (77, N'Alfa Tango', 4, 3, N'China', N'Tongjiang', N'33668 Chinook Lane')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (78, N'Charlie Golf', 3, 5, N'Russia', N'Khatanga', N'084 Mandrake Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (79, N'Zulu', 3, 2, N'Greece', N'Skotoussa', N'97605 Judy Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (80, N'Hotel Kilo', 5, 2, N'United States', N'Provo', N'024 Goodland Park')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (81, N'Victor', 1, 4, N'Philippines', N'Boljoon', N'3 Prentice Drive')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (82, N'Golf Delta', 5, 5, N'Kazakhstan', N'Ulken', N'81 Southridge Junction')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (83, N'Golf', 4, 2, N'United States', N'Cincinnati', N'7270 Barnett Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (84, N'Romeo', 2, 3, N'China', N'Sanlei', N'10 Carberry Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (85, N'Victor', 5, 5, N'Guatemala', N'San Miguel Duenas', N'9762 Haas Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (86, N'X-ray Echo', 4, 6, N'Panama', N'Siogui Abajo', N'9837 Blue Bill Park Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (87, N'Oscar', 1, 2, N'Albania', N'Brataj', N'31 Fuller Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (88, N'Foxtrot Whiskey', 4, 3, N'China', N'Pangguang', N'3 Lillian Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (89, N'Foxtrot', 4, 6, N'Bahrain', N'Manama', N'35 Rusk Center')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (91, N'Alfa Zulu', 2, 1, N'Russia', N'Dmitriyevskoye', N'8354 Troy Alley')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (92, N'Foxtrot Hotel', 3, 2, N'Philippines', N'Siayan', N'98735 Crownhardt Junction')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (93, N'Romeo', 1, 5, N'Azerbaijan', N'Geoktschai', N'8902 Mariners Cove Street')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (94, N'Charlie', 1, 5, N'China', N'Hedong', N'085 Johnson Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (95, N'Foxtrot Romeo', 5, 3, N'Brazil', N'Rio das Pedras', N'13 Evergreen Court')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (96, N'Kilo', 3, 2, N'Philippines', N'Socorro', N'446 Namekagon Way')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (97, N'Foxtrot', 2, 6, N'Russia', N'Yemva', N'48016 Hoepker Center')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (98, N'Papa Echo', 4, 2, N'China', N'Gyangqai', N'9229 Pennsylvania Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (99, N'Whiskey Romeo', 2, 1, N'Poland', N'Lubrza', N'0192 Moose Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (100, N'Oscar Charlie', 2, 5, N'Panama', N'Bejuco', N'832 Transport Parkway')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (101, N'Bravo', 1, 1, N'Romania', N'Satu Nou', N'5301 Reinke Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (102, N'Mike', 3, 2, N'China', N'Fangshan', N'63532 Spenser Plaza')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (103, N'Foxtrot Oscar', 2, 3, N'France', N'Strasbourg', N'89 Northfield Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (104, N'Oscar Quebec', 5, 2, N'China', N'Yangqing', N'27545 Farragut Avenue')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (105, N'Lima Charlie', 1, 4, N'Mongolia', N'Orgon', N'58 Kenwood Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (106, N'Echo Tango', 1, 6, N'Portugal', N'Choca do Mar', N'48 Evergreen Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (107, N'Delta', 5, 6, N'United States', N'Champaign', N'35585 Fairfield Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (108, N'Sierra Romeo', 1, 3, N'Indonesia', N'Karangori', N'13232 David Terrace')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (109, N'Romeo', 3, 4, N'Serbia', N'Turija', N'71952 Lotheville Junction')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (110, N'Quebec', 5, 2, N'Brazil', N'Coxim', N'687 Browning Terrace')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (111, N'X-ray', 4, 4, N'Colombia', N'Saboya', N'00 Union Alley')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (112, N'Sierra Delta', 1, 1, N'China', N'Xubu', N'492 Arizona Terrace')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (113, N'Kilo', 1, 1, N'Indonesia', N'Kemang', N'74 7th Court')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (114, N'Juliett', 5, 3, N'Ukraine', N'Balky', N'0 Norway Maple Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (115, N'X-ray', 4, 6, N'China', N'Guanyinsi', N'89249 Colorado Center')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (116, N'Oscar', 4, 4, N'China', N'Tuhe', N'0768 Westend Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (117, N'Tango', 5, 1, N'Vietnam', N'Me Linh', N'495 Mcbride Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (118, N'Kilo Foxtrot', 3, 1, N'Indonesia', N'Kedungbacin', N'67762 American Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (119, N'Charlie', 2, 2, N'Sweden', N'Vastra Frolunda', N'5263 Prentice Avenue')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (120, N'Foxtrot Mike', 5, 3, N'China', N'Tuguanpu', N'54 Barby Way')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (121, N'Quebec November', 1, 3, N'China', N'Zhanjiang', N'5896 John Wall Center')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (122, N'Victor Zulu', 4, 6, N'United States', N'Greeley', N'9219 Mosinee Hill')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (123, N'November Alfa', 1, 5, N'Mongolia', N'Hovd', N'6471 Raven Street')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (124, N'Mike', 3, 6, N'Brazil', N'Mineiros', N'487 Warrior Hill')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (125, N'India Papa', 4, 3, N'China', N'Kesha', N'986 Golf Course Court')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (126, N'November Victor', 2, 6, N'Poland', N'Rakszawa', N'4954 Springview Plaza')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (127, N'Mike', 3, 2, N'Indonesia', N'Klumpit', N'08 Tennessee Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (128, N'Delta Uniform', 4, 3, N'Poland', N'Wegry', N'7 Towne Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (129, N'Whiskey Quebec', 5, 4, N'Finland', N'Lovisa', N'1156 Brickson Park Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (130, N'Romeo Foxtrot', 5, 4, N'China', N'Gaoyi', N'70 La Follette Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (131, N'Delta', 4, 5, N'Russia', N'Troitskoye', N'28615 Anniversary Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (132, N'Uniform', 2, 5, N'Canada', N'Invermere', N'3 Shelley Hill')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (133, N'X-ray', 2, 2, N'Philippines', N'Paatan', N'7 Leroy Parkway')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (134, N'Quebec Kilo', 4, 1, N'Chile', N'Rio Bueno', N'647 Dapin Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (135, N'Mike Bravo', 5, 6, N'Indonesia', N'Kedungsumurkrajan', N'707 Homewood Avenue')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (136, N'Whiskey Zulu', 5, 2, N'Uzbekistan', N'Parkent', N'1 Dottie Junction')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (137, N'Romeo Papa', 5, 2, N'Sweden', N'Herrljunga', N'08003 Farwell Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (138, N'Zulu', 2, 1, N'Indonesia', N'Hane', N'672 Heath Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (139, N'Delta India', 2, 6, N'Uruguay', N'Nuevo Berlin', N'34494 Moose Place')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (140, N'Quebec Foxtrot', 3, 5, N'Argentina', N'Avellaneda', N'66896 Montana Place')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (141, N'Hotel', 1, 4, N'China', N'Tingping', N'6341 Green Ridge Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (142, N'Papa Tango', 4, 3, N'China', N'Hepu', N'1 Cardinal Parkway')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (143, N'Juliett', 3, 6, N'Slovenia', N'Ljubno ob Savinji', N'94 Eastwood Junction')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (144, N'Oscar', 2, 2, N'Greece', N'Varnavas', N'35 Grover Street')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (145, N'Whiskey Oscar', 2, 5, N'Bangladesh', N'Sakhipur', N'74 Elmside Parkway')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (146, N'Tango Echo', 4, 3, N'Russia', N'Orda', N'66461 Haas Avenue')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (147, N'Mike Lima', 4, 2, N'Croatia', N'Dubrava', N'763 Eastwood Street')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (148, N'Juliett', 3, 2, N'China', N'Yuandianhui', N'12913 Anniversary Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (149, N'Quebec Juliett', 2, 1, N'Cuba', N'Jesus Menendez', N'68 Dennis Place')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (150, N'India', 3, 6, N'Paraguay', N'Altos', N'33283 Mandrake Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (151, N'India Yankee', 3, 4, N'Afghanistan', N'Kai', N'155 Reindahl Center')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (152, N'Papa Quebec', 5, 6, N'United States', N'San Antonio', N'78 Sherman Center')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (153, N'Uniform', 2, 3, N'Indonesia', N'Jabon', N'1008 Pepper Wood Lane')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (154, N'Juliett Kilo', 4, 3, N'Japan', N'Kashiwazaki', N'29986 Delladonna Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (155, N'Kilo Mike', 3, 2, N'China', N'Tanniu', N'1 Veith Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (156, N'Mike Victor', 5, 1, N'Brazil', N'Matinha', N'085 Utah Lane')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (157, N'Kilo', 1, 5, N'Russia', N'Rudnya', N'050 Vidon Drive')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (158, N'Echo Delta', 5, 3, N'Vietnam', N'Th? Tr?n B?c Ha', N'31 Myrtle Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (159, N'Tango', 2, 6, N'Vietnam', N'Tay H?', N'38487 Coleman Lane')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (160, N'Kilo Yankee', 2, 6, N'Japan', N'Wakayama-shi', N'38750 Pond Alley')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (161, N'Foxtrot', 5, 6, N'Russia', N'Novyy Karachay', N'24 Karstens Alley')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (162, N'Romeo', 3, 5, N'Indonesia', N'Sumberpandan', N'4913 Crowley Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (163, N'Echo Uniform', 1, 6, N'United States', N'Omaha', N'0 Mccormick Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (164, N'Mike', 3, 2, N'China', N'Qinling Jieban', N'1620 Oak Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (165, N'Sierra', 2, 1, N'Luxembourg', N'Betzdorf', N'8 Fuller Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (166, N'Delta', 1, 3, N'Indonesia', N'Sangari', N'94 New Castle Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (167, N'Lima', 1, 2, N'China', N'Nanyue', N'887 Kipling Point')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (168, N'Hotel Papa', 3, 4, N'Yemen', N'?abil ar Raydah', N'56367 Kim Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (169, N'Uniform Alfa', 4, 5, N'Croatia', N'Tuzno', N'3503 Sachs Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (170, N'Papa Golf', 5, 2, N'Hungary', N'Erd', N'41 Straubel Terrace')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (171, N'Golf Juliett', 3, 6, N'Portugal', N'Vila Maior', N'9642 Upham Terrace')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (172, N'Tango', 2, 3, N'Indonesia', N'Negararatu', N'766 Roth Hill')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (173, N'Romeo', 2, 1, N'Philippines', N'San Nicolas', N'3754 Golf View Parkway')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (174, N'Whiskey', 3, 1, N'Saudi Arabia', N'Qal‘at Bishah', N'57 Glacier Hill Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (175, N'Hotel', 3, 5, N'China', N'Fenghuangshan', N'1 Loeprich Park')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (176, N'X-ray Foxtrot', 2, 4, N'China', N'Mahekou', N'1415 Nova Park')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (177, N'Tango', 2, 2, N'China', N'Xishan', N'3 Commercial Park')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (178, N'Foxtrot Quebec', 2, 6, N'Czech Republic', N'Rosice', N'11273 Badeau Terrace')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (179, N'X-ray', 3, 2, N'Azerbaijan', N'Shamkhor', N'72 Waubesa Plaza')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (180, N'Bravo Victor', 2, 1, N'Czech Republic', N'Opocno', N'709 Ohio Drive')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (181, N'Mike', 1, 6, N'Japan', N'Okazaki', N'1 Main Hill')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (182, N'Kilo Charlie', 3, 1, N'Philippines', N'Eguia', N'65 Garrison Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (183, N'Tango Zulu', 4, 1, N'Czech Republic', N'Tlumacov', N'1 Lunder Alley')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (184, N'Bravo Mike', 3, 1, N'Greece', N'Stirion', N'94332 Alpine Trail')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (185, N'Whiskey', 3, 2, N'Nepal', N'Bardiya', N'7814 Burning Wood Court')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (186, N'Uniform November', 3, 6, N'China', N'Wupu', N'78808 Hintze Center')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (187, N'Delta Sierra', 1, 4, N'Finland', N'Vihti', N'28872 Fordem Pass')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (188, N'Uniform Juliett', 2, 6, N'United States', N'Boulder', N'06 Roth Lane')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (189, N'Bravo Echo', 4, 3, N'Russia', N'Slavgorod', N'149 Eagan Way')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (190, N'Yankee Tango', 2, 6, N'Iran', N'Dalgan', N'4246 Lake View Hill')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (191, N'India Oscar', 3, 5, N'Chad', N'Doba', N'0 Lien Circle')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (192, N'Tango Kilo', 3, 1, N'Sweden', N'Torslanda', N'2 Dovetail Place')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (193, N'Whiskey', 5, 5, N'Peru', N'La Union', N'55190 Mockingbird Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (194, N'Lima', 5, 2, N'Indonesia', N'Klumbu', N'4 Harper Avenue')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (195, N'Foxtrot Mike', 5, 5, N'Poland', N'Wojnicz', N'913 Hanover Crossing')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (196, N'Whiskey Golf', 4, 6, N'China', N'Caikouji', N'8 Magdeline Road')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (197, N'Victor', 3, 1, N'France', N'Paris 05', N'7 Magdeline Court')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (198, N'Uniform', 4, 1, N'Brazil', N'Beberibe', N'3967 Troy Parkway')
GO
INSERT [dbo].[hotels] ([id], [title], [stars], [food_type_id], [country], [city], [address]) VALUES (200, N'November Quebec', 3, 5, N'Norway', N'Oslo', N'73761 Ridge Oak Park')
GO
SET IDENTITY_INSERT [dbo].[hotels] OFF
GO
INSERT [dbo].[placings] ([id], [type_placing]) VALUES (1, N'single')
GO
INSERT [dbo].[placings] ([id], [type_placing]) VALUES (2, N'double')
GO
INSERT [dbo].[placings] ([id], [type_placing]) VALUES (3, N'twin')
GO
INSERT [dbo].[placings] ([id], [type_placing]) VALUES (4, N'triple')
GO
SET IDENTITY_INSERT [dbo].[roles] ON 
GO
INSERT [dbo].[roles] ([id], [role]) VALUES (1, N'guest')
GO
INSERT [dbo].[roles] ([id], [role]) VALUES (2, N'admin')
GO
INSERT [dbo].[roles] ([id], [role]) VALUES (3, N'tour_operator')
GO
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[room_types] ON 
GO
INSERT [dbo].[room_types] ([id], [type_rooms]) VALUES (1, N'standart')
GO
INSERT [dbo].[room_types] ([id], [type_rooms]) VALUES (2, N'bedroom')
GO
INSERT [dbo].[room_types] ([id], [type_rooms]) VALUES (3, N'studio')
GO
INSERT [dbo].[room_types] ([id], [type_rooms]) VALUES (4, N'family_room')
GO
INSERT [dbo].[room_types] ([id], [type_rooms]) VALUES (5, N'de_luxe')
GO
INSERT [dbo].[room_types] ([id], [type_rooms]) VALUES (6, N'business')
GO
INSERT [dbo].[room_types] ([id], [type_rooms]) VALUES (7, N'honeymoon_room')
GO
INSERT [dbo].[room_types] ([id], [type_rooms]) VALUES (8, N'duplex')
GO
INSERT [dbo].[room_types] ([id], [type_rooms]) VALUES (9, N'apartment')
GO
INSERT [dbo].[room_types] ([id], [type_rooms]) VALUES (10, N'president')
GO
SET IDENTITY_INSERT [dbo].[room_types] OFF
GO
SET IDENTITY_INSERT [dbo].[rooms] ON 
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (401, 120, 4, 1, 477.5400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (402, 92, 10, 4, 288.8900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (404, 71, 2, 3, 520.5500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (405, 49, 7, 2, 155.4900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (406, 91, 5, 2, 195.4600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (407, 9, 2, 4, 335.9900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (408, 141, 10, 2, 209.3000, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (409, 8, 7, 1, 323.4200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (410, 179, 2, 2, 849.4000, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (411, 9, 10, 3, 316.9800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (412, 7, 8, 4, 559.2600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (413, 129, 4, 3, 39.9900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (414, 87, 2, 1, 881.3900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (415, 2, 10, 3, 100.5600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (416, 49, 9, 3, 62.0200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (417, 164, 5, 4, 601.2600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (418, 47, 4, 1, 674.5900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (419, 150, 6, 4, 670.6800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (420, 177, 7, 1, 274.9400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (421, 33, 1, 3, 729.2400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (422, 136, 6, 4, 768.4900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (423, 77, 8, 4, 79.3200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (424, 142, 6, 1, 393.8400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (425, 157, 1, 4, 704.9200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (426, 108, 8, 3, 431.3200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (427, 13, 9, 4, 107.3800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (428, 195, 3, 1, 942.1200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (429, 142, 3, 3, 75.6400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (430, 161, 5, 2, 474.2700, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (431, 94, 4, 3, 679.4900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (432, 72, 9, 4, 903.6600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (433, 149, 10, 3, 472.4300, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (434, 182, 7, 1, 28.6900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (435, 105, 2, 3, 757.6500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (436, 78, 8, 2, 507.9600, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (437, 44, 2, 1, 747.4400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (438, 168, 8, 3, 993.8400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (439, 94, 1, 4, 497.6000, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (440, 56, 5, 3, 863.2500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (441, 64, 4, 4, 674.1800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (442, 25, 2, 2, 866.1700, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (443, 167, 7, 1, 113.3200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (444, 35, 3, 3, 663.6500, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (445, 145, 6, 2, 93.9200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (447, 188, 7, 1, 237.4800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (448, 117, 3, 1, 375.6300, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (449, 83, 5, 3, 24.5200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (450, 163, 7, 4, 493.7000, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (451, 65, 6, 1, 763.9700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (452, 164, 5, 4, 770.9600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (453, 154, 4, 2, 435.8400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (454, 101, 1, 3, 783.1100, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (455, 178, 5, 1, 786.8700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (456, 24, 7, 4, 998.9400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (457, 94, 9, 4, 867.3000, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (458, 21, 6, 3, 577.5900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (459, 84, 5, 2, 698.9400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (460, 85, 1, 2, 202.1500, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (461, 43, 10, 1, 636.2100, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (462, 192, 4, 3, 288.2700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (463, 92, 10, 4, 752.0500, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (464, 109, 10, 3, 671.3900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (465, 96, 7, 4, 857.4100, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (466, 120, 2, 4, 757.7200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (467, 85, 3, 2, 600.3600, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (468, 138, 10, 3, 82.1800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (469, 173, 10, 2, 35.6600, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (470, 66, 10, 2, 436.9500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (471, 6, 1, 3, 437.7700, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (472, 36, 6, 2, 800.8800, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (474, 10, 9, 2, 579.4800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (475, 139, 7, 1, 368.7600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (476, 78, 4, 3, 27.5800, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (477, 73, 6, 1, 823.6400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (478, 22, 5, 2, 130.4200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (479, 161, 10, 2, 897.4100, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (480, 154, 4, 4, 734.0300, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (481, 125, 9, 2, 709.3800, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (482, 178, 9, 2, 203.9300, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (483, 22, 7, 4, 881.9600, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (484, 184, 7, 1, 594.8300, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (485, 9, 6, 2, 23.0800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (486, 82, 6, 1, 142.1400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (487, 4, 1, 1, 592.4200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (488, 170, 5, 1, 998.8600, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (489, 193, 6, 2, 356.0500, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (490, 62, 6, 3, 135.9500, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (491, 105, 3, 2, 632.7100, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (492, 177, 4, 3, 245.5600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (493, 27, 7, 1, 684.2100, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (494, 163, 6, 1, 658.0200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (495, 179, 4, 2, 999.2100, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (496, 24, 4, 3, 735.3900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (498, 59, 4, 1, 401.5800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (499, 154, 2, 4, 72.6200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (500, 185, 3, 3, 856.4000, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (501, 36, 10, 2, 563.6900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (502, 95, 1, 4, 36.1800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (503, 190, 7, 2, 20.0700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (504, 7, 5, 4, 472.0700, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (505, 168, 6, 4, 556.3000, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (506, 114, 8, 3, 83.9200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (507, 93, 3, 1, 472.9500, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (508, 142, 5, 1, 921.0700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (509, 52, 9, 1, 794.3300, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (510, 39, 6, 2, 239.0400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (511, 99, 5, 4, 70.5200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (513, 32, 3, 3, 280.2400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (514, 17, 7, 3, 327.3700, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (515, 127, 4, 4, 290.2900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (516, 46, 8, 3, 989.9500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (517, 45, 1, 2, 386.2900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (518, 39, 3, 4, 81.1600, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (519, 14, 3, 1, 644.1200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (520, 40, 8, 3, 471.6400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (521, 192, 5, 3, 534.9700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (522, 159, 3, 1, 226.5400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (523, 131, 7, 2, 113.5900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (524, 107, 8, 2, 707.7300, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (525, 32, 4, 1, 527.8700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (526, 138, 5, 4, 829.8000, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (527, 49, 5, 1, 278.9700, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (528, 7, 4, 3, 807.8700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (529, 138, 8, 3, 197.3200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (530, 45, 9, 3, 461.1500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (531, 192, 9, 1, 40.7300, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (532, 112, 6, 3, 650.4400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (533, 89, 4, 2, 544.8200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (534, 176, 7, 1, 315.2000, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (535, 26, 5, 1, 191.7400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (536, 23, 1, 3, 540.8400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (537, 76, 4, 3, 229.3400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (538, 38, 5, 2, 783.9000, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (539, 45, 5, 4, 330.4900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (540, 70, 10, 2, 512.4300, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (541, 184, 2, 2, 137.1500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (542, 99, 9, 3, 600.2200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (543, 129, 2, 1, 208.8200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (544, 19, 4, 3, 976.6000, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (545, 103, 9, 1, 599.2700, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (546, 22, 10, 4, 222.4600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (547, 68, 5, 1, 388.6400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (548, 84, 1, 2, 594.2800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (549, 87, 1, 3, 626.1900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (550, 78, 10, 2, 862.6700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (551, 83, 7, 2, 531.1200, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (552, 198, 3, 4, 453.4800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (553, 55, 9, 1, 865.7400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (554, 92, 1, 4, 875.5700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (555, 62, 2, 4, 827.3200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (556, 149, 6, 4, 684.5900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (557, 25, 9, 3, 903.2600, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (558, 21, 4, 3, 835.5300, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (559, 193, 7, 2, 16.9800, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (560, 191, 6, 3, 988.3900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (561, 8, 5, 2, 581.6500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (562, 133, 1, 2, 944.6900, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (563, 173, 6, 3, 456.0400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (564, 146, 6, 3, 383.7300, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (565, 116, 6, 4, 113.7100, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (566, 168, 6, 2, 373.5900, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (567, 88, 1, 4, 622.5300, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (568, 111, 10, 2, 916.5300, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (569, 108, 7, 1, 393.9300, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (570, 118, 10, 2, 862.3500, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (571, 93, 2, 3, 178.1600, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (572, 149, 8, 4, 170.8000, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (573, 39, 7, 2, 159.1400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (574, 109, 9, 2, 485.4300, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (575, 121, 4, 3, 253.7800, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (576, 31, 5, 1, 44.4500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (577, 67, 7, 4, 526.8000, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (578, 83, 3, 1, 681.0100, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (580, 198, 1, 3, 140.5600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (581, 12, 5, 1, 262.5000, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (582, 119, 7, 3, 492.3500, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (583, 2, 4, 1, 329.6500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (584, 84, 7, 3, 169.8500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (585, 184, 4, 4, 307.1700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (586, 161, 8, 2, 993.0800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (587, 36, 10, 2, 629.2600, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (588, 170, 3, 1, 408.8700, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (589, 5, 9, 3, 830.3000, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (590, 152, 9, 3, 804.8800, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (591, 145, 6, 3, 267.9200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (592, 48, 6, 3, 701.5400, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (593, 51, 7, 1, 493.8400, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (594, 57, 7, 2, 189.6300, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (595, 72, 2, 3, 412.5200, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (597, 56, 7, 4, 209.7500, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (598, 188, 2, 3, 550.3800, 1)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (599, 192, 9, 1, 180.7300, 0)
GO
INSERT [dbo].[rooms] ([id], [hotels_id], [room_type_id], [placing_id], [price], [is_booked]) VALUES (600, 96, 2, 1, 937.0700, 1)
GO
SET IDENTITY_INSERT [dbo].[rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (1, 3, N'Adi', N'Primak', N'aprimak0@amazonaws.com', N'IYwPW0HZ')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (2, 3, N'Nolie', N'Cona', N'ncona1@discovery.com', N'dfFYSUXd')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (3, 1, N'Clareta', N'Nurny', N'cnurny2@creativecommons.org', N'mtsciIthxfw')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (4, 1, N'Gilbertine', N'Conquer', N'gconquer3@theglobeandmail.com', N'i6o1pfd')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (5, 3, N'Ardeen', N'Maude', N'amaude4@dot.gov', N'Vy5jEeA6WD')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (6, 2, N'Rurik', N'Goolding', N'rgoolding5@auda.org.au', N'f528CsqOABh')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (7, 1, N'Eba', N'Stannard', N'estannard6@mapy.cz', N'qtvUfTX95lgV')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (8, 1, N'Darnall', N'Cowle', N'dcowle7@theatlantic.com', N'yfa87q2y')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (9, 2, N'Hartley', N'Goodisson', N'hgoodisson8@disqus.com', N'ouWksqgQ9T')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (10, 1, N'Joye', N'Presman', N'jpresman9@flavors.me', N'MOy9y0')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (11, 2, N'Kristen', N'Faint', N'kfainta@sourceforge.net', N'HNtXpA')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (12, 1, N'Jany', N'Jonuzi', N'jjonuzib@microsoft.com', N'ULuUtC')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (13, 3, N'Julee', N'Melchior', N'jmelchiorc@google.fr', N'hcb41rgivD')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (14, 1, N'Ketti', N'Nazer', N'knazerd@ed.gov', N'lzSVSK8')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (15, 2, N'Bill', N'Slyford', N'bslyforde@simplemachines.org', N'LTVQudWn7R')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (16, 1, N'Adham', N'Grieswood', N'agrieswoodf@seattletimes.com', N'87OWlT3')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (17, 2, N'Chantalle', N'Taylerson', N'ctaylersong@github.com', N'8FvU07eDOy7')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (18, 3, N'Lonny', N'Crowe', N'lcroweh@tmall.com', N'YtFNzsEgtSe')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (19, 3, N'Florrie', N'Bartels', N'fbartelsi@army.mil', N'M6q42USV')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (20, 1, N'Donella', N'Palfrey', N'dpalfreyj@devhub.com', N'MJBnGxX9KPW')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (21, 2, N'Tobias', N'Cheavin', N'tcheavink@ifeng.com', N'9kbZ4NE9k9')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (22, 2, N'Horst', N'Barker', N'hbarkerl@pagesperso-orange.fr', N'3TV0Ov')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (23, 3, N'Debora', N'Issacson', N'dissacsonm@unc.edu', N'IWRaWvQOkCS')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (24, 3, N'Lindi', N'Peak', N'lpeakn@tiny.cc', N'lFT2uoKWS')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (25, 1, N'Gunar', N'Honeywood', N'ghoneywoodo@livejournal.com', N'QDu8xWZvVb')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (26, 2, N'Hallsy', N'Wegman', N'hwegmanp@apple.com', N'GkkvRC')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (27, 1, N'Danyelle', N'Schoular', N'dschoularq@army.mil', N'88nuSJTARBtO')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (28, 2, N'Viv', N'Venus', N'vvenusr@seattletimes.com', N'OcPe0LKWW')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (29, 1, N'Thia', N'Hinksen', N'thinksens@europa.eu', N'w3eaQr')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (30, 1, N'Chrisse', N'Belderfield', N'cbelderfieldt@columbia.edu', N'FKO4xRK')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (31, 2, N'Darnell', N'Sancto', N'dsanctou@mashable.com', N'MCBd8Mpxs')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (32, 1, N'Bobine', N'Albury', N'balburyv@gmpg.org', N'NsWXLLV')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (33, 2, N'Zarah', N'Waddams', N'zwaddamsw@skype.com', N'o53MRLKNVzGu')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (34, 3, N'Quinlan', N'Largent', N'qlargentx@typepad.com', N'z3GDYDo05w')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (35, 2, N'Patrica', N'Bourley', N'pbourleyy@slate.com', N'zbQnZB7FkX9M')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (36, 3, N'Clarence', N'Bortoluzzi', N'cbortoluzziz@mac.com', N'14bQQklWIK')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (37, 1, N'Samuel', N'Papa', N'spapa10@scientificamerican.com', N'2Q84i6eaaUa')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (38, 1, N'Carlie', N'Bezants', N'cbezants11@squidoo.com', N'uUEFLp')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (39, 2, N'Lyndell', N'McTerlagh', N'lmcterlagh12@t.co', N'Pcbo6P7cL3')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (40, 1, N'Brendin', N'Hammerson', N'bhammerson13@fastcompany.com', N'sozOCTg')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (41, 2, N'Matthaeus', N'Crannell', N'mcrannell14@hugedomains.com', N'mwLtcrkPUO')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (42, 2, N'Burtie', N'Killingbeck', N'bkillingbeck15@deliciousdays.com', N'kFI08yQ1GjZ')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (43, 2, N'Faythe', N'Pickerin', N'fpickerin16@time.com', N'pa4juy0LqgM')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (44, 1, N'Billy', N'Rosenblath', N'brosenblath17@sogou.com', N'i5ZsIg3A')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (45, 1, N'Colman', N'Aspinell', N'caspinell18@engadget.com', N'rDKxV7')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (46, 1, N'Berti', N'Josofovitz', N'bjosofovitz19@cpanel.net', N'AluigJ')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (47, 3, N'Conni', N'Sauvan', N'csauvan1a@live.com', N'YCVYCQaZ')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (48, 2, N'Brnaby', N'Heinreich', N'bheinreich1b@google.co.uk', N'CpJ2SUDYkUq')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (49, 3, N'Edy', N'Brummell', N'ebrummell1c@shinystat.com', N'adC6v6Lz')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (50, 2, N'Carline', N'Brockie', N'cbrockie1d@scribd.com', N'hsam1FdZVAG')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (51, 3, N'Percy', N'Negal', N'pnegal1e@prlog.org', N'e2aud2')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (52, 3, N'Swen', N'Mence', N'smence1f@gov.uk', N'vTXlKK5CSIAQ')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (53, 2, N'Ezra', N'Kornas', N'ekornas1g@ca.gov', N'1kUXE0X')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (54, 1, N'Adrianna', N'Dobkin', N'adobkin1h@wufoo.com', N'1q87gylX')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (55, 3, N'Rossy', N'Fownes', N'rfownes1i@miitbeian.gov.cn', N'vEdRdp75CuxV')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (56, 2, N'Ashil', N'Marjot', N'amarjot1j@paypal.com', N'MqJEhbFyV')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (57, 3, N'Deck', N'Korfmann', N'dkorfmann1k@typepad.com', N'6ef7bTs7Ogbk')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (58, 1, N'Nora', N'Bielefeld', N'nbielefeld1l@scientificamerican.com', N'MIIIqKKhHJ9')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (59, 3, N'Der', N'Baselli', N'dbaselli1m@pcworld.com', N'pBRYtXyLss9a')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (60, 1, N'Imogene', N'Borres', N'iborres1n@theglobeandmail.com', N'RckhO0dNlwbB')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (61, 1, N'Bartlett', N'Scholl', N'bscholl1o@slideshare.net', N'9kRBXxSoX5BX')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (62, 1, N'Shae', N'Hussey', N'shussey1p@naver.com', N'2SatMI725')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (63, 2, N'Chryste', N'Cockson', N'ccockson1q@redcross.org', N'e1wTv6OtKFb6')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (64, 1, N'Latrena', N'Kleen', N'lkleen1r@illinois.edu', N'eutk6ZN')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (65, 2, N'Haily', N'Ladewig', N'hladewig1s@toplist.cz', N'Jp1LwJmYQer')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (66, 3, N'Shannon', N'Kingsly', N'skingsly1t@xing.com', N'knYT3k')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (67, 1, N'Lisette', N'Mylchreest', N'lmylchreest1u@nih.gov', N'gDBJtx')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (68, 3, N'Loise', N'Jelliman', N'ljelliman1v@privacy.gov.au', N'D1kHtCF7fm7')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (69, 3, N'Gil', N'Josifovic', N'gjosifovic1w@google.pl', N'GIyk2ug')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (70, 1, N'Sarge', N'McCurry', N'smccurry1x@usatoday.com', N'GsMRcR')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (71, 1, N'Garrek', N'Stains', N'gstains1y@mlb.com', N'lrnNcpb')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (72, 3, N'Alano', N'Dunckley', N'adunckley1z@canalblog.com', N'LsiS5ceI')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (73, 3, N'Pierette', N'Storah', N'pstorah20@narod.ru', N'MNSICH6y')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (74, 3, N'Rorie', N'Clemenza', N'rclemenza21@tamu.edu', N'SqeMeN')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (75, 2, N'Izak', N'McAuliffe', N'imcauliffe22@elegantthemes.com', N'RAsBQSoJ6')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (76, 2, N'Letty', N'Caiger', N'lcaiger23@artisteer.com', N'U0RPULL')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (77, 3, N'Janice', N'Dohmer', N'jdohmer24@linkedin.com', N'rv1kMshlXS')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (78, 3, N'Jania', N'McCamish', N'jmccamish25@friendfeed.com', N'I5wKXLppn')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (79, 1, N'Anstice', N'Ferretti', N'aferretti26@arstechnica.com', N'68qwoTQLDr')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (80, 1, N'Sherye', N'Purchall', N'spurchall27@moonfruit.com', N'O8rB9zkyuY6t')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (81, 1, N'Pam', N'Geibel', N'pgeibel28@answers.com', N'XIRQyKXfAR')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (82, 2, N'Devy', N'Bogart', N'dbogart29@huffingtonpost.com', N'VS1tK1Sz6eP')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (83, 3, N'Tansy', N'Rosenfrucht', N'trosenfrucht2a@moonfruit.com', N'l2mPYeFp')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (84, 2, N'Mirabel', N'Levane', N'mlevane2b@privacy.gov.au', N'Ug0X5L')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (85, 1, N'Cos', N'Galia', N'cgalia2c@ca.gov', N'c4MKzIOtjDs')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (86, 2, N'Benetta', N'Petrecz', N'bpetrecz2d@columbia.edu', N'COweKFMRe')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (87, 3, N'Hannah', N'Beardshall', N'hbeardshall2e@webmd.com', N'vdmzNgvDxfo')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (88, 1, N'Elyse', N'Menelaws', N'emenelaws2f@surveymonkey.com', N'ev44kbriOqD')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (89, 2, N'Bella', N'Bendare', N'bbendare2g@ezinearticles.com', N'UJvwyux98Y')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (90, 3, N'Bengt', N'Tibbotts', N'btibbotts2h@tumblr.com', N'PcQA80fkl')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (91, 1, N'Umeko', N'Reeson', N'ureeson2i@discovery.com', N'3VZO88Je')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (92, 2, N'Stacy', N'Dorot', N'sdorot2j@mozilla.com', N'vudACu57r2Yq')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (93, 3, N'Cahra', N'Scantleberry', N'cscantleberry2k@rambler.ru', N'CJFEaM')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (94, 3, N'Rickert', N'Scandrite', N'rscandrite2l@nba.com', N'dlW88Pe3')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (95, 2, N'Ned', N'Rodge', N'nrodge2m@indiegogo.com', N'ZriAYkQu')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (96, 1, N'Lotte', N'Carbin', N'lcarbin2n@nyu.edu', N'yL8v3GW')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (97, 2, N'Pen', N'Brightman', N'pbrightman2o@apple.com', N'xS21nq5')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (98, 2, N'Milicent', N'Gettone', N'mgettone2p@toplist.cz', N'DPPODE')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (99, 3, N'Jonis', N'Mawford', N'jmawford2q@google.co.jp', N'4hNrjTbO')
GO
INSERT [dbo].[users] ([id], [roles_id], [first_name], [last_name], [email], [password]) VALUES (100, 1, N'Colby', N'Ivanchenkov', N'civanchenkov2r@dailymotion.com', N'tSrXT8nrjKey')
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [FK_booking_rooms] FOREIGN KEY([room_id])
REFERENCES [dbo].[rooms] ([id])
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [FK_booking_rooms]
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [FK_booking_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [FK_booking_users]
GO
ALTER TABLE [dbo].[hotels]  WITH CHECK ADD  CONSTRAINT [FK_hotels_food_type] FOREIGN KEY([food_type_id])
REFERENCES [dbo].[food_type] ([id])
GO
ALTER TABLE [dbo].[hotels] CHECK CONSTRAINT [FK_hotels_food_type]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_rooms_id_hotels] FOREIGN KEY([hotels_id])
REFERENCES [dbo].[hotels] ([id])
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_rooms_id_hotels]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_rooms_placings] FOREIGN KEY([placing_id])
REFERENCES [dbo].[placings] ([id])
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_rooms_placings]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_rooms_room_types] FOREIGN KEY([room_type_id])
REFERENCES [dbo].[room_types] ([id])
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_rooms_room_types]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([roles_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO
