
CREATE DATABASE [QLHangHoa]
 
USE [QLHangHoa]
GO
/****** Object:  User [dzlm]    Script Date: 7/6/2021 6:19:03 PM ******/
CREATE USER [dzlm] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [dzlm]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 7/6/2021 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[MaLoai] [int] NOT NULL,
	[TenHang] [nvarchar](50) NOT NULL,
	[Gia] [numeric](18, 0) NULL,
	[Anh] [nvarchar](100) NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 7/6/2021 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAccount]    Script Date: 7/6/2021 6:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAccount](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
 CONSTRAINT [PK_tblAccount] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HangHoa] ON 

INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (1, 1, N'Samsung J8', CAST(1000 AS Numeric(18, 0)), N'Img_1.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (2, 1, N'Iphone 8', CAST(2000 AS Numeric(18, 0)), N'Img_2.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (3, 1, N'Nokia 8', CAST(1500 AS Numeric(18, 0)), N'Img_3.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (4, 2, N'Dell xps', CAST(2500 AS Numeric(18, 0)), N'Img_4.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (5, 2, N'Sony SVT', CAST(2000 AS Numeric(18, 0)), N'Img_5.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (6, 3, N'Sony S1393', CAST(1800 AS Numeric(18, 0)), N'Img_6.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (7, 3, N'Hang moi', CAST(1000 AS Numeric(18, 0)), N'Img_1.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (8, 3, N'ghjk', CAST(1500 AS Numeric(18, 0)), N'Img_2.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (9, 1, N'Hang moi', CAST(1200 AS Numeric(18, 0)), N'Img_3.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (10, 1, N'xxxx', CAST(1400 AS Numeric(18, 0)), N'Img_4.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (16, 2, N'akjdf;lakj', CAST(1200 AS Numeric(18, 0)), N'Img_5.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (23, 5, N'Ốp điện thoại', CAST(100 AS Numeric(18, 0)), N'Img_1.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (24, 1, N'Hang moi', CAST(150 AS Numeric(18, 0)), N'img_2.jpg')
INSERT [dbo].[HangHoa] ([MaHang], [MaLoai], [TenHang], [Gia], [Anh]) VALUES (25, 1, N'Honda', NULL, N'Img_1.jpg')
SET IDENTITY_INSERT [dbo].[HangHoa] OFF
SET IDENTITY_INSERT [dbo].[LoaiHang] ON 

INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (1, N'Điện thoại')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (2, N'Máy tính')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (3, N'Ti vi')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (4, N'Tủ lạnh')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (5, N'Phụ kiện')
SET IDENTITY_INSERT [dbo].[LoaiHang] OFF
SET IDENTITY_INSERT [dbo].[tblAccount] ON 

INSERT [dbo].[tblAccount] ([Uid], [Username], [Password]) VALUES (1, N'dzlm      ', N'123456    ')
INSERT [dbo].[tblAccount] ([Uid], [Username], [Password]) VALUES (2, N'abc       ', N'123456    ')
SET IDENTITY_INSERT [dbo].[tblAccount] OFF
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_LoaiHang] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiHang] ([MaLoai])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_LoaiHang]
GO
USE [master]
GO
ALTER DATABASE [QLHangHoa] SET  READ_WRITE 
GO
