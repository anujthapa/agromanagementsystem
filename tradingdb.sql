USE [tradingdb]
GO
/****** Object:  Table [dbo].[trd_item]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trd_item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemsname] [varchar](50) NULL,
	[itemscode] [int] NULL,
	[qty] [int] NULL,
	[price] [int] NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[trd_item] ON
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (1, N'Memory', 0, 200, 100, 0, 0, CAST(0x0000A3350088FAF1 AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (2, N'SMPS', 0, 230, 10, 0, 0, CAST(0x0000A3350169CC3F AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (3, N'Harddisk', 0, 860, 200, 0, 0, CAST(0x0000A33700AD9AA0 AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (4, N'Sata cable', 0, 480, 100, 0, 0, CAST(0x0000A33700AE6825 AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (5, N'Pata cable', 0, 311, 0, 1, 0, CAST(0x0000A338014170DD AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (6, N'mouse pad', 0, 0, 0, 1, 0, CAST(0x0000A33C01065610 AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (7, N'', 0, 0, 0, 1, 0, CAST(0x0000A33C010CE03E AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (8, N'', 0, 0, 0, 1, 0, CAST(0x0000A33C010D4ED4 AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (9, N'a', 0, 0, 0, 1, 0, CAST(0x0000A33C01147702 AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (10, N'Rj -45 Jack', 0, 0, 0, 1, 0, CAST(0x0000A33E015C887C AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (11, N'Rj 45', 0, 0, 0, 1, 0, CAST(0x0000A34400D739AE AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (12, N'', 0, 0, 0, 1, 0, CAST(0x0000A34E008A96C8 AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (13, N'aaa', 0, 0, 0, 1, 0, CAST(0x0000A350007DD825 AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (14, N'gg', 0, 0, 0, 1, 0, CAST(0x0000A351012EDCF6 AS DateTime))
INSERT [dbo].[trd_item] ([id], [itemsname], [itemscode], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (15, N'Crimper', 0, 100, 0, 1, 0, CAST(0x0000A3520128D826 AS DateTime))
SET IDENTITY_INSERT [dbo].[trd_item] OFF
/****** Object:  Table [dbo].[trd_clients]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trd_clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clientname] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[phonenumber] [varchar](10) NULL,
	[email] [varchar](50) NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[trd_clients] ON
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (1, N'est', N'test', N'111', N'jyoti@yahoo.com', 1, NULL, CAST(0x0000A335007DE0F1 AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (2, N'cash', N'dd', N'2', N'af@a.com', 1, NULL, CAST(0x0000A33501679EEA AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (3, N'ss', N'', N'', N'', 1, NULL, CAST(0x0000A33C011F9610 AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (4, N'sanotsh', N'dumre', N'1234567', N'dsad@dasd.com', 0, NULL, CAST(0x0000A33C012AD902 AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (5, N'saure', N'', N'', N'dfiwejfiwjfoiewjow@', 1, NULL, CAST(0x0000A33C012B3811 AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (6, N'saure', N'', N'', N'sadsad@', 1, NULL, CAST(0x0000A33C012CC2EC AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (7, N'saure', N'', N'', N'saur', 1, NULL, CAST(0x0000A33C012D7911 AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (8, N'saure', N'', N'', N'saurav@gmal.com', 1, NULL, CAST(0x0000A33C012DD48F AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (9, N'1', N'', N'', N'dasd@sdasd.com.np', 1, NULL, CAST(0x0000A33E015CBB95 AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (10, N'saurav', N'sadsa', N'12', N'saurav@gmail.com', 0, NULL, CAST(0x0000A34300F9AC8E AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (11, N'', N'', N'', N'', 1, NULL, CAST(0x0000A34A01238FB6 AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (12, N'', N'', N'', N'', 1, NULL, CAST(0x0000A34A012518C7 AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (13, N'', N'', N'', N'', 1, NULL, CAST(0x0000A34B00D9CA27 AS DateTime))
INSERT [dbo].[trd_clients] ([id], [clientname], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (14, N'', N'', N'', N'', 1, NULL, CAST(0x0000A34B00D9F9F1 AS DateTime))
SET IDENTITY_INSERT [dbo].[trd_clients] OFF
/****** Object:  Table [dbo].[trd_usertype]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trd_usertype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[usertype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[trd_usertype] ON
INSERT [dbo].[trd_usertype] ([id], [userid], [usertype]) VALUES (1, 1, N'Admin')
INSERT [dbo].[trd_usertype] ([id], [userid], [usertype]) VALUES (2, 1, N'User')
SET IDENTITY_INSERT [dbo].[trd_usertype] OFF
/****** Object:  Table [dbo].[trd_user]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trd_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[phonenumer] [varchar](10) NULL,
	[username] [varchar](20) NULL,
	[Password] [varchar](25) NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
	[usertype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[trd_user] ON
INSERT [dbo].[trd_user] ([id], [firstname], [lastname], [email], [address], [phonenumer], [username], [Password], [isactive], [userid], [usercreatedate], [usertype]) VALUES (1, N'admin', N'admin', N'admin@admin.com', N'a', N'a', N'admin', N'admin', 0, NULL, CAST(0x0000A34E00890331 AS DateTime), N'1')
INSERT [dbo].[trd_user] ([id], [firstname], [lastname], [email], [address], [phonenumer], [username], [Password], [isactive], [userid], [usercreatedate], [usertype]) VALUES (2, NULL, NULL, NULL, NULL, NULL, N'jyoti', N'jyoti', 0, NULL, CAST(0x0000A354016087F2 AS DateTime), N'2')
INSERT [dbo].[trd_user] ([id], [firstname], [lastname], [email], [address], [phonenumer], [username], [Password], [isactive], [userid], [usercreatedate], [usertype]) VALUES (3, NULL, NULL, NULL, NULL, NULL, N'Saurav', N'saurav', 0, NULL, CAST(0x0000A35401631BDB AS DateTime), N'1')
SET IDENTITY_INSERT [dbo].[trd_user] OFF
/****** Object:  Table [dbo].[trd_suppliers]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trd_suppliers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[suppliername] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[phonenumber] [varchar](10) NULL,
	[email] [varchar](30) NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[trd_suppliers] ON
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (1, N'jyoti', N'kath', N'8', N'j@y.com.np', 1, NULL, CAST(0x0000A335014B2F4B AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (2, N'jyoush', N'jj', N'11', N'jj@ab.com', 1, NULL, CAST(0x0000A33501677367 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (3, N'', N'', N'', N'', 1, NULL, CAST(0x0000A33C011BC090 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (4, N'', N'', N'', N'', 1, NULL, CAST(0x0000A33C01293C15 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (5, N'', N'', N'', N'', 1, NULL, CAST(0x0000A33E01607946 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (6, N'', N'', N'', N'', 1, NULL, CAST(0x0000A34300F85962 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (7, N'', N'', N'', N'', 1, NULL, CAST(0x0000A343015CB2B0 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (8, N'', N'', N'', N'', 1, NULL, CAST(0x0000A34A01238982 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (9, N'', N'', N'', N'', 1, NULL, CAST(0x0000A34A01251198 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (10, N'test', N'test', N'test', N't@a.com', 1, NULL, CAST(0x0000A34E008A0BAB AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (11, N's', N'', N'', N'', 1, NULL, CAST(0x0000A35100ED5C59 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (12, N'Jigme Lama', N'Sifal', N'9813097011', N's', 1, NULL, CAST(0x0000A35300F36077 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (13, N'Jigme', N'Sifal', N'9849764414', N'jigme@deerwalk.com', 0, NULL, CAST(0x0000A35300F40932 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (14, N'matrix computer trading', N'putalisadak', N'014272795', N'matrrix@gmail.com', 0, NULL, CAST(0x0000A35500A466EC AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (15, N'CAS', N'putalisadak', N'014276995', N'info@castrading.com', 0, NULL, CAST(0x0000A35500A490C0 AS DateTime))
INSERT [dbo].[trd_suppliers] ([id], [suppliername], [address], [phonenumber], [email], [isactive], [userid], [usercreatedate]) VALUES (16, N'silvercrest networks', N'anamnagar', N'014102510', N'info@scn.com.np', 0, NULL, CAST(0x0000A35500A4D950 AS DateTime))
SET IDENTITY_INSERT [dbo].[trd_suppliers] OFF
/****** Object:  Table [dbo].[trd_salereturn]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_salereturn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[saledetailid] [int] NULL,
	[itemsid] [int] NULL,
	[qty] [int] NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trd_salemaster]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_salemaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clientid] [int] NULL,
	[saledate] [datetime] NULL,
	[billno] [int] NULL,
	[totalamount] [bigint] NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
 CONSTRAINT [PK__trd_sale__3213E83F0AD2A005] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[trd_salemaster] ON
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (1, 1, CAST(0x0000A33500000000 AS DateTime), 1, 3300, 0, 0, CAST(0x0000A3350151E9E2 AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (2, 1, CAST(0x0000A33700000000 AS DateTime), 2, 3000, 0, 0, CAST(0x0000A33700ACD8CE AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (3, 1, CAST(0x0000A33700000000 AS DateTime), 3, 10000, 0, 0, CAST(0x0000A33700AEC5B8 AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (4, 1, CAST(0x0000A33700000000 AS DateTime), 4, 6000, 0, 0, CAST(0x0000A33700AEE36B AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (5, 1, CAST(0x0000A34400000000 AS DateTime), 5, 0, 0, 0, CAST(0x0000A34400DEA51F AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (6, 1, CAST(0x0000A34400000000 AS DateTime), 6, 0, 0, 0, CAST(0x0000A34400DEDDA6 AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (7, 1, CAST(0x0000A35100000000 AS DateTime), 7, 3800, 0, 0, CAST(0x0000A351012FE2CA AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (8, 10, CAST(0x0000A35300000000 AS DateTime), 8, 20000, 0, 0, CAST(0x0000A353005F4CDC AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (9, 1, CAST(0x0000A35300000000 AS DateTime), 9, 1000, 0, 0, CAST(0x0000A35301659130 AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (10, 1, CAST(0x0000A35300000000 AS DateTime), 10, 4400, 0, 0, CAST(0x0000A3530166129B AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (11, 1, CAST(0x0000A35400000000 AS DateTime), 11, 0, 0, 0, CAST(0x0000A354008EDC64 AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (12, 10, CAST(0x0000A35400000000 AS DateTime), 12, 3600, 0, 0, CAST(0x0000A35400D3C40C AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (13, 1, CAST(0x0000A35400000000 AS DateTime), 13, 9800, 0, 0, CAST(0x0000A35401769F96 AS DateTime))
INSERT [dbo].[trd_salemaster] ([id], [clientid], [saledate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (14, 8, CAST(0x0000A35500000000 AS DateTime), 14, 1000, 0, 0, CAST(0x0000A355009486D2 AS DateTime))
SET IDENTITY_INSERT [dbo].[trd_salemaster] OFF
/****** Object:  Table [dbo].[trd_saledetail]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_saledetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[salemasterid] [int] NULL,
	[itemsid] [int] NULL,
	[qty] [int] NULL,
	[price] [int] NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
 CONSTRAINT [PK__trd_sale__3213E83F0EA330E9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[trd_saledetail] ON
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (1, 0, 1, 40, 100, 0, 0, CAST(0x0000A335014FC1FF AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (2, 1, 1, 10, 100, 0, 0, CAST(0x0000A3350151E9F5 AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (3, 1, 2, 30, 10, 0, 0, CAST(0x0000A335016A00B2 AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (4, 2, 2, 50, 10, 0, 0, CAST(0x0000A33700ACD8FD AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (5, 2, 1, 20, 100, 0, 0, CAST(0x0000A33700ACD902 AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (6, 3, 4, 100, 100, 0, 0, CAST(0x0000A33700AEC5C6 AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (7, 4, 4, 10, 100, 0, 0, CAST(0x0000A33700AEE38B AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (8, 4, 3, 20, 200, 0, 0, CAST(0x0000A33700AEE3D6 AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (9, 7, 1, 14, 100, 0, 0, CAST(0x0000A351012FE2D8 AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (10, 8, 3, 100, 200, 0, 0, CAST(0x0000A353005F4CE5 AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (11, 9, 1, 10, 100, 0, 0, CAST(0x0000A3530165913E AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (12, 10, 1, 20, 100, 0, 0, CAST(0x0000A353016612A4 AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (13, 10, 3, 2, 200, 0, 0, CAST(0x0000A353016612A9 AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (14, 12, 3, 18, 200, 0, 0, CAST(0x0000A35400D3C40C AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (15, 13, 1, 98, 100, 0, 0, CAST(0x0000A35401769F9F AS DateTime))
INSERT [dbo].[trd_saledetail] ([id], [salemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (16, 14, 4, 10, 100, 0, 0, CAST(0x0000A355009486D6 AS DateTime))
SET IDENTITY_INSERT [dbo].[trd_saledetail] OFF
/****** Object:  Table [dbo].[trd_purchasereturn]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_purchasereturn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[purchasedetailid] [int] NULL,
	[itemsid] [int] NULL,
	[qty] [int] NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trd_purchasemaster]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_purchasemaster](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[supplierid] [int] NULL,
	[purchasedate] [datetime] NULL,
	[billno] [int] NOT NULL,
	[totalamount] [int] NOT NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
 CONSTRAINT [PK__trd_purc__3213E83F108B795B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[trd_purchasemaster] ON
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (1, 1, CAST(0x0000A335014E1574 AS DateTime), 1, 10000, 0, 0, CAST(0x0000A335014E2CC9 AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (2, 2, CAST(0x0000A3350169D1BD AS DateTime), 1, 800, 0, 0, CAST(0x0000A3350169E29E AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (3, 2, CAST(0x0000A33700AE2BE5 AS DateTime), 21, 80000, 0, 0, CAST(0x0000A33700AE496E AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (4, 2, CAST(0x0000A33700AE6EDA AS DateTime), 77, 53000, 0, 0, CAST(0x0000A33700AE95AA AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (5, 2, CAST(0x0000A338014183B4 AS DateTime), 99, 10000, 0, 0, CAST(0x0000A33801419F4D AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (6, 2, CAST(0x0000A34E008C2A91 AS DateTime), 12, 39800, 0, 0, CAST(0x0000A34E008C5197 AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (7, 2, CAST(0x0000A35100FB6E9E AS DateTime), 12, 180, 0, 0, CAST(0x0000A35100FB8FFB AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (8, 1, CAST(0x0000A351012F10DA AS DateTime), 1, 1000, 0, 0, CAST(0x0000A351012F261D AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (9, 1, CAST(0x0000A352012904F9 AS DateTime), 11, 10000, 0, 0, CAST(0x0000A35201291E0F AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (10, 1, CAST(0x0000A35401754434 AS DateTime), 13, 1000, 0, 0, CAST(0x0000A35401755ED3 AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (11, 1, CAST(0x0000A354017564AB AS DateTime), 13, 1000, 0, 0, CAST(0x0000A3540175B783 AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (12, 1, CAST(0x0000A35401761E3D AS DateTime), 12, 1000, 0, 0, CAST(0x0000A35401762923 AS DateTime))
INSERT [dbo].[trd_purchasemaster] ([id], [supplierid], [purchasedate], [billno], [totalamount], [isactive], [userid], [usercreatedate]) VALUES (13, 1, CAST(0x0000A3540176C399 AS DateTime), 13, 10000, 0, 0, CAST(0x0000A3540176D07A AS DateTime))
SET IDENTITY_INSERT [dbo].[trd_purchasemaster] OFF
/****** Object:  Table [dbo].[trd_purchasedetail]    Script Date: 06/25/2014 12:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trd_purchasedetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[purchasemasterid] [int] NULL,
	[itemsid] [int] NULL,
	[qty] [int] NULL,
	[price] [int] NOT NULL,
	[isactive] [int] NULL,
	[userid] [int] NULL,
	[usercreatedate] [datetime] NULL,
 CONSTRAINT [PK__trd_purc__3213E83F173876EA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[trd_purchasedetail] ON
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (1, 1, 1, 100, 100, 0, 0, CAST(0x0000A335014E2CEA AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (2, 2, 2, 100, 8, 0, 0, CAST(0x0000A3350169E2BA AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (3, 3, 3, 1000, 80, 0, 0, CAST(0x0000A33700AE498C AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (4, 4, 1, 100, 10, 0, 0, CAST(0x0000A33700AE95CB AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (5, 4, 2, 200, 10, 0, 0, CAST(0x0000A33700AE9616 AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (6, 4, 4, 500, 100, 0, 0, CAST(0x0000A33700AE961F AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (7, 5, 5, 100, 100, 0, 0, CAST(0x0000A33801419F6E AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (8, 6, 5, 199, 200, 0, 0, CAST(0x0000A34E008C51A5 AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (9, 7, 5, 12, 15, 0, 0, CAST(0x0000A35100FB9009 AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (10, 8, 1, 10, 100, 0, 0, CAST(0x0000A351012F262B AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (11, 9, 15, 100, 100, 0, 0, CAST(0x0000A35201291E1D AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (12, 12, 2, 10, 100, 0, 0, CAST(0x0000A35401755EE1 AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (13, 12, 1, 100, 10, 0, 0, CAST(0x0000A3540175B787 AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (14, 12, 4, 100, 10, 0, 0, CAST(0x0000A3540176292C AS DateTime))
INSERT [dbo].[trd_purchasedetail] ([id], [purchasemasterid], [itemsid], [qty], [price], [isactive], [userid], [usercreatedate]) VALUES (15, 13, 1, 100, 100, 0, 0, CAST(0x0000A3540176D083 AS DateTime))
SET IDENTITY_INSERT [dbo].[trd_purchasedetail] OFF
/****** Object:  StoredProcedure [dbo].[trd_pro_user_save]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_user_save]
@id int,
--@firstname varchar(50),
--@lastname varchar(50),
--@email varchar(50),
--@address varchar(50),
--@phonenumer varchar(10),
@username varchar(20),
@password varchar(25),
@usertype varchar(50)

as
begin

if (@id = null or @id =0)
begin
insert into trd_user
             (username,[Password],usertype
             --,firstname,lastname,email,[address],phonenumer
             )
values       (@username,@password,@usertype
		--,@firstname,@lastname,@email,@address,@phonenumer
		)
end
else
begin
update trd_user set username=@username,[Password]=@password,usertype=@usertype
--,firstname=@firstname,lastname=@lastname,email=@email,[address]=@address,phonenumer=@phonenumer 
where id=@id
end
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_supplier_save]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trd_pro_supplier_save]
@id int,
@suppliername varchar(50),
@address varchar(50),
@phonenumber varchar(10),
@email varchar(30) 
as 
begin

if (@id is null or @id = 0)
Begin
insert into trd_suppliers (suppliername,[address],phonenumber,email) values
( @suppliername,@address,@phonenumber,@email)
End
else
begin
   update trd_suppliers set
   suppliername = @suppliername
   ,[address] = @address
   ,phonenumber = @phonenumber
   ,email = @email
   where id = @id
   
End

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_supplier_listbyname]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[trd_pro_supplier_listbyname]
@suppliername varchar(50)
as 
begin
select * from trd_suppliers where suppliername like + @suppliername + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_supplier_list]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_supplier_list]
as 
begin

select * from trd_suppliers
where isactive = 0 

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_supplier_insert]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trd_pro_supplier_insert]
@suppliername varchar(50),
@address varchar(50),
@phonenumber varchar(10),
@email varchar(30) 
as 
begin

insert into trd_suppliers (suppliername,[address],phonenumber,email) values
( @suppliername,@address,@phonenumber,@email)


end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_salemaster_save]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trd_pro_salemaster_save]
@id int,
@clientid int,
@saledate datetime,
@billno int ,
@totalamount money , 
@userid int
as 
begin

if (@id is null or @id = 0)
Begin
insert into trd_salemaster 
(
	clientid,
	saledate,
	billno,
	totalamount,
	userid
	)
values
( 
	@clientid,
	@saledate,
	@billno,
	@totalamount,
	@userid
)
End
else
begin
   update trd_salemaster set
    clientid =@clientid,
	saledate =@saledate ,
	billno = @billno,
	totalamount = @totalamount,
	userid= @userid
   where id = @id
   
End

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_salemaster_list]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trd_pro_salemaster_list]
as 
begin

select trd_salemaster.* , trd_clients.clientname 
from trd_salemaster
join 
trd_clients
on
trd_salemaster.clientid = trd_clients.id
and trd_salemaster.isactive = 0 
order by trd_salemaster.id asc

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_salemaster_GetMaxID]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_salemaster_GetMaxID]
as
begin
SELECT ISNULL(MAX(id), 0) AS id
FROM trd_salemaster
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_saledetail_save]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_saledetail_save]
@id int,
@salemasterid int,
@itemsid int,
@qty int,
@price int,
@userid int

as
begin

if (@id = null or @id =0)
begin
insert into trd_saledetail
(
salemasterid,
itemsid,
qty,
price,
userid
)
values
(
@salemasterid,
@itemsid,
@qty,
@price,
@userid
)

update trd_item set 
qty = qty - @qty
where id = @itemsid
end

else 

begin
update trd_saledetail set
salemasterid = @salemasterid,
itemsid = @itemsid,
qty = @qty,
price = @price,
userid = @userid
where id = @id
 end
 
 end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_saledetail_list]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trd_pro_saledetail_list]
@salemasterid int
as 
begin

select trd_saledetail.* , (trd_saledetail.qty * trd_saledetail.price)  as totalamount , trd_item.itemsname 
from trd_saledetail
join 
trd_item
on
trd_saledetail.itemsid = trd_item.id
and trd_saledetail.salemasterid = @salemasterid
and trd_saledetail.isactive = 0 
order by trd_saledetail.id asc

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_purchasemaster_save]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[trd_pro_purchasemaster_save]
@id int,
@supplierid int,
@purchasedate datetime,
@billno int ,
@totalamount money , 
@userid int
as 
begin

if (@id is null or @id = 0)
Begin
insert into trd_purchasemaster 
(
	supplierid,
	purchasedate ,
	billno,
	totalamount,
	userid
	)
values
( 
	@supplierid,
	@purchasedate,
	@billno,
	@totalamount,
	@userid
)
End
else
begin
   update trd_purchasemaster set
    supplierid = @supplierid,
	purchasedate = @purchasedate ,
	billno = @billno,
	totalamount = @totalamount,
	userid= @userid
   where id = @id
   
End

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_purchasemaster_GetMaxID]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_purchasemaster_GetMaxID]

as 
begin

SELECT ISNULL(MAX(id), 0) AS id
FROM trd_purchasemaster
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_purchasedetail_save]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_purchasedetail_save]
@id int,
@purchasemasterid int,
@itemid int,
@qty int,
@price int , 
@userid int
as 
begin

if (@id is null or @id = 0)
Begin
insert into trd_purchasedetail
(
	purchasemasterid,
	itemsid ,
	qty,
	price,
	userid
	)
values
( 
	@purchasemasterid,
	@itemid,
	@qty,
	@price,
	@userid
)

  update trd_item set 
   qty = qty + @qty
   where id = @itemid
End
else
begin
   update trd_purchasedetail set
	purchasemasterid = @purchasemasterid,
	itemsid = @itemid ,
	qty = @qty,
	price = @price,
	userid= @userid
   where id = @id
   
End

end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_item_listbyname]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_item_listbyname]
@itemsname varchar(50)
as 
begin
select * from trd_item where itemsname like @itemsname  + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_getlogin]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trd_pro_getlogin]
@username varchar(50),
@password varchar(50)
as 
begin
select trd_user.id,trd_user.firstname as fullname,trd_usertype.usertype
from trd_user,trd_usertype
where trd_user.usertype = trd_usertype.id
and trd_user.username = @username
and trd_user.[password]= @password
end
GO
/****** Object:  StoredProcedure [dbo].[trd_pro_client_listbyname]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[trd_pro_client_listbyname]
@clientname varchar(50)
as 
begin
select * from trd_clients where clientname like + @clientname + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_user_list]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_user_list]
 as 
 begin
 select * from trd_user
 where isactive = 0
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_supplier_update]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[trading_pro_supplier_update]
@id int,
@suppliername varchar(50),
@address varchar(50),
@phonenumber varchar(10),
@email varchar(30) 
as 
begin
update trd_suppliers set suppliername=@suppliername,[address]=@address, phonenumber=@phonenumber,email=@email where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_supplier_delete]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_supplier_delete]
@id int 

as
begin
  Update trd_suppliers set 
  isactive = 1 
  where id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_purchasemaster_listvybillno]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_purchasemaster_listvybillno]
 @billno int
 as 
 begin
 select trd_purchasemaster.id,trd_purchasemaster.billno,
 trd_purchasemaster.purchasedate,
 trd_purchasemaster.totalamount, trd_suppliers.suppliername 
 from trd_purchasemaster , trd_suppliers
 where  trd_purchasemaster.supplierid = trd_suppliers.id
 and
 trd_purchasemaster.isactive = 0
 AND 
 trd_purchasemaster.billno like + convert(varchar(20),@billno,120) + '%'   
 
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_purchasemaster_list]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_purchasemaster_list]
 as 
 begin
 select trd_purchasemaster.id,trd_purchasemaster.billno,
 trd_purchasemaster.purchasedate,
 trd_purchasemaster.totalamount, trd_suppliers.suppliername 
 from trd_purchasemaster , trd_suppliers
 where  trd_purchasemaster.supplierid = trd_suppliers.id
 and
 trd_purchasemaster.isactive = 0
 
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_purchasedetail_listbyid]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_purchasedetail_listbyid]
 @purchasemasterid int
 as 
 begin
 select trd_purchasedetail.* , trd_item.itemsname
 from trd_purchasedetail , trd_item
 where  trd_purchasedetail.itemsid = trd_item.id
 and
 trd_purchasedetail.isactive = 0
 and trd_purchasedetail.purchasemasterid = @purchasemasterid
 
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_purchasedetail_listbybillno]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_purchasedetail_listbybillno]
 @billno int
 as 
 begin
 select trd_purchasedetail.* , trd_item.itemsname
 from trd_purchasedetail , trd_item , trd_purchasemaster 
 where  trd_purchasedetail.itemsid = trd_item.id
 and
 trd_purchasemaster.id = trd_purchasedetail.purchasemasterid
 and trd_purchasedetail.isactive = 0
 and trd_purchasemaster.billno = @billno
 
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_items_save]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_items_save]
@id int ,
@itemsname varchar(50),
@itemscode int,
@qty int,
@price Money,
@userid int
 as
 begin
 if(@id is null or @id = 0)
 begin
	 insert into trd_item 
	 (
		itemsname,
		itemscode,
		qty,
		price,
		userid
	  )
	 values 
	 (
		@itemsname,
		@itemscode,
		@qty,
		@price,
		@userid
	)
	 end
 else 
 begin
	update trd_item set
		itemsname=@itemsname,
		itemscode =@itemscode,
		qty=@qty,
		price=@price
	where id=@id

 end 
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_items_list]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_items_list]
 as 
 begin
 select * from trd_item
 where isactive = 0
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_items_checkqty]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_items_checkqty]
	@id int,
	@qty int
 as 
 begin
 select COUNT(id) as id from trd_item
 where isactive = 0
 and id = @id 
 and qty > @qty
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_items_checkitemsname]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_items_checkitemsname]
	@itemsname varchar(50)
 as 
 begin
 select COUNT(id) as id from trd_item
 where isactive = 0
 and itemsname = @itemsname
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_item_update]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_item_update]
@id int,
@itemsname varchar(50),
@itemscode int,
@qty int,
@price int

as 
begin
update trd_item set itemsname=@itemsname,itemscode =@itemscode, qty=@qty,price=@price where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_item_delete]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_item_delete]
@id int 

as
begin
  Update trd_item set 
  isactive = 1 
  where id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_clients_insert]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[trading_pro_clients_insert]
  @id int ,
  @clientname varchar(50),
  @address varchar(50),
  @phonenumber varchar(50),
  @email varchar(50)

  as 
  begin
  if (@id = 0 or @id is null)
  begin
		  insert into trd_clients(clientname,[address],phonenumber,email)
		  values 
		  (@clientname,@address,@phonenumber,@email)
   end
   
   else 
   begin
			update trd_clients set
			clientname=@clientname,
			[address]=@address,
			phonenumber=@phonenumber,
			email=@email
			where id=@id
   end
   end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_client_list]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[trading_pro_client_list]
 as 
 begin
 select * from trd_clients
 where isactive = 0
 end
GO
/****** Object:  StoredProcedure [dbo].[trading_pro_client_delete]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[trading_pro_client_delete]
@id int 

as
begin
  Update trd_clients set 
  isactive = 1 
  where id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[pro_usertype_save]    Script Date: 06/25/2014 12:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pro_usertype_save]
@id int,
@usertype varchar(30),
@userid int
as
begin
if(@id=0 or @id is null)
begin
insert into trd_usertype(usertype,userid)
values(@usertype,@userid)
end
else
begin
update trd_usertype set usertype=@usertype,userid=@userid where id=@id
end
end
GO
/****** Object:  Default [DF__trd_clien__isact__33D4B598]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_clients] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_clien__userc__34C8D9D1]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_clients] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_item__isacti__35BCFE0A]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_item] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_item__usercr__36B12243]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_item] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_purch__isact__1920BF5C]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_purchasedetail] ADD  CONSTRAINT [DF__trd_purch__isact__1920BF5C]  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_purch__userc__1A14E395]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_purchasedetail] ADD  CONSTRAINT [DF__trd_purch__userc__1A14E395]  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_purch__purch__1273C1CD]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_purchasemaster] ADD  CONSTRAINT [DF__trd_purch__purch__1273C1CD]  DEFAULT (getdate()) FOR [purchasedate]
GO
/****** Object:  Default [DF__trd_purch__isact__1367E606]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_purchasemaster] ADD  CONSTRAINT [DF__trd_purch__isact__1367E606]  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_purch__userc__145C0A3F]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_purchasemaster] ADD  CONSTRAINT [DF__trd_purch__userc__145C0A3F]  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_purch__isact__3C69FB99]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_purchasereturn] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_purch__userc__3D5E1FD2]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_purchasereturn] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_saled__isact__3E52440B]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_saledetail] ADD  CONSTRAINT [DF__trd_saled__isact__3E52440B]  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_saled__userc__3F466844]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_saledetail] ADD  CONSTRAINT [DF__trd_saled__userc__3F466844]  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_salem__saled__403A8C7D]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_salemaster] ADD  CONSTRAINT [DF__trd_salem__saled__403A8C7D]  DEFAULT (getdate()) FOR [saledate]
GO
/****** Object:  Default [DF__trd_salem__isact__412EB0B6]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_salemaster] ADD  CONSTRAINT [DF__trd_salem__isact__412EB0B6]  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_salem__userc__4222D4EF]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_salemaster] ADD  CONSTRAINT [DF__trd_salem__userc__4222D4EF]  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_saler__isact__4316F928]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_salereturn] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_saler__userc__440B1D61]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_salereturn] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_suppl__isact__44FF419A]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_suppliers] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_suppl__userc__45F365D3]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_suppliers] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
/****** Object:  Default [DF__trd_user__isacti__46E78A0C]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_user] ADD  DEFAULT ((0)) FOR [isactive]
GO
/****** Object:  Default [DF__trd_user__usercr__47DBAE45]    Script Date: 06/25/2014 12:55:43 ******/
ALTER TABLE [dbo].[trd_user] ADD  DEFAULT (getdate()) FOR [usercreatedate]
GO
