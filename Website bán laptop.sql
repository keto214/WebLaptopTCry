create database QLShopLapTop
use QLShopLapTop
/****** Object:  Table [dbo].[Categorys]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[Metakey] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Categorys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Flag] [int] NOT NULL,
	[Reply] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Links]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[TableId] [int] NULL,
 CONSTRAINT [PK_dbo.Links] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[TableId] [int] NULL,
	[ParentId] [int] NULL,
	[Position] [nvarchar](max) NULL,
	[Orders] [int] NOT NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[CustemerId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ExportDate] [datetime] NULL,
	[DeliveryAddress] [nvarchar](max) NULL,
	[DeliveryName] [nvarchar](max) NULL,
	[DeliveryPhone] [nvarchar](max) NULL,
	[DeliveryEmail] [nvarchar](max) NULL,
	[Updated_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Status] [int] NULL,
	[Trash] [int] NULL,
	[DeliveryPaymentMethod] [nvarchar](max) NULL,
	[StatusPayment] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Topid] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Created_At] [datetime] NOT NULL,
	[Created_By] [int] NULL,
	[Updated_At] [datetime] NOT NULL,
	[Updated_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductRate]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Rate] [float] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[UName] [nvarchar](50) NULL,
	[CreateAt] [datetime] NULL,
 CONSTRAINT [PK_ProductRate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[CateID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[NewPromotion] [nvarchar](max) NULL,
	[Installment] [int] NOT NULL,
	[Discount] [int] NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Specification] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProPrice] [float] NOT NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
	[ProRate] [float] NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Orders] [int] NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[Metakey] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Topics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/27/2021 7:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[Phone] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Access] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'MÁY TÍNH MỚI', N'may-tinh-moi', 8, NULL, N'MÁY TÍNH MỚI', N'MÁY TÍNH MỚI', CAST(N'2021-06-19T17:34:11.440' AS DateTime), 20, CAST(N'2021-06-19T17:34:11.440' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Máy tính văn phòng', N'may-tinh-van-phong', 8, NULL, N'Máy tính văn phòng', N'Máy tính văn phòng', CAST(N'2021-06-19T17:39:33.227' AS DateTime), 20, CAST(N'2021-06-19T17:39:48.403' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Máy tính cây', N'may-tinh-cay', 8, NULL, N'Máy tính cây', N'Máy tính cây', CAST(N'2021-06-19T17:38:48.180' AS DateTime), 20, CAST(N'2021-06-19T17:39:19.480' AS DateTime), 20, 2)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'Cao Cấp - Sang Trọng', N'cao-cap---sang-trong', 0, NULL, N'Cao Cấp - Sang Trọng', N'Cao Cấp - Sang Trọng', CAST(N'2021-03-02T13:37:18.473' AS DateTime), 20, CAST(N'2021-03-02T13:37:18.473' AS DateTime), 20, 0)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (8, N'MÁY TÍNH', N'may-tinh', 0, NULL, N'MÁY TÍNH', N'MÁY TÍNH', CAST(N'2021-06-19T17:33:58.143' AS DateTime), 20, CAST(N'2021-06-19T17:33:58.143' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (9, N'Laptop Asus mới', N'laptop-asus-moi', 1, NULL, N'Laptop Asus mới
', N'Laptop Asus mới', CAST(N'2021-06-19T17:34:48.157' AS DateTime), 20, CAST(N'2021-06-19T17:34:48.157' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (10, N'Laptop Dell mới', N'laptop-dell-moi', 1, NULL, N'Laptop Dell mới
', N'Lấy cảm hứng từ Đấu trường La Mã lịch sử, Colosseum ra đời đại diện cho sự mãnh mẽ, phiêu lưu và lòng quyết tâm chinh phục mọi khao khát của một người đàn ông trưởng thành. Thiết kế mặt 42mm hiện đại, vững chắc cùng 2 sub-dial độc đáo sẽ khiến bạn trở nên nổi bật và cá tính hơn bao giờ hết.', CAST(N'2021-06-19T17:35:05.293' AS DateTime), 20, CAST(N'2021-06-19T17:35:05.293' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (11, N'Laptop HP mới', N'laptop-hp-moi', 1, NULL, N'Laptop HP mới', N'Laptop HP mới

', CAST(N'2021-06-19T17:35:22.587' AS DateTime), 20, CAST(N'2021-06-19T17:35:22.587' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (12, N'Laptop Asus cũ', N'laptop-asus-cu', 2, NULL, N'Laptop Dell cũ
', N'Laptop Dell cũ', CAST(N'2021-06-19T17:35:52.547' AS DateTime), 20, CAST(N'2021-06-19T17:35:52.547' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (13, N'Laptop Dell cũ', N'laptop-dell-cu', 2, NULL, N'Laptop Dell cũ', N'Laptop Dell cũ

', CAST(N'2021-06-19T17:36:43.447' AS DateTime), 20, CAST(N'2021-06-19T17:36:43.447' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (14, N'Laptop HP cũ', N'laptop-hp-cu', 2, NULL, N'Laptop HP cũ
', N'Laptop HP cũ', CAST(N'2021-06-19T17:37:03.180' AS DateTime), 20, CAST(N'2021-06-19T17:37:03.180' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (15, N'Máy tính chơi game', N'may-tinh-choi-game', 3, NULL, N'Máy tính chơi game', N'Máy tính chơi game', CAST(N'2021-06-19T17:39:18.263' AS DateTime), 20, CAST(N'2021-06-19T17:39:18.263' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (16, N'DÂY DA COGNAC', N'day-da-cognac', 3, NULL, N'DÂY DA COGNAC
', N'DÂY DA COGNAC
', CAST(N'2021-03-31T16:00:51.873' AS DateTime), 21, CAST(N'2021-06-19T17:39:57.957' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (17, N'DÂY KIM LOẠI', N'day-kim-loai', 3, NULL, N'DÂY KIM LOẠI
', N'DÂY KIM LOẠI
', CAST(N'2021-03-31T16:01:15.070' AS DateTime), 21, CAST(N'2021-06-19T17:37:28.320' AS DateTime), 20, 2)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (19, N'Phụ kiện', N'phu-kien', 0, NULL, N'Phụ kiện', N'Phụ kiện', CAST(N'2021-03-31T21:50:02.627' AS DateTime), 21, CAST(N'2021-03-31T21:50:02.627' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (20, N'CPU AMD', N'cpu-amd', 19, NULL, N'CPU AMD', N'CPU AMD', CAST(N'2021-06-19T17:40:39.437' AS DateTime), 20, CAST(N'2021-06-19T17:40:39.437' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (21, N'Ổ cứng HHD', N'o-cung-hhd', 19, NULL, N'Ổ cứng HHD', N'Ổ cứng HHD', CAST(N'2021-06-19T17:41:02.407' AS DateTime), 20, CAST(N'2021-06-19T17:41:02.407' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (22, N'RAM Laptop', N'ram-laptop', 19, NULL, N'RAM Laptop', N'RAM Laptop', CAST(N'2021-06-19T17:41:39.400' AS DateTime), 20, CAST(N'2021-06-19T17:41:42.307' AS DateTime), 20, 1)
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Links] ON 

INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (1, N'MÁY TÍNH MỚI', N'may-tinh-moi', N'category', 1)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (2, N'Tin công ty', N'tin-cong-ty', N'topic', 1)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (3, N'Máy tính văn phòng', N'may-tinh-van-phong', N'category', 2)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (4, N'Máy tính cây', N'may-tinh-cay', N'category', 3)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (5, N'Phụ Kiên', N'phu-kien', N'category', 4)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (6, N'Tư vấn mua laptop', N'tu-van-mua-laptop', N'topic', 2)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (7, N'Giới thiệu', N'gioi-thieu', N'page', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (8, N'Hướng dẫn mua hàng', N'huong-dan-mua-hang', N'page', 6)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (9, N'Cao Cấp - Sang Trọng', N'cao-cap---sang-trong', N'category', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (10, N'Cao Cấp - Sang Trọng done', N'cao-cap---sang-trong-done', N'category', 6)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (11, N'Chính sách đổi, trả hàng', N'chinh-sach-doi--tra-hang', N'page', 8)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (12, N'Laptop Đồ Họa', N'laptop-do-hoa', N'category', 7)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (13, N'MÁY TÍNH', N'may-tinh', N'category', 8)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (14, N'Laptop Asus mới', N'laptop-asus-moi', N'category', 9)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (15, N'Laptop Dell mới', N'laptop-dell-moi', N'category', 10)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (16, N'Laptop HP mới', N'laptop-hp-moi', N'category', 11)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (17, N'Laptop Asus cũ', N'laptop-asus-cu', N'category', 12)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (18, N'Laptop Dell cũ', N'laptop-dell-cu', N'category', 13)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (19, N'Laptop HP cũ', N'laptop-hp-cu', N'category', 14)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (20, N'Máy tính chơi game', N'may-tinh-choi-game', N'category', 15)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (21, N'DÂY DA COGNAC', N'day-da-cognac', N'category', 16)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (22, N'DÂY KIM LOẠI', N'day-kim-loai', N'category', 17)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (23, N'Đồng hồ', N'dong-ho', N'category', 18)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (24, N'Phụ kiện', N'phu-kien', N'category', 19)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (25, N'CPU AMD', N'cpu-amd', N'category', 20)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (26, N'Ổ cứng HHD', N'o-cung-hhd', N'category', 21)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (27, N'Thông tin web', N'thong-tin-web', N'topic', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (28, N'gioi thieu', N'gioi-thieu', N'page', 9)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (30, N'Dưới 1 triệu', N'Dưới 1 triệu', N'category', NULL)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (31, N'RAM Laptop', N'ram-laptop', N'category', 22)
SET IDENTITY_INSERT [dbo].[Links] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Liên hệ', N'lien-he', N'page', NULL, 0, N'mainmenu', 1, CAST(N'2021-02-14T09:56:13.000' AS DateTime), NULL, CAST(N'2021-02-18T17:38:08.937' AS DateTime), 1, 1)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Tin tức', N'tin-tuc', N'custom', NULL, 0, N'mainmenu', 1, CAST(N'2021-02-15T09:23:14.240' AS DateTime), NULL, CAST(N'2021-02-15T09:23:16.033' AS DateTime), 1, 1)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Giới thiệu', N'gioi-thieu', N'page', 5, 0, N'mainmenu', 1, CAST(N'2021-02-15T09:32:52.000' AS DateTime), NULL, CAST(N'2021-02-16T20:26:33.993' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (1, 1, 64, 15700000, 1, 15700000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (2, 2, 62, 12800000, 1, 12800000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (3, 3, 65, 14990000, 1, 14990000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (4, 3, 57, 13700000, 1, 13700000)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (1, N'20210627070630', 21, CAST(N'2021-06-27T19:10:30.080' AS DateTime), NULL, N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'Phương Nam', N'0983487999', N'phuongnam@gmail.com', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (2, N'20210627070615', 21, CAST(N'2021-06-27T19:11:15.153' AS DateTime), CAST(N'2021-06-27T19:11:31.170' AS DateTime), N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'Phương Nam', N'0983487999', N'phuongnam@gmail.com', 20, CAST(N'2021-06-27T19:11:31.170' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (3, N'20210627070659', 21, CAST(N'2021-06-27T19:11:59.693' AS DateTime), CAST(N'2021-06-27T19:12:10.250' AS DateTime), N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'Phương Nam', N'0983487999', N'phuongnam@gmail.com', 20, CAST(N'2021-06-27T19:12:10.250' AS DateTime), 2, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (9, 5, N'gioi thieu', N'gioi-thieu', N'<p># Được th&agrave;nh lập từ 1987 tại NewYork,perpetualtime.com&nbsp;l&agrave; đơn vị kinh doanh đồng hồ ch&iacute;nh h&atilde;ng l&agrave;m việc trực tiếp với c&aacute;c h&atilde;ng đồng hồ lớn để c&oacute; được mức gi&aacute; cạnh tranh nhất. So với gi&aacute; tại c&aacute;c cửa h&agrave;ng đồng hồ tại Việt Nam, ch&uacute;ng t&ocirc;i cam kết gi&aacute; sẽ thấp hơn từ 30-90%<em>.&nbsp;</em>Đ&acirc;y l&agrave; một lựa chọn cực kỳ kinh tế cho những người đam m&ecirc; v&agrave; y&ecirc;u th&iacute;ch đồng hồ.</p>

<p>perpetualtime.com&nbsp;lọt v&agrave;o top 10 c&aacute;c website thương mại điện tử đ&aacute;ng tin cậy nhất (https://otalliance.org/news-events/press-releases/online-trust-alliance-names-2015-most-trustworthy-ecommerce-sites). Với những nỗ lực hơn 20 năm trong ng&agrave;nh đồng hồ, đ&acirc;y l&agrave; sự đ&aacute;nh gi&aacute; rất đ&aacute;ng ghi nhận. V&agrave; như một lời hứa, Jomashop Vietnam cũng sẽ nỗ lực hết m&igrave;nh để mang đến cho những &ldquo;t&iacute;n đồ&rdquo; đồng hồ tại Việt Nam một chất lượng tuyệt vời như thế.</p>

<p># Với nhiều năm kinh nghiệm ph&acirc;n phối sản phẩm của&nbsp;perpetualtime.com;&nbsp;Jomashop Vietnam l&agrave; đơn vị kinh doanh đồng hồ, kh&ocirc;ng phải c&ocirc;ng ty vận chuyển n&ecirc;n sản phẩm đến tay bạn sẽ được đảm bảo điều kiện tốt nhất, kh&ocirc;ng sợ tr&aacute;o h&agrave;ng, đổi h&agrave;ng. Ngo&agrave;i ra bạn c&ograve;n nhận được dịch vụ hậu m&atilde;i, tư vấn, bảo h&agrave;nh ho&agrave;n hảo từ ch&uacute;ng t&ocirc;i.<br />
C&aacute;c sản phẩm c&oacute; link tr&ecirc;n&nbsp;perpetualtime.com;&nbsp;đều c&oacute; sẵn tại Kho h&agrave;ng b&ecirc;n Mỹ, sản phẩm sẽ đến tay bạn từ 2-3 tuần kể từ khi đặt cọc.</p>
', N'gioi-thieu.png', N'page', NULL, NULL, CAST(N'2021-04-14T18:03:29.803' AS DateTime), 27, CAST(N'2021-04-14T18:03:29.803' AS DateTime), 27, 1)
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductRate] ON 

INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (19, 57, 20, 5, N'', N'Quang Anh Tong', CAST(N'2021-04-15T21:37:28.723' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (20, 45, 20, 5, N'ok', N'Quang Anh Tong', CAST(N'2021-04-15T21:38:50.150' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (21, 45, 20, 3, N'', N'Quang Anh Tong', CAST(N'2021-04-15T21:39:18.077' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductRate] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (45, N'SWANK', N'swank', 11, N'swank.png', NULL, 2, 2, N'<h1>Đồng hồ thời trang nam Kashmir Swank</h1>

<p>L&agrave; người trẻ, bạn nghi&ecirc;m t&uacute;c trong c&ocirc;ng việc v&agrave; năng động trong những hoạt động với bạn b&egrave;? Đồng hồ Kashmir Swank ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo nhất. Thiết kế mặt đồng hồ m&agrave;u xanh ấn tượng, kết hợp c&ugrave;ng d&acirc;y kim loại bạc tạo n&ecirc;n một tổng thể trẻ trung, kh&aacute;c biệt, nhưng vẫn cực k&igrave; lịch l&atilde;m khi đi l&agrave;m.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>NAVY</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 2200000, 10, 2000000, N'SWANK', N'SWANK', 2, CAST(N'2021-03-02T19:23:22.000' AS DateTime), 20, CAST(N'2021-06-22T17:32:00.063' AS DateTime), 20, 4)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (46, N'POTENT', N'potent', 11, N'potent.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Potent</h1>

<p>Với bộ đ&ocirc;i mặt đen c&ugrave;ng viền rosegold v&ocirc; c&ugrave;ng được ưa chuộng, Curnon mang đến cho Kashmir Potent một cặp d&acirc;y m&agrave;u n&acirc;u s&aacute;ng để tạo n&ecirc;n sự kết hợp trẻ trung v&agrave; ấn tượng hơn, gi&uacute;p bạn định hướng phong c&aacute;ch thời trang của ri&ecirc;ng m&igrave;nh.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3000000, 50, 2700000, N'POTENT', N'POTENT', 2, CAST(N'2021-03-31T16:28:18.027' AS DateTime), 21, CAST(N'2021-06-22T17:31:58.747' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (47, N'CALM', N'calm', 11, N'calm.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Calm</h1>

<p>Với t&ocirc;ng m&agrave;u trắng v&agrave; bạc, kết hợp c&ugrave;ng điểm nhấn xanh Navy tinh tế, đồng hồ Kashmir Calm l&agrave; sự lựa chọn số một cho những bạn trẻ y&ecirc;u th&iacute;ch sự đơn giản nhưng kh&ocirc;ng hề đơn điệu. Bền bỉ như ch&iacute;nh c&aacute;i t&ecirc;n của m&igrave;nh nhờ trang bị d&acirc;y kim loại m&agrave;u bạc, đồng hồ Kashmir Calm sẽ c&ugrave;ng bạn tự tin trong mọi hoạt động h&agrave;ng ng&agrave;y.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>WHITE</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 3000000, 50, 2850000, N'CALM', N'CALM', 2, CAST(N'2021-03-31T16:29:50.360' AS DateTime), 21, CAST(N'2021-06-22T17:31:58.183' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (48, N'FEARLESS', N'fearless', 11, N'fearless.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Fearless</h1>

<p>Đ&uacute;ng như c&aacute;i t&ecirc;n, đồng hồ Kashmir Fearless được Curnon tạo ra với một th&ocirc;ng điệp của sự can đảm. Một chiếc đồng hồ gần như được phủ k&iacute;n bởi m&agrave;u đen, cực k&igrave; c&aacute; t&iacute;nh, d&agrave;nh cho những người trẻ đầy mạo hiểm v&agrave; kh&aacute;c biệt. Với đồng hồ Kashmir Fearless đầy m&ecirc; hoặc, Curnon tin rằng bạn sẽ c&oacute; thể vượt qua mọi trở ngại m&agrave; cuộc sống d&agrave;nh cho bạn.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3500000, 50, 3300000, N'FEARLESS', N'FEARLESS', 2, CAST(N'2021-03-31T16:31:17.773' AS DateTime), 21, CAST(N'2021-06-22T17:31:57.560' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (50, N'ROBUST', N'robust', 11, N'robust.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Robust</h1>

<p>Với thiết kế tối giản sử dụng t&ocirc;ng m&agrave;u đen chủ đạo v&agrave; d&acirc;y kim loại, đồng hồ Kashmir Robust mang đến sự mạnh mẽ, b&iacute; ẩn c&ugrave;ng t&iacute;nh ứng dụng cao, gi&uacute;p bạn vững v&agrave;ng trước mọi điều kiện m&ocirc;i trường v&agrave; thời tiết trong hoạt động h&agrave;ng ng&agrave;y.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 3500000, 50, 3390000, N'ROBUST', N'ROBUST', 2, CAST(N'2021-03-31T16:32:32.433' AS DateTime), 21, CAST(N'2021-06-22T17:31:56.937' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (51, N'GRAND', N'grand', 11, N'grand.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Grand</h1>

<p>Kết hợp giữa mặt xanh độc đ&aacute;o v&agrave; d&acirc;y da đen sang trọng, đồng hồ Kashmir Grand ch&iacute;nh l&agrave; lựa chọn cho những người đ&agrave;n &ocirc;ng trưởng th&agrave;nh, ch&iacute;n chắn v&agrave; mong muốn sự tự tin trong những sự kiện quan trọng.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>NAVY</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3500000, 50, 3200000, N'GRAND', N'GRAND', 2, CAST(N'2021-03-31T16:33:58.130' AS DateTime), 21, CAST(N'2021-06-22T17:31:56.187' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (52, N'REBEL', N'rebel', 11, N'rebel.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Rebel</h1>

<p>L&agrave; c&aacute; t&iacute;nh nổi loạn với sự tương phản giữa m&agrave;u đen chủ đạo của mặt đồng hồ đen v&agrave; m&agrave;u d&acirc;y Sand, đồng hồ Kashmir Rebel ch&iacute;nh l&agrave; vũ kh&iacute; tạo ấn tượng tinh tế cho những ch&agrave;ng trai trưởng th&agrave;nh.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3500000, 50, 3390000, N'REBEL', N'REBEL', 2, CAST(N'2021-03-31T16:34:58.687' AS DateTime), 21, CAST(N'2021-06-22T17:31:54.440' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (53, N'Laptop cũ HP Elitebook 840 G3 - Intel Core i5', N'laptop-cu-hp-elitebook-840-g3---intel-core-i5', 14, N'laptop-cu-hp-elitebook-840-g3---intel-core-i5.jpg', N'Laptop cũ HP Elitebook 840 G3 - Intel Core i5', 1, 1, N'<p><strong>Đ&aacute;nh gi&aacute; chi tiết HP Elitebook 840 G3</strong>&nbsp;</p>

<p>&nbsp;</p>

<p>HP Elitebook 840 G3 - Chiếc laptop gi&aacute; rẻ dưới 10 Triệu nhưng sở hữu nhiều t&iacute;nh năng nổi bật, n&acirc;ng cao trải nghiệm người d&ugrave;ng.&nbsp;</p>

<p>&nbsp;</p>

<p><em><strong>- Cấu h&igrave;nh ổn định với chip core i5, khả năng đa nhiệm tốt, l&agrave;m việc nhanh mượt v&agrave; kh&ocirc;ng sợ giật lag</strong></em></p>

<p>&nbsp;</p>

<p><em><strong>- Thiết kế mỏng nhẹ v&agrave; sang trọng với lớp vỏ nh&ocirc;m m&agrave;u bạc, tiện lợi khi di chuyển, ph&ugrave; hợp với mọi m&ocirc;i trường l&agrave;m việc</strong></em></p>

<p>&nbsp;</p>

<p><em><strong>- Si&ecirc;u bền đạt chuẩn qu&acirc;n sự Mỹ, khả năng chống sốc tốt, bảo vệ m&aacute;y trước mọi ảnh hưởng của va đập&nbsp;</strong></em></p>

<p>&nbsp;</p>

<p>Chiếc m&aacute;y n&agrave;y cực ph&ugrave; hợp với d&acirc;n văn ph&ograve;ng, quản l&yacute; cũng như học sinh sinh vi&ecirc;n khi c&oacute; thể đ&aacute;p ứng c&aacute;c nhu cầu cơ bản h&agrave;ng ng&agrave;y rất tốt.</p>
', N'<ul>
	<li>
	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 7500000, 50, 6390000, N'Laptop cũ HP Elitebook 840 G3 - Intel Core i5', N'Laptop cũ HP Elitebook 840 G3 - Intel Core i5', 1, CAST(N'2021-03-31T16:36:00.000' AS DateTime), 21, CAST(N'2021-06-22T17:31:47.653' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (54, N'Laptop cũ Dell Latitude E7270 - Intel Core i5', N'laptop-cu-dell-latitude-e7270---intel-core-i5', 13, N'laptop-cu-dell-latitude-e7270---intel-core-i5.png', N'Laptop cũ Dell Latitude E7270 - Intel Core i5', 1, 1, N'<p><strong>Dell Latitude E7270 - Laptop nhỏ gọn, cấu h&igrave;nh cao</strong><strong>&nbsp;</strong></p>

<p>Dell Latitude 7270 l&agrave; chiếc laptop văn ph&ograve;ng bạn kh&ocirc;ng thể bỏ qua trong tầm gi&aacute; dưới 8 triệu:</p>

<p>- <em>Hiệu năng m&aacute;y khỏe thoải m&aacute;i l&agrave;m văn ph&ograve;ng, quản l&yacute; thậm ch&iacute; c&aacute;c t&aacute;c vụ nặng như code. Mở chục tab Chrome kh&ocirc;ng giật lag với chip core i5 RAM 8GB hay việc khởi động m&aacute;y, lưu tải file chỉ mất v&agrave;i gi&acirc;y với SSD 240GB</em></p>

<p><em>- M&aacute;y c&oacute; vỏ được l&agrave;m từ sợi carbon cao cấp cực kỳ chắc chắn gi&uacute;p chống chịu tốt mọi va đập trong qu&aacute; tr&igrave;nh sử dụng, d&ugrave;ng l&acirc;u kh&ocirc;ng sợ xuống cấp</em></p>

<p><em>- M&aacute;y cực nhỏ gọn với m&agrave;n 12 inch chỉ nặng khoảng 1.26 kg cho bạn thoải m&aacute;i di chuyển, l&agrave;m việc ở mọi nơi</em></p>

<p>Dell Latitude 7270 ngay h&ocirc;m nay gi&aacute; đang v&ocirc; c&ugrave;ng tốt lại th&ecirc;m nhiều qu&aacute; tặng gi&aacute; trị. Bảo h&agrave;nh d&agrave;i l&acirc;u l&ecirc;n tới 12 th&aacute;ng.</p>
', N'<ul>
	<li>
	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 9500000, 50, 9500000, N'Laptop cũ Dell Latitude E7270 - Intel Core i5', N'Laptop cũ Dell Latitude E7270 - Intel Core i5', 1, CAST(N'2021-03-31T16:48:15.000' AS DateTime), 21, CAST(N'2021-06-22T17:30:23.087' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (55, N'Laptop Cũ Dell Latitude E5540 - Intel Core i3', N'laptop-cu-dell-latitude-e5540---intel-core-i3', 13, N'laptop-cu-dell-latitude-e5540---intel-core-i3.png', N'Laptop Cũ Dell Latitude E5540 - Intel Core i3', 1, 1, N'<p><strong>Đ&aacute;nh gi&aacute; chi tiết</strong></p>

<p><strong>Dell Latitude E5540 Intel Core i3 </strong><strong>&nbsp;</strong></p>

<p><strong><strong>&nbsp;</strong></strong></p>

<p><strong>Dell Latitude E5540</strong> l&agrave; chiếc laptop được người d&ugrave;ng đ&aacute;nh gi&aacute; rất cao về sự bền bỉ, chắc chắn b&ecirc;n cạnh đ&oacute; l&agrave; m&agrave;n h&igrave;nh lớn với mức gi&aacute; cực rẻ. Đừng bỏ qua b&agrave;i viết dưới đ&acirc;y để t&igrave;m hiểu kỹ hơn về chiếc m&aacute;y th&uacute; vị n&agrave;y nh&eacute; !!!</p>

<p>&nbsp;</p>

<p><em>- M&agrave;n 15.6 inch cho kh&ocirc;ng gian hiển thị rộng r&atilde;i với t&ugrave;y chọn độ ph&acirc;n giải</em></p>

<p><em>- Thiết kế với vỏ Carbon si&ecirc;u bền bỉ v&agrave; chống b&aacute;m v&acirc;n</em></p>

<p><em>- Cấu h&igrave;nh ổn định với chip Intel Core i3 v&agrave; sẵn ổ SSD đ&aacute;p ứng tốt c&aacute;c nhu cầu văn ph&ograve;ng, học tập, lướt web giải tr&iacute;</em>&nbsp;</p>
', N'<ul>
	<li>
	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 4500000, 50, 3900000, N'Laptop Cũ Dell Latitude E5540 - Intel Core i3', N'Laptop Cũ Dell Latitude E5540 - Intel Core i3', 1, CAST(N'2021-03-31T16:49:17.000' AS DateTime), 21, CAST(N'2021-06-22T17:28:51.753' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (56, N'Laptop HP 340s G7 36A43PA - Intel Core i5', N'laptop-hp-340s-g7-36a43pa---intel-core-i5', 11, N'laptop-hp-340s-g7-36a43pa---intel-core-i5.png', N'Laptop HP 340s G7 36A43PA - Intel Core i5', 1, 1, N'<p><strong>Laptop HP 340s G7 36A43PA - Intel Core i5</strong></p>

<p>Laptop văn ph&ograve;ng cao cấp, sang trọng</p>

<p>Chắc hẳn nếu l&agrave; người đam m&ecirc;&nbsp;<a href="https://laptop88.vn/may-tinh-xach-tay.html" target="_blank">m&aacute;y t&iacute;nh x&aacute;ch tay</a>&nbsp;thời trang cao cấp th&igrave; bạn sẽ kh&ocirc;ng thể n&agrave;o bỏ qua được d&ograve;ng&nbsp;<a href="https://laptop88.vn/hp.html">m&aacute;y t&iacute;nh HP</a>/<a href="https://laptop88.vn/hp.html">laptop HP</a>&nbsp;Envy đ&uacute;ng kh&ocirc;ng? Với thiết kế tinh tế, sang trọng, hiệu năng tốt, d&ograve;ng laptop n&agrave;y chưa bao giờ khiến người d&ugrave;ng thất vọng về thiết kế cũng như hiệu năng. Laptop88 sẽ giới thiệu đến bạn chiếc&nbsp;<a href="https://laptop88.vn/laptop-sinh-vien-van-phong.html" target="_blank">m&aacute;y t&iacute;nh văn ph&ograve;ng</a>&nbsp;cũng thuộc d&ograve;ng Envy đ&oacute; l&agrave;&nbsp;<a href="https://laptop88.vn/laptop-hp-envy.html" target="_blank">HP Envy</a>&nbsp;13 - ba0047TU 171M8PA l&agrave; một trong những chiếc&nbsp;<a href="https://laptop88.vn/laptop-hp-core-i7.html" target="_blank">laptop HP Core i7</a>&nbsp;c&oacute; hiệu năng cực khỏe v&agrave; xử l&yacute; đa nhiệm mượt m&agrave;. Chi tiết như n&agrave;o c&ugrave;ng t&igrave;m hiểu ngay ở nội dung dưới đ&acirc;y nh&eacute;!</p>

<ul>
	<li>&nbsp;</li>
</ul>
', N'<ul>
	<li>
	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 9300000, 50, 9300000, N'Laptop HP 340s G7 36A43PA - Intel Core i5', N'Laptop HP 340s G7 36A43PA - Intel Core i5', 1, CAST(N'2021-03-31T16:50:20.000' AS DateTime), 21, CAST(N'2021-06-22T17:26:40.317' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (57, N'Laptop HP Envy 13 - ba0047TU 171M8PA - Intel Core i7', N'laptop-hp-envy-13---ba0047tu-171m8pa---intel-core-i7', 11, N'laptop-hp-envy-13---ba0047tu-171m8pa---intel-core-i7.png', N'Laptop HP Envy 13 - ba0047TU 171M8PA - Intel Core i7', 1, 1, N'<p><strong>HP Envy 13 - ba0047TU 171M8PA&nbsp;</strong></p>

<p><strong>Laptop văn ph&ograve;ng cao cấp, sang trọng</strong></p>

<p>Chắc hẳn nếu l&agrave; người đam m&ecirc; <a href="https://laptop88.vn/may-tinh-xach-tay.html" target="_blank">m&aacute;y t&iacute;nh x&aacute;ch tay</a> thời trang cao cấp th&igrave; bạn sẽ kh&ocirc;ng thể n&agrave;o bỏ qua được d&ograve;ng <a href="https://laptop88.vn/hp.html">m&aacute;y t&iacute;nh HP</a>/<a href="https://laptop88.vn/hp.html">laptop HP</a> Envy đ&uacute;ng kh&ocirc;ng? Với thiết kế tinh tế, sang trọng, hiệu năng tốt, d&ograve;ng laptop n&agrave;y chưa bao giờ khiến người d&ugrave;ng thất vọng về thiết kế cũng như hiệu năng. Laptop88 sẽ giới thiệu đến bạn chiếc <a href="https://laptop88.vn/laptop-sinh-vien-van-phong.html" target="_blank">m&aacute;y t&iacute;nh văn ph&ograve;ng</a> cũng thuộc d&ograve;ng Envy đ&oacute; l&agrave;&nbsp;<a href="https://laptop88.vn/laptop-hp-envy.html" target="_blank">HP Envy</a>&nbsp;13 - ba0047TU 171M8PA l&agrave; một trong những chiếc&nbsp;<a href="https://laptop88.vn/laptop-hp-core-i7.html" target="_blank">laptop HP Core i7</a>&nbsp;c&oacute; hiệu năng cực khỏe v&agrave; xử l&yacute; đa nhiệm mượt m&agrave;. Chi tiết như n&agrave;o c&ugrave;ng t&igrave;m hiểu ngay ở nội dung dưới đ&acirc;y nh&eacute;!</p>
', N'<ul>
	<li>
	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 13700000, 50, 13700000, N'Laptop HP Envy 13 - ba0047TU 171M8PA - Intel Core i7', N'Laptop HP Envy 13 - ba0047TU 171M8PA - Intel Core i7', 1, CAST(N'2021-03-31T16:51:11.000' AS DateTime), 21, CAST(N'2021-06-22T17:23:48.123' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (58, N'Laptop Dell Inspiron N5402 GVCNH1 - Intel Core i5', N'laptop-dell-inspiron-n5402-gvcnh1---intel-core-i5', 10, N'laptop-dell-inspiron-n5402-gvcnh1---intel-core-i5.jpg', N'Laptop Dell Inspiron N5402 GVCNH1 - Intel Core i5', 1, 1, N'<h1>Laptop Dell Inspiron N5402 GVCNH1 - Intel Core i5</h1>

<p><strong>Asus Zenbook Q407IQ-BR5N4 Cao cấp, si&ecirc;u nhẹ, c&oacute; trang bị card rời</strong></p>

<p>Asus Zenbook Q407IQ-BR5N4 dường như l&agrave; chiếc m&aacute;y t&iacute;nh - laptop trong mơ của nhiều kh&aacute;ch h&agrave;ng với sự ho&agrave;n thiện đ&aacute;ng kể cả về ngoại h&igrave;nh lần hiệu năng mang đến nhiều trải nghiệm l&agrave;m việc, giải tr&iacute; mượt m&agrave;:&nbsp;</p>

<p>- Thiết kế cao cấp, vỏ kim loại bền bỉ c&ugrave;ng trong lượng chỉ tầm 1kg sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường</p>

<p>- M&aacute;y trang bị cấu h&igrave;nh cao kh&ocirc;ng chỉ đ&aacute;p ứng những nhu cầu l&agrave;m việc văn ph&ograve;ng hằng ng&agrave;y m&agrave; c&ograve;n l&agrave; c&aacute;nh tay đắc lực để bạn thiết kế đồ họa 2D hay 3D nhẹ nh&agrave;ng, chơi nhiều tựa game HOT để giải tr&iacute;</p>

<p>- M&agrave;n h&igrave;nh 14 inch Full HD tấm nền IPS mang lại g&oacute;c nh&igrave;n rộng r&atilde;i, h&igrave;nh ảnh hiển thị sắc n&eacute;t, ch&acirc;n thực, độ s&aacute;ng cao 100% sRGB</p>
', N'<ul>
	<li>
	<p>CPU</p>

	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 17800000, 50, 178000000, N'Laptop Dell Inspiron N5402 GVCNH1 - Intel Core i5', N'Laptop Dell Inspiron N5402 GVCNH1 - Intel Core i5', 1, CAST(N'2021-04-16T00:52:30.000' AS DateTime), 21, CAST(N'2021-06-22T17:21:24.290' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (59, N' Laptop Dell XPS 9500 - Intel Core i7', N'-laptop-dell-xps-9500---intel-core-i7', 10, N'-laptop-dell-xps-9500---intel-core-i7.jpg', N' Laptop Dell XPS 9500 - Intel Core i7', 2, 1, N'<h1>[Mới 100% Full Box]&nbsp;Laptop Dell XPS 9500 - Intel Core i7</h1>

<p><strong>Asus Zenbook Q407IQ-BR5N4 Cao cấp, si&ecirc;u nhẹ, c&oacute; trang bị card rời</strong></p>

<p>Asus Zenbook Q407IQ-BR5N4 dường như l&agrave; chiếc m&aacute;y t&iacute;nh - laptop trong mơ của nhiều kh&aacute;ch h&agrave;ng với sự ho&agrave;n thiện đ&aacute;ng kể cả về ngoại h&igrave;nh lần hiệu năng mang đến nhiều trải nghiệm l&agrave;m việc, giải tr&iacute; mượt m&agrave;:&nbsp;</p>

<p>- Thiết kế cao cấp, vỏ kim loại bền bỉ c&ugrave;ng trong lượng chỉ tầm 1kg sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường</p>

<p>- M&aacute;y trang bị cấu h&igrave;nh cao kh&ocirc;ng chỉ đ&aacute;p ứng những nhu cầu l&agrave;m việc văn ph&ograve;ng hằng ng&agrave;y m&agrave; c&ograve;n l&agrave; c&aacute;nh tay đắc lực để bạn thiết kế đồ họa 2D hay 3D nhẹ nh&agrave;ng, chơi nhiều tựa game HOT để giải tr&iacute;</p>

<p>- M&agrave;n h&igrave;nh 14 inch Full HD tấm nền IPS mang lại g&oacute;c nh&igrave;n rộng r&atilde;i, h&igrave;nh ảnh hiển thị sắc n&eacute;t, ch&acirc;n thực, độ s&aacute;ng cao 100% sRGB</p>
', N'<ul>
	<li>
	<p>CPU</p>

	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
</ul>
', N'123', 23300000, 50, 22900000, N' Laptop Dell XPS 9500 - Intel Core i7', N' Laptop Dell XPS 9500 - Intel Core i7', 1, CAST(N'2021-04-16T00:54:02.000' AS DateTime), 21, CAST(N'2021-06-22T17:20:28.400' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (60, N'Laptop Dell Vostro V5502 70231340 - Intel Core i5', N'laptop-dell-vostro-v5502-70231340---intel-core-i5', 10, N'laptop-dell-vostro-v5502-70231340---intel-core-i5.jpg', N'Laptop Dell Vostro V5502 70231340 - Intel Core i5', 1, 1, N'<h1>[Mới 100% Full Box] Laptop Dell Vostro V5502 70231340 - Intel Core i5</h1>

<p><strong>Asus Zenbook Q407IQ-BR5N4 Cao cấp, si&ecirc;u nhẹ, c&oacute; trang bị card rời</strong></p>

<p>Asus Zenbook Q407IQ-BR5N4 dường như l&agrave; chiếc m&aacute;y t&iacute;nh - laptop trong mơ của nhiều kh&aacute;ch h&agrave;ng với sự ho&agrave;n thiện đ&aacute;ng kể cả về ngoại h&igrave;nh lần hiệu năng mang đến nhiều trải nghiệm l&agrave;m việc, giải tr&iacute; mượt m&agrave;:&nbsp;</p>

<p>- Thiết kế cao cấp, vỏ kim loại bền bỉ c&ugrave;ng trong lượng chỉ tầm 1kg sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường</p>

<p>- M&aacute;y trang bị cấu h&igrave;nh cao kh&ocirc;ng chỉ đ&aacute;p ứng những nhu cầu l&agrave;m việc văn ph&ograve;ng hằng ng&agrave;y m&agrave; c&ograve;n l&agrave; c&aacute;nh tay đắc lực để bạn thiết kế đồ họa 2D hay 3D nhẹ nh&agrave;ng, chơi nhiều tựa game HOT để giải tr&iacute;</p>

<p>- M&agrave;n h&igrave;nh 14 inch Full HD tấm nền IPS mang lại g&oacute;c nh&igrave;n rộng r&atilde;i, h&igrave;nh ảnh hiển thị sắc n&eacute;t, ch&acirc;n thực, độ s&aacute;ng cao 100% sRGB</p>
', N'<ul>
	<li>
	<p>CPU</p>

	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 17500000, 50, 17300000, N'Laptop Dell Vostro V5502 70231340 - Intel Core i5', N'Laptop Dell Vostro V5502 70231340 - Intel Core i5', 1, CAST(N'2021-04-16T00:55:08.000' AS DateTime), 21, CAST(N'2021-06-22T17:17:13.337' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (61, N'Laptop Dell XPS 13 7390 - Intel Core i5', N'laptop-dell-xps-13-7390---intel-core-i5', 10, N'laptop-dell-xps-13-7390---intel-core-i5.png', N'Laptop Dell XPS 13 7390 - Intel Core i5', 1, 1, N'<h1>[Mới 100% Full Box] Laptop Asus Zenbook Q407IQ-BR5N4 - AMD Ryzen 5</h1>

<p><strong>Asus Zenbook Q407IQ-BR5N4 Cao cấp, si&ecirc;u nhẹ, c&oacute; trang bị card rời</strong></p>

<p>Asus Zenbook Q407IQ-BR5N4 dường như l&agrave; chiếc m&aacute;y t&iacute;nh - laptop trong mơ của nhiều kh&aacute;ch h&agrave;ng với sự ho&agrave;n thiện đ&aacute;ng kể cả về ngoại h&igrave;nh lần hiệu năng mang đến nhiều trải nghiệm l&agrave;m việc, giải tr&iacute; mượt m&agrave;:&nbsp;</p>

<p>- Thiết kế cao cấp, vỏ kim loại bền bỉ c&ugrave;ng trong lượng chỉ tầm 1kg sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường</p>

<p>- M&aacute;y trang bị cấu h&igrave;nh cao kh&ocirc;ng chỉ đ&aacute;p ứng những nhu cầu l&agrave;m việc văn ph&ograve;ng hằng ng&agrave;y m&agrave; c&ograve;n l&agrave; c&aacute;nh tay đắc lực để bạn thiết kế đồ họa 2D hay 3D nhẹ nh&agrave;ng, chơi nhiều tựa game HOT để giải tr&iacute;</p>

<p>- M&agrave;n h&igrave;nh 14 inch Full HD tấm nền IPS mang lại g&oacute;c nh&igrave;n rộng r&atilde;i, h&igrave;nh ảnh hiển thị sắc n&eacute;t, ch&acirc;n thực, độ s&aacute;ng cao 100% sRGB</p>
', N'<ul>
	<li>
	<p>CPU</p>

	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 13800000, 50, 11500000, N'Laptop Dell XPS 13 7390 - Intel Core i5', N'Laptop Dell XPS 13 7390 - Intel Core i5', 1, CAST(N'2021-04-16T00:56:30.000' AS DateTime), 21, CAST(N'2021-06-22T17:15:35.427' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (62, N'Laptop Asus ExpertBook P2451FA Intel Core i5', N'laptop-asus-expertbook-p2451fa-intel-core-i5', 9, N'laptop-asus-expertbook-p2451fa-intel-core-i5.png', N'Laptop Asus ExpertBook P2451FA Intel Core i5', 1, 1, N'<ul>
	<li>
	<h1>[Mới 100% Full Box] Laptop Asus ExpertBook P2451FA Intel Core i5</h1>

	<p><strong>Asus Zenbook Q407IQ-BR5N4 Cao cấp, si&ecirc;u nhẹ, c&oacute; trang bị card rời</strong></p>

	<p>Asus Zenbook Q407IQ-BR5N4 dường như l&agrave; chiếc m&aacute;y t&iacute;nh - laptop trong mơ của nhiều kh&aacute;ch h&agrave;ng với sự ho&agrave;n thiện đ&aacute;ng kể cả về ngoại h&igrave;nh lần hiệu năng mang đến nhiều trải nghiệm l&agrave;m việc, giải tr&iacute; mượt m&agrave;:&nbsp;</p>

	<p>- Thiết kế cao cấp, vỏ kim loại bền bỉ c&ugrave;ng trong lượng chỉ tầm 1kg sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường</p>

	<p>- M&aacute;y trang bị cấu h&igrave;nh cao kh&ocirc;ng chỉ đ&aacute;p ứng những nhu cầu l&agrave;m việc văn ph&ograve;ng hằng ng&agrave;y m&agrave; c&ograve;n l&agrave; c&aacute;nh tay đắc lực để bạn thiết kế đồ họa 2D hay 3D nhẹ nh&agrave;ng, chơi nhiều tựa game HOT để giải tr&iacute;</p>

	<p>- M&agrave;n h&igrave;nh 14 inch Full HD tấm nền IPS mang lại g&oacute;c nh&igrave;n rộng r&atilde;i, h&igrave;nh ảnh hiển thị sắc n&eacute;t, ch&acirc;n thực, độ s&aacute;ng cao 100% sRGB</p>
	</li>
</ul>
', N'<ul>
	<li>
	<p>CPU</p>

	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 12800000, 50, 12800000, N'Laptop Asus ExpertBook P2451FA Intel Core i5', N'Laptop Asus ExpertBook P2451FA Intel Core i5', 1, CAST(N'2021-04-16T00:57:53.000' AS DateTime), 21, CAST(N'2021-06-22T17:13:30.290' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (63, N'Laptop Asus Vivobook S533EA Core i5', N'laptop-asus-vivobook-s533ea-core-i5', 9, N'laptop-asus-vivobook-s533ea-core-i5.png', N'Laptop Asus Vivobook S533EA Core i5', 1, 1, N'<h1>[Mới 100% Full Box] Laptop Asus Vivobook S533EA Core i5</h1>

<p><strong>Asus Zenbook Q407IQ-BR5N4 Cao cấp, si&ecirc;u nhẹ, c&oacute; trang bị card rời</strong></p>

<p>Asus Zenbook Q407IQ-BR5N4 dường như l&agrave; chiếc m&aacute;y t&iacute;nh - laptop trong mơ của nhiều kh&aacute;ch h&agrave;ng với sự ho&agrave;n thiện đ&aacute;ng kể cả về ngoại h&igrave;nh lần hiệu năng mang đến nhiều trải nghiệm l&agrave;m việc, giải tr&iacute; mượt m&agrave;:&nbsp;</p>

<p>- Thiết kế cao cấp, vỏ kim loại bền bỉ c&ugrave;ng trong lượng chỉ tầm 1kg sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường</p>

<p>- M&aacute;y trang bị cấu h&igrave;nh cao kh&ocirc;ng chỉ đ&aacute;p ứng những nhu cầu l&agrave;m việc văn ph&ograve;ng hằng ng&agrave;y m&agrave; c&ograve;n l&agrave; c&aacute;nh tay đắc lực để bạn thiết kế đồ họa 2D hay 3D nhẹ nh&agrave;ng, chơi nhiều tựa game HOT để giải tr&iacute;</p>

<p>- M&agrave;n h&igrave;nh 14 inch Full HD tấm nền IPS mang lại g&oacute;c nh&igrave;n rộng r&atilde;i, h&igrave;nh ảnh hiển thị sắc n&eacute;t, ch&acirc;n thực, độ s&aacute;ng cao 100% sRGB</p>
', N'<ul>
	<li>
	<p>CPU</p>

	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 15900000, 50, 13600000, N'Laptop Asus Vivobook S533EA Core i5', N'Laptop Asus Vivobook S533EA Core i5', 1, CAST(N'2021-04-16T00:59:20.000' AS DateTime), 21, CAST(N'2021-06-22T17:09:50.413' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (64, N'Laptop Asus M513UA Ryzen 7', N'laptop-asus-m513ua-ryzen-7', 9, N'laptop-asus-m513ua-ryzen-7.png', N'Laptop Asus M513UA Ryzen 7', 1, 1, N'<h1>[Mới 100% Full Box] Laptop Asus M513UA-EJ033T - AMD Ryzen 7</h1>

<p><strong>Asus Zenbook Q407IQ-BR5N4 Cao cấp, si&ecirc;u nhẹ, c&oacute; trang bị card rời</strong></p>

<p>Asus Zenbook Q407IQ-BR5N4 dường như l&agrave; chiếc m&aacute;y t&iacute;nh - laptop trong mơ của nhiều kh&aacute;ch h&agrave;ng với sự ho&agrave;n thiện đ&aacute;ng kể cả về ngoại h&igrave;nh lần hiệu năng mang đến nhiều trải nghiệm l&agrave;m việc, giải tr&iacute; mượt m&agrave;:&nbsp;</p>

<p>- Thiết kế cao cấp, vỏ kim loại bền bỉ c&ugrave;ng trong lượng chỉ tầm 1kg sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường</p>

<p>- M&aacute;y trang bị cấu h&igrave;nh cao kh&ocirc;ng chỉ đ&aacute;p ứng những nhu cầu l&agrave;m việc văn ph&ograve;ng hằng ng&agrave;y m&agrave; c&ograve;n l&agrave; c&aacute;nh tay đắc lực để bạn thiết kế đồ họa 2D hay 3D nhẹ nh&agrave;ng, chơi nhiều tựa game HOT để giải tr&iacute;</p>

<p>- M&agrave;n h&igrave;nh 14 inch Full HD tấm nền IPS mang lại g&oacute;c nh&igrave;n rộng r&atilde;i, h&igrave;nh ảnh hiển thị sắc n&eacute;t, ch&acirc;n thực, độ s&aacute;ng cao 100% sRGB</p>
', N'<ul>
	<li>
	<p>CPU</p>

	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 18890000, 50, 15700000, N'Laptop Asus M513UA Ryzen 7', N'Laptop Asus M513UA Ryzen 7', 1, CAST(N'2021-04-16T01:00:39.000' AS DateTime), 21, CAST(N'2021-06-22T17:07:23.563' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (65, N'Laptop Asus Zenbook Q407IQ Ryzen 5', N'laptop-asus-zenbook-q407iq-ryzen-5', 9, N'laptop-asus-zenbook-q407iq-ryzen-5.png', N'Laptop Asus Zenbook Q407IQ Ryzen 5', 1, 1, N'<h1>[Mới 100% Full Box] Laptop Asus Zenbook Q407IQ-BR5N4 - AMD Ryzen 5</h1>

<p><strong>Asus Zenbook Q407IQ-BR5N4 Cao cấp, si&ecirc;u nhẹ, c&oacute; trang bị card rời</strong></p>

<p>Asus Zenbook Q407IQ-BR5N4 dường như l&agrave; chiếc m&aacute;y t&iacute;nh - laptop trong mơ của nhiều kh&aacute;ch h&agrave;ng với sự ho&agrave;n thiện đ&aacute;ng kể cả về ngoại h&igrave;nh lần hiệu năng mang đến nhiều trải nghiệm l&agrave;m việc, giải tr&iacute; mượt m&agrave;:&nbsp;</p>

<p>- Thiết kế cao cấp, vỏ kim loại bền bỉ c&ugrave;ng trong lượng chỉ tầm 1kg sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường</p>

<p>- M&aacute;y trang bị cấu h&igrave;nh cao kh&ocirc;ng chỉ đ&aacute;p ứng những nhu cầu l&agrave;m việc văn ph&ograve;ng hằng ng&agrave;y m&agrave; c&ograve;n l&agrave; c&aacute;nh tay đắc lực để bạn thiết kế đồ họa 2D hay 3D nhẹ nh&agrave;ng, chơi nhiều tựa game HOT để giải tr&iacute;</p>

<p>- M&agrave;n h&igrave;nh 14 inch Full HD tấm nền IPS mang lại g&oacute;c nh&igrave;n rộng r&atilde;i, h&igrave;nh ảnh hiển thị sắc n&eacute;t, ch&acirc;n thực, độ s&aacute;ng cao 100% sRGB</p>
', N'<ul>
	<li>
	<p>CPU</p>

	<p>AMD Ryzen 5 4500U up to 3.8GHz, 4MB</p>
	</li>
	<li>Card đồ họa
	<p>Geforce MX350 2GB</p>
	</li>
	<li>
	<p>RAM</p>

	<p>8GB LPDDR4&nbsp;4267MHz</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>Ổ cứng</p>

	<p>SSD 256GB PCIe NVMe</p>
	</li>
	<li>
	<p>M&agrave;n h&igrave;nh</p>

	<p>14 Inch Full HD, IPS 100% sRGB</p>
	</li>
	<li>
	<p>Kết nối kh&ocirc;ng d&acirc;y</p>

	<p>Wi-Fi 5|Bluetooth&reg; 5.0</p>
	</li>
	<li>
	<p>Kích thước</p>

	<p>319&nbsp;x&nbsp;199 x&nbsp;18.2 mm</p>
	</li>
	<li>
	<p>Trọng lượng</p>

	<p>1.15 kg</p>
	</li>
	<li>
	<p>Pin</p>

	<p>50Wh</p>
	</li>
</ul>
', N'123', 17990000, 50, 14990000, N'Laptop Asus Zenbook Q407IQ Ryzen 5', N'Laptop Asus Zenbook Q407IQ Ryzen 5', 1, CAST(N'2021-04-16T01:01:57.000' AS DateTime), 21, CAST(N'2021-06-22T17:04:32.097' AS DateTime), 20, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Cay canh slider', N'cay-canh-slider', N'slideshow', N'cay-canh-slider.jpg', 1, CAST(N'2021-03-02T13:39:32.093' AS DateTime), 20, CAST(N'2021-03-31T16:38:27.623' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'slider cay canh 2', N'slider-cay-canh-2', N'slideshow', N'slider-cay-canh-2.jpg', 1, CAST(N'2021-03-02T13:43:37.430' AS DateTime), 20, CAST(N'2021-03-31T16:38:28.820' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (4, N'slider cay canh 3', N'slider-cay-canh-3', N'slideshow', N'slider-cay-canh-3.jpg', 1, CAST(N'2021-03-02T13:43:53.777' AS DateTime), 20, CAST(N'2021-03-31T16:38:30.197' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'slider watch site', N'slider-watch-site', N'slideshow', N'slider-watch-site.jpg', 6, CAST(N'2021-03-31T15:46:15.000' AS DateTime), 20, CAST(N'2021-06-22T17:40:54.420' AS DateTime), 20, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (6, N'banner 2', N'banner-2', N'slideshow', N'banner-2.png', 5, CAST(N'2021-03-31T16:38:46.000' AS DateTime), 20, CAST(N'2021-06-22T17:40:43.697' AS DateTime), 20, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (7, N'banner 3', N'banner-3', N'slideshow', N'banner-3.jpg', 5, CAST(N'2021-03-31T16:38:57.000' AS DateTime), 20, CAST(N'2021-06-22T17:39:36.753' AS DateTime), 20, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (8, N'NH1', N'nh1', N'slideshow', N'nh1.jpg', 5, CAST(N'2021-06-22T07:04:14.783' AS DateTime), 20, CAST(N'2021-06-22T07:09:45.050' AS DateTime), 1, 2)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (9, N'ANH2', N'anh2', N'slideshow', N'anh2.jpg', 5, CAST(N'2021-06-22T07:04:27.863' AS DateTime), 20, CAST(N'2021-06-22T07:09:43.910' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Topics] ON 

INSERT [dbo].[Topics] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'Thông tin web', N'thong-tin-web', 0, NULL, N'Về chúng tôi', N'Thông tin web', CAST(N'2021-04-14T17:50:17.140' AS DateTime), 27, CAST(N'2021-04-14T17:50:17.140' AS DateTime), 27, 1)
SET IDENTITY_INSERT [dbo].[Topics] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (20, N'Nguyễn Ngọc Huyền', N'admins', N'xMpCOKC5I4INzFCab3WEmw==', N'colennhe102@gmail.com', 1, 983487921, N'Lập Thạch_ Vĩnh Phúc', N'ngochuyen.png', 0, 1, CAST(N'2021-03-01T21:23:14.520' AS DateTime), 1, CAST(N'2021-03-01T21:23:14.520' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (21, N'Phương Nam', N'Phương Nam', N'ICy5YqxZB1uWSwcVLSNLcA==', N'phuongnam@gmail.com', 1, 983487999, N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'', 1, 1, CAST(N'2021-06-27T19:09:32.630' AS DateTime), 1, CAST(N'2021-06-27T19:09:32.630' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[ProductRate] ADD  CONSTRAINT [DF_ProductRate_Rate]  DEFAULT ((0)) FOR [Rate]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [ProRate]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_orderDetails_order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_orderDetails_order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_orderDetails_product2] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_orderDetails_product2]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_orders_users_ID] FOREIGN KEY([CustemerId])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_orders_users_ID]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [fk_poste_topicc] FOREIGN KEY([Topid])
REFERENCES [dbo].[Topics] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [fk_poste_topicc]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Categorys] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_category]
GO
USE [master]
GO
ALTER DATABASE [QLShopLapTop] SET  READ_WRITE 
GO
