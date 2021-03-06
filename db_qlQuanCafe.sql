USE [ql_quancafe]
GO
/****** Object:  Table [dbo].[tblBan]    Script Date: 13/08/2020 16:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBan](
	[MaBan] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](100) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[KhuVuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblBan] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChiTietHD]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHD](
	[MaHD] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongTien] [money] NOT NULL,
	[GiamGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCongThuc]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCongThuc](
	[MaMon] [int] NOT NULL,
	[MaNL] [int] NOT NULL,
	[HamLuong] [decimal](18, 3) NOT NULL,
	[Tong] [decimal](18, 3) NOT NULL,
 CONSTRAINT [PK_tblCongThuc] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC,
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[TGVao] [datetime] NOT NULL,
	[TGRa] [datetime] NULL,
	[MaBan] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[TongTienTT] [money] NOT NULL,
	[PhuongThucTT] [nchar](50) NULL,
 CONSTRAINT [PK_tblHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLoaiMon]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiMon](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblLoaiMon] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLoaiNhanVien]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiNhanVien](
	[MaLoaiNV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiNV] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblLoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNguyenLieu]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguyenLieu](
	[MaNL] [int] IDENTITY(1,1) NOT NULL,
	[TenNL] [nvarchar](100) NOT NULL,
	[SoLuong] [decimal](18, 3) NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
	[NgayNhap] [date] NOT NULL,
 CONSTRAINT [PK_tblNguyenLieu] PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](1000) NOT NULL,
	[SDT] [char](100) NOT NULL,
	[MaLoaiNV] [int] NOT NULL,
	[TaiKhoan] [char](100) NOT NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[MaNV] [int] NOT NULL,
	[TenDN] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[Quyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblThucDon]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThucDon](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](100) NOT NULL,
	[MaLoai] [int] NOT NULL,
	[DonViTinh] [nchar](10) NOT NULL,
	[DonGia] [nchar](10) NOT NULL,
	[HinhAnh] [nvarchar](200) NULL,
	[TuyChonThem] [nvarchar](100) NULL,
	[PhoBien] [bit] NULL,
 CONSTRAINT [PK_tblThucDon] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblBan] ON 

INSERT [dbo].[tblBan] ([MaBan], [TenBan], [TrangThai], [KhuVuc]) VALUES (1, N'Bàn 1', N'True', N'Tầng trệt')
INSERT [dbo].[tblBan] ([MaBan], [TenBan], [TrangThai], [KhuVuc]) VALUES (2, N'Bàn 2', N'False', N'Tầng trệt')
INSERT [dbo].[tblBan] ([MaBan], [TenBan], [TrangThai], [KhuVuc]) VALUES (3, N'Bàn 3', N'False', N'Tầng trệt')
INSERT [dbo].[tblBan] ([MaBan], [TenBan], [TrangThai], [KhuVuc]) VALUES (4, N'Bàn 4', N'False', N'Tầng trệt')
INSERT [dbo].[tblBan] ([MaBan], [TenBan], [TrangThai], [KhuVuc]) VALUES (5, N'Bàn 1', N'False', N'Tầng 1')
INSERT [dbo].[tblBan] ([MaBan], [TenBan], [TrangThai], [KhuVuc]) VALUES (6, N'Bàn 2', N'False', N'Tầng 1')
INSERT [dbo].[tblBan] ([MaBan], [TenBan], [TrangThai], [KhuVuc]) VALUES (7, N'Bàn 3', N'False', N'Tầng 1')
SET IDENTITY_INSERT [dbo].[tblBan] OFF
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (72, 2, 3, 75000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (72, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (72, 18, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (73, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (73, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (75, 2, 11, 150002.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (75, 3, 3, 94000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (75, 5, 5, 105000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (75, 7, 1, 20000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (75, 9, 57, 205299.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (75, 12, 2, 82000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (75, 13, 2, 110000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (75, 18, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (76, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (76, 2, 6, 150000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (76, 5, 3, 75000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (76, 7, 4, 80000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (76, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (76, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (76, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (77, 2, 3, 75000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (77, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (77, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (78, 2, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (79, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (80, 2, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (80, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (80, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (91, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (92, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (93, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (94, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (95, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (96, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (97, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (97, 5, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (97, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (98, 2, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (99, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (99, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (100, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (100, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (101, 2, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (101, 4, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (101, 5, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (101, 6, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (101, 7, 1, 20000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (101, 8, 1, 46000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (101, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (101, 18, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (102, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (102, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (102, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (103, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (103, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (104, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (104, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (105, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (105, 16, 2, 98000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (106, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (106, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (106, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (107, 5, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (107, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (107, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (108, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (109, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (110, 2, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (110, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (110, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (123, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (123, 5, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (123, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (126, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (127, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (127, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (129, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (129, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (129, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (129, 9, 9, 297000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (130, 2, 4, 100000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (130, 7, 1, 20000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (130, 9, 4, 132000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (131, 5, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (131, 7, 5, 100000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (131, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 2, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 4, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 5, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 6, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 7, 2, 40000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 8, 1, 46000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (132, 18, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (133, 4, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (133, 6, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (133, 16, 1, 49000.0000, NULL)
GO
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (133, 18, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (135, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (135, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (136, 1, 2, 44000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (136, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (136, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (137, 4, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (137, 7, 6, 120000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (138, 5, 4, 100000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (139, 5, 6, 150000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (140, 5, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (140, 6, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (141, 2, 18, 450000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (142, 2, 4, 100000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (142, 5, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (142, 7, 1, 20000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (142, 9, 9, 297000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (143, 5, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (144, 1, 4, 88000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (144, 2, 7, 175000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (144, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (145, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (145, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (146, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (146, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (147, 5, 6, 150000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (148, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (149, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (149, 12, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (150, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (151, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (151, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (151, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (152, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (153, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (153, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (153, 17, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (154, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (155, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (155, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (156, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (156, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (157, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (161, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (161, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (164, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (165, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (165, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (165, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (168, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (168, 2, 3, 75000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (169, 12, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (169, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (170, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (172, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (172, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (172, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (172, 19, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (172, 20, 1, 42000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (173, 15, 1, 43000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (173, 17, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (173, 19, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (176, 4, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (176, 6, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (176, 7, 1, 20000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (183, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (183, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (183, 4, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (183, 6, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (183, 7, 1, 20000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (183, 8, 1, 46000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (183, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (183, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (183, 18, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (185, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (185, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (185, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (209, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (209, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (209, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (209, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (209, 12, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (209, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (209, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (209, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (209, 18, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (240, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (240, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (240, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (243, 1, 2, 44000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (243, 2, 3, 75000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (243, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (243, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (243, 12, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (243, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (243, 15, 1, 43000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (243, 17, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (243, 19, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (243, 20, 1, 42000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (244, 2, 1, 25000.0000, NULL)
GO
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (244, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (244, 30, 1, 30000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (245, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (245, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (245, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (248, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (249, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (250, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (251, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (251, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (251, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (251, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (252, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 12, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 15, 1, 43000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 17, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 19, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 20, 1, 42000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 21, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (253, 22, 1, 31000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (254, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (254, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (254, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (254, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (257, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (260, 1, 3, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (260, 3, 2, 56000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (260, 18, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (261, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (261, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (261, 12, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (261, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (262, 1, 27, 44000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (262, 2, 13, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (262, 3, 13, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (262, 9, 31, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (262, 12, 2, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (262, 13, 3, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (262, 14, 8, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (272, 1, 2, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (272, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (272, 12, 2, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (272, 15, 2, 43000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (272, 16, 3, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (274, 1, 2, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (274, 2, 2, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (274, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (274, 14, 2, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (274, 16, 2, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (274, 18, 2, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (276, 1, 3, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (276, 2, 4, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (276, 6, 4, 44000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (276, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (276, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (276, 16, 3, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (276, 18, 2, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (284, 1, 6, 110000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (284, 2, 7, 150000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (284, 8, 1, 46000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (284, 9, 7, 165000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (284, 14, 2, 82000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (284, 16, 4, 147000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (284, 18, 3, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (293, 12, 2, 82000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (293, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (293, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (296, 4, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (296, 6, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (299, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (299, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (299, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (300, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (302, 1, 3, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (302, 2, 3, 75000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (302, 3, 2, 56000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (302, 4, 6, 150000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (302, 5, 5, 125000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (302, 8, 1, 46000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (302, 9, 4, 132000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (302, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (302, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (304, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (304, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (305, 15, 3, 129000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (305, 17, 3, 147000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (307, 3, 4, 112000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (307, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (307, 12, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (307, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (307, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (307, 16, 5, 245000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (307, 26, 10, 20.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (309, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (309, 9, 4, 132000.0000, NULL)
GO
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (309, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (310, 4, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (310, 7, 1, 20000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (313, 2, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (313, 9, 4, 132000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (313, 13, 2, 110000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (316, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (316, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (316, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (317, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (317, 4, 3, 75000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (317, 12, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (318, 1, 6, 132000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (318, 2, 3, 75000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (318, 7, 1, 20000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (318, 8, 2, 92000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (318, 14, 9, 369000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (319, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (319, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (319, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (320, 1, 2, 44000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (320, 4, 3, 75000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (320, 7, 1, 20000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (321, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (321, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (321, 13, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (321, 15, 1, 43000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (321, 17, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (321, 19, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (321, 20, 1, 42000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (325, 1, 3, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (325, 2, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (325, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (325, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (325, 14, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (325, 16, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (325, 18, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (326, 1, 2, 44000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (326, 9, 5, 165000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (326, 12, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (326, 13, 3, 165000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (335, 1, 2, 44000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (344, 1, 2, 44000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (344, 2, 2, 50000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (344, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (344, 4, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (344, 8, 1, 46000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (344, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (344, 16, 3, 147000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (345, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (345, 2, 3, 75000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (345, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (345, 5, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (345, 9, 1, 33000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (345, 12, 1, 41000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (345, 15, 1, 43000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (345, 17, 1, 49000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (345, 19, 1, 55000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (345, 20, 1, 42000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (346, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (346, 4, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (348, 1, 1, 22000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (348, 2, 1, 25000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (348, 3, 1, 28000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (348, 9, 2, 66000.0000, NULL)
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (351, 2, 1, 25000.0000, N'0')
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (352, 1, 3, 660000.0000, N'0')
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (352, 2, 1, 25000.0000, N'0')
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (353, 2, 1, 25000.0000, N'0')
INSERT [dbo].[tblChiTietHD] ([MaHD], [MaMon], [SoLuong], [TongTien], [GiamGia]) VALUES (353, 4, 1, 25000.0000, N'0')
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (1, 1, CAST(0.150 AS Decimal(18, 3)), CAST(0.150 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (2, 1, CAST(0.100 AS Decimal(18, 3)), CAST(0.100 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (2, 2, CAST(0.100 AS Decimal(18, 3)), CAST(0.100 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (3, 1, CAST(0.100 AS Decimal(18, 3)), CAST(0.100 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (3, 3, CAST(0.200 AS Decimal(18, 3)), CAST(0.200 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (4, 4, CAST(1.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (5, 5, CAST(1.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (6, 6, CAST(1.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (7, 7, CAST(1.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (8, 1, CAST(0.008 AS Decimal(18, 3)), CAST(0.008 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (9, 1, CAST(0.010 AS Decimal(18, 3)), CAST(0.010 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (9, 2, CAST(0.020 AS Decimal(18, 3)), CAST(0.020 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (10, 2, CAST(0.020 AS Decimal(18, 3)), CAST(0.020 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (10, 8, CAST(0.020 AS Decimal(18, 3)), CAST(0.020 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (11, 1, CAST(0.030 AS Decimal(18, 3)), CAST(0.030 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (11, 2, CAST(0.020 AS Decimal(18, 3)), CAST(0.020 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (12, 9, CAST(0.050 AS Decimal(18, 3)), CAST(0.050 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (12, 10, CAST(0.001 AS Decimal(18, 3)), CAST(0.001 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (14, 12, CAST(0.200 AS Decimal(18, 3)), CAST(0.200 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (15, 2, CAST(0.025 AS Decimal(18, 3)), CAST(0.025 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (15, 8, CAST(0.025 AS Decimal(18, 3)), CAST(0.025 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (16, 9, CAST(0.010 AS Decimal(18, 3)), CAST(0.010 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (16, 15, CAST(0.200 AS Decimal(18, 3)), CAST(0.200 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (17, 1, CAST(0.020 AS Decimal(18, 3)), CAST(0.200 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (17, 3, CAST(0.030 AS Decimal(18, 3)), CAST(0.030 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (18, 16, CAST(0.200 AS Decimal(18, 3)), CAST(0.200 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (19, 1, CAST(0.100 AS Decimal(18, 3)), CAST(0.100 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (19, 8, CAST(0.200 AS Decimal(18, 3)), CAST(0.200 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (20, 17, CAST(0.100 AS Decimal(18, 3)), CAST(0.100 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (21, 1, CAST(0.200 AS Decimal(18, 3)), CAST(0.200 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (22, 3, CAST(0.300 AS Decimal(18, 3)), CAST(0.300 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (23, 1, CAST(0.016 AS Decimal(18, 3)), CAST(0.016 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (24, 1, CAST(0.010 AS Decimal(18, 3)), CAST(0.010 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (28, 1, CAST(2.000 AS Decimal(18, 3)), CAST(2.000 AS Decimal(18, 3)))
INSERT [dbo].[tblCongThuc] ([MaMon], [MaNL], [HamLuong], [Tong]) VALUES (28, 3, CAST(2.000 AS Decimal(18, 3)), CAST(2.000 AS Decimal(18, 3)))
SET IDENTITY_INSERT [dbo].[tblHoaDon] ON 

INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (72, CAST(0x0000AC0300E5F074 AS DateTime), CAST(0x0000AC0300E6760C AS DateTime), 3, 2, N'Roi', 165000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (73, CAST(0x0000AC0300E5F9D4 AS DateTime), CAST(0x0000AC0300E6A744 AS DateTime), 4, 2, N'Roi', 61000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (75, CAST(0x0000AC04000C4E00 AS DateTime), CAST(0x0000AC0500092310 AS DateTime), 3, 2, N'Roi', 58000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (76, CAST(0x0000AC0401036ED8 AS DateTime), CAST(0x0000AC0500ADF7F0 AS DateTime), 1, 2, N'Roi', 45000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (77, CAST(0x0000AC040103932C AS DateTime), CAST(0x0000AC0500B100E4 AS DateTime), 2, 2, N'Roi', 0.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (78, CAST(0x0000AC0500096384 AS DateTime), CAST(0x0000AC0500B10A44 AS DateTime), 3, 2, N'Roi', 0.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (79, CAST(0x0000AC050017A5E8 AS DateTime), CAST(0x0000AC050017A5E8 AS DateTime), 4, 2, N'Roi', 25000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (80, CAST(0x0000AC0500AE03A8 AS DateTime), CAST(0x0000AC0500AE2CAC AS DateTime), 1, 2, N'Roi', 165000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (81, CAST(0x0000AC0500AEB370 AS DateTime), CAST(0x0000AC0500AEC3D8 AS DateTime), 1, 2, N'Roi', 50000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (91, CAST(0x0000AC0501876A58 AS DateTime), CAST(0x0000AC0500AEC3D8 AS DateTime), 2, 2, N'Roi', 25000.0000, NULL)
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (92, CAST(0x0000AC05018A75A4 AS DateTime), CAST(0x0000AC0500AEC3D8 AS DateTime), 4, 2, N'Roi', 25000.0000, NULL)
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (93, CAST(0x0000AC060001BD50 AS DateTime), CAST(0x0000AC0500AEC3D8 AS DateTime), 6, 2, N'Roi', 25000.0000, NULL)
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (94, CAST(0x0000AC060002F88C AS DateTime), CAST(0x0000AC0500AEC3D8 AS DateTime), 2, 2, N'Roi', 25000.0000, NULL)
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (95, CAST(0x0000AC060004A8F8 AS DateTime), CAST(0x0000AC0500AEC3D8 AS DateTime), 4, 2, N'Roi', 33000.0000, NULL)
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (96, CAST(0x0000AC0600087A50 AS DateTime), CAST(0x0000AC0500AEC3D8 AS DateTime), 7, 2, N'Roi', 25000.0000, NULL)
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (97, CAST(0x0000AC0600100914 AS DateTime), CAST(0x0000AC0600FA0C80 AS DateTime), 2, 2, N'Roi', 83000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (98, CAST(0x0000AC060010BEB8 AS DateTime), CAST(0x0000AC0600FA15E0 AS DateTime), 3, 2, N'Roi', 50000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (99, CAST(0x0000AC0600F77088 AS DateTime), CAST(0x0000AC0600F9FF9C AS DateTime), 1, 2, N'Roi', 9000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (100, CAST(0x0000AC0600F86C7C AS DateTime), CAST(0x0000AC0600FA1E14 AS DateTime), 6, 2, N'Roi', 141000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (101, CAST(0x0000AC0600FC0C9C AS DateTime), CAST(0x0000AC060118E36C AS DateTime), 2, 2, N'Roi', 262000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (102, CAST(0x0000AC0601185348 AS DateTime), CAST(0x0000AC060118EA74 AS DateTime), 1, 2, N'Roi', 113000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (103, CAST(0x0000AC0601186734 AS DateTime), CAST(0x0000AC060118D304 AS DateTime), 3, 2, N'Roi', 203000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (104, CAST(0x0000AC060118B6E4 AS DateTime), CAST(0x0000AC060118DC64 AS DateTime), 5, 2, N'Roi', 90000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (105, CAST(0x0000AC060118C3C8 AS DateTime), CAST(0x0000AC06011A1098 AS DateTime), 6, 2, N'Roi', 139000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (106, CAST(0x0000AC060118F17C AS DateTime), CAST(0x0000AC060119E2E4 AS DateTime), 1, 2, N'Roi', 113000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (107, CAST(0x0000AC060118FD34 AS DateTime), CAST(0x0000AC060119FB80 AS DateTime), 2, 2, N'Roi', 115000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (108, CAST(0x0000AC0601195C20 AS DateTime), CAST(0x0000AC06011A0990 AS DateTime), 4, 2, N'Roi', 49000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (109, CAST(0x0000AC06011966AC AS DateTime), CAST(0x0000AC06011A03B4 AS DateTime), 3, 2, N'Roi', 49000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (110, CAST(0x0000AC06011BF5C0 AS DateTime), CAST(0x0000AC06011C0AD8 AS DateTime), 1, 2, N'Roi', 132000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (123, CAST(0x0000AC0601522E9C AS DateTime), CAST(0x0000AC0601523CAC AS DateTime), 1, 2, N'Roi', 166000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (126, CAST(0x0000AC0601535268 AS DateTime), CAST(0x0000AC0601547AE4 AS DateTime), 1, 2, N'Roi', 116000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (127, CAST(0x0000AC0601535970 AS DateTime), CAST(0x0000AC06015480C0 AS DateTime), 2, 2, N'Roi', 58000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (129, CAST(0x0000AC0601552728 AS DateTime), CAST(0x0000AC0601554F00 AS DateTime), 1, 2, N'Roi', 372000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (130, CAST(0x0000AC06016A1048 AS DateTime), CAST(0x0000AC07002C26BC AS DateTime), 5, 2, N'Roi', 293000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (131, CAST(0x0000AC06016AD528 AS DateTime), CAST(0x0000AC06016C0CE0 AS DateTime), 7, 2, N'Roi', 174000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (132, CAST(0x0000AC06016B61C8 AS DateTime), CAST(0x0000AC06016BB4FC AS DateTime), 5, 2, N'Roi', 427000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (133, CAST(0x0000AC06016C4778 AS DateTime), CAST(0x0000AC06016C7658 AS DateTime), 5, 2, N'Roi', 137000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (134, CAST(0x0000AC060173868C AS DateTime), CAST(0x0000AC0700155E50 AS DateTime), 1, 2, N'Roi', 58000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (135, CAST(0x0000AC06018B64B4 AS DateTime), CAST(0x0000AC07002C1FB4 AS DateTime), 2, 2, N'Roi', 58000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (136, CAST(0x0000AC07001428F0 AS DateTime), CAST(0x0000AC07002C13FC AS DateTime), 3, 2, N'Roi', 102000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (137, CAST(0x0000AC07002466C0 AS DateTime), CAST(0x0000AC07002C19D8 AS DateTime), 1, 2, N'Roi', 170000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (138, CAST(0x0000AC07002AFF6C AS DateTime), CAST(0x0000AC07002AFF6C AS DateTime), 4, 2, N'Roi', 100000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (139, CAST(0x0000AC07002B1358 AS DateTime), CAST(0x0000AC07002B1358 AS DateTime), 4, 2, N'Roi', 150000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (140, CAST(0x0000AC07002B3FE0 AS DateTime), CAST(0x0000AC07002B7370 AS DateTime), 4, 2, N'Roi', 72000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (141, CAST(0x0000AC07002B8180 AS DateTime), CAST(0x0000AC07002B8180 AS DateTime), 4, 2, N'Roi', 450000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (142, CAST(0x0000AC07002C397C AS DateTime), CAST(0x0000AC07002C6D0C AS DateTime), 1, 2, N'Roi', 442000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (143, CAST(0x0000AC07002DACF8 AS DateTime), CAST(0x0000AC070037A8D4 AS DateTime), 1, 2, N'Roi', 25000.0000, N'ATM                                               ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (144, CAST(0x0000AC0700317F7C AS DateTime), CAST(0x0000AC070031D184 AS DateTime), 2, 2, N'Roi', 329000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (145, CAST(0x0000AC070037B6E4 AS DateTime), CAST(0x0000AC070037B6E4 AS DateTime), 2, 2, N'Roi', 58000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (146, CAST(0x0000AC07007DE740 AS DateTime), CAST(0x0000AC07007DF1CC AS DateTime), 1, 2, N'Roi', 58000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (147, CAST(0x0000AC070080CD0C AS DateTime), CAST(0x0000AC0700811CBC AS DateTime), 1, 2, N'Roi', 150000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (148, CAST(0x0000AC0700814494 AS DateTime), CAST(0x0000AC0700818AE4 AS DateTime), 2, 2, N'Roi', 25000.0000, N'ATM                                               ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (149, CAST(0x0000AC070081F45C AS DateTime), CAST(0x0000AC07008655D8 AS DateTime), 7, 2, N'Roi', 107000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (150, CAST(0x0000AC07008212D4 AS DateTime), CAST(0x0000AC070082C3C8 AS DateTime), 5, 2, N'Roi', 173000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (151, CAST(0x0000AC0700824538 AS DateTime), CAST(0x0000AC07008648F4 AS DateTime), 3, 2, N'Roi', 86000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (152, CAST(0x0000AC0700828B88 AS DateTime), CAST(0x0000AC070082C9A4 AS DateTime), 3, 2, N'Roi', 25000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (153, CAST(0x0000AC07008352C0 AS DateTime), CAST(0x0000AC0700863D3C AS DateTime), 1, 2, N'Roi', 137000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (154, CAST(0x0000AC070083A39C AS DateTime), CAST(0x0000AC0700864FFC AS DateTime), 6, 2, N'Roi', 33000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (155, CAST(0x0000AC070083E410 AS DateTime), CAST(0x0000AC0700864318 AS DateTime), 2, 2, N'Roi', 58000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (156, CAST(0x0000AC070086B398 AS DateTime), CAST(0x0000AC0700873354 AS DateTime), 3, 2, N'Roi', 58000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (157, CAST(0x0000AC0700876B94 AS DateTime), CAST(0x0000AC0700876B94 AS DateTime), 3, 2, N'Roi', 25000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (161, CAST(0x0000AC0700A38B94 AS DateTime), CAST(0x0000AC0700A69B90 AS DateTime), 1, 2, N'Roi', 58000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (164, CAST(0x0000AC0700A6A298 AS DateTime), CAST(0x0000AC0700A6F950 AS DateTime), 1, 2, N'Roi', 66000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (165, CAST(0x0000AC0700A6AD24 AS DateTime), CAST(0x0000AC0700A70634 AS DateTime), 3, 2, N'Roi', 86000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (168, CAST(0x0000AC0700A6E690 AS DateTime), CAST(0x0000AC0700A70C10 AS DateTime), 4, 2, N'Roi', 97000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (169, CAST(0x0000AC0700A6EEC4 AS DateTime), CAST(0x0000AC0700A70058 AS DateTime), 2, 2, N'Roi', 96000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (170, CAST(0x0000AC0700A7538C AS DateTime), CAST(0x0000AC07018A61B8 AS DateTime), 1, 2, N'Roi', 22000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (172, CAST(0x0000AC0700A76E80 AS DateTime), CAST(0x0000AC07018A6794 AS DateTime), 2, 2, N'Roi', 243000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (173, CAST(0x0000AC0700A776B4 AS DateTime), CAST(0x0000AC07018A6E9C AS DateTime), 3, 2, N'Roi', 147000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (176, CAST(0x0000AC0700A7C790 AS DateTime), CAST(0x0000AC07018A75A4 AS DateTime), 4, 2, N'Roi', 67000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (183, CAST(0x0000AC0700ADBE84 AS DateTime), CAST(0x0000AC07018A5AB0 AS DateTime), 5, 2, N'Roi', 291000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (185, CAST(0x0000AC0700AFD034 AS DateTime), CAST(0x0000AC07018A7B80 AS DateTime), 6, 2, N'Roi', 75000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (209, CAST(0x0000AC07018ACFE0 AS DateTime), CAST(0x0000AC0800DDE44C AS DateTime), 1, 2, N'Roi', 335000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (240, CAST(0x0000AC080008F304 AS DateTime), CAST(0x0000AC0800DDEC80 AS DateTime), 2, 2, N'Roi', 75000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (243, CAST(0x0000AC08000FA6A4 AS DateTime), CAST(0x0000AC0800DDF4B4 AS DateTime), 3, 2, N'Roi', 498000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (244, CAST(0x0000AC0800124BFC AS DateTime), CAST(0x0000AC0800DDFCE8 AS DateTime), 4, 2, N'Roi', 58000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (245, CAST(0x0000AC0800165A44 AS DateTime), CAST(0x0000AC0800DE051C AS DateTime), 5, 2, N'Roi', 80000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (248, CAST(0x0000AC0800DDC82C AS DateTime), CAST(0x0000AC0800DE0E7C AS DateTime), 6, 2, N'Roi', 25000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (249, CAST(0x0000AC0800DE597C AS DateTime), CAST(0x0000AC0A00DA48DC AS DateTime), 1, 2, N'Roi', 25000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (250, CAST(0x0000AC0800EA0948 AS DateTime), CAST(0x0000AC0A00DA5494 AS DateTime), 2, 2, N'Roi', 108000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (251, CAST(0x0000AC0800ECD678 AS DateTime), CAST(0x0000AC0A00DA6178 AS DateTime), 3, 2, N'Roi', 108000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (252, CAST(0x0000AC0800EE9F80 AS DateTime), CAST(0x0000AC0A00DA6C04 AS DateTime), 4, 2, N'Roi', 25000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (253, CAST(0x0000AC0800EEB240 AS DateTime), CAST(0x0000AC0A00DA7564 AS DateTime), 5, 2, N'Roi', 479000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (254, CAST(0x0000AC0A00DA8248 AS DateTime), CAST(0x0000AC0A00DB0DBC AS DateTime), 1, 2, N'Roi', 108000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (256, CAST(0x0000AC0A00DB6CA8 AS DateTime), CAST(0x0000AC0A00E25E64 AS DateTime), 1, 2, N'Roi', 82000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (257, CAST(0x0000AC0A00E2F464 AS DateTime), CAST(0x0000AC0A00F8EC38 AS DateTime), 1, 2, N'Roi', 25000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (260, CAST(0x0000AC0A010198EC AS DateTime), CAST(0x0000AC0A0101FA30 AS DateTime), 1, 2, N'Roi', 163000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (261, CAST(0x0000AC0A0101F328 AS DateTime), CAST(0x0000AC0A0101F328 AS DateTime), 2, 2, N'Roi', 157000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (262, CAST(0x0000AC0A018AA100 AS DateTime), CAST(0x0000AC0B00DD05A4 AS DateTime), 3, 2, N'Roi', -154000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (272, CAST(0x0000AC0B00DD3100 AS DateTime), CAST(0x0000AC0B00E231DC AS DateTime), 5, 2, N'Roi', -492000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (274, CAST(0x0000AC0B00E25888 AS DateTime), CAST(0x0000AC0B00E39298 AS DateTime), 3, 2, N'Roi', -35000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (276, CAST(0x0000AC0B00E3B23C AS DateTime), CAST(0x0000AC0B00E61E28 AS DateTime), 3, 2, N'Roi', 85000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (284, CAST(0x0000AC0C0009036C AS DateTime), CAST(0x0000AC0C0009AB00 AS DateTime), 3, 2, N'Roi', 700000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (293, CAST(0x0000AC0C00A19028 AS DateTime), CAST(0x0000AC0C00A19028 AS DateTime), 1, 2, N'Roi', 186000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (296, CAST(0x0000AC0C00CFADA0 AS DateTime), CAST(0x0000AC0D0002F88C AS DateTime), 2, 2, N'Roi', 47000.0000, N'ATM                                               ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (299, CAST(0x0000AC0C00D0C488 AS DateTime), CAST(0x0000AC0C00D0C488 AS DateTime), 3, 2, N'Roi', 113000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (300, CAST(0x0000AC0C00D16E74 AS DateTime), CAST(0x0000AC0C00D16E74 AS DateTime), 3, 2, N'Roi', 55000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (302, CAST(0x0000AC0D00024B1C AS DateTime), CAST(0x0000AC0D0012B7CC AS DateTime), 6, 2, N'Roi', 740000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (304, CAST(0x0000AC0D001222F8 AS DateTime), CAST(0x0000AC0D0012A3E0 AS DateTime), 1, 2, N'Roi', 47000.0000, N'Cash                                              ')
GO
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (305, CAST(0x0000AC0D00142440 AS DateTime), CAST(0x0000AC0D00142440 AS DateTime), 1, 2, N'Roi', 276000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (307, CAST(0x0000AC0D0083D150 AS DateTime), CAST(0x0000AC0D0084AECC AS DateTime), 6, 2, N'Roi', 560020.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (309, CAST(0x0000AC0D00845238 AS DateTime), CAST(0x0000AC0D0084BBB0 AS DateTime), 1, 2, N'Roi', 212000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (310, CAST(0x0000AC0D0084849C AS DateTime), CAST(0x0000AC0D0084B5D4 AS DateTime), 5, 2, N'Roi', 45000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (313, CAST(0x0000AC0D00850B60 AS DateTime), CAST(0x0000AC0D00F41208 AS DateTime), 6, 2, N'Roi', 292000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (316, CAST(0x0000AC0D00F048E4 AS DateTime), CAST(0x0000AC0D00F3CF3C AS DateTime), 1, 2, N'Roi', 80000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (317, CAST(0x0000AC0D00F3C708 AS DateTime), CAST(0x0000AC0D00F3D89C AS DateTime), 2, 2, N'Roi', 141000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (318, CAST(0x0000AC0D01101E1C AS DateTime), CAST(0x0000AC0D01242768 AS DateTime), 2, 2, N'Roi', 688000.0000, N'ATM                                               ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (319, CAST(0x0000AC0D01102650 AS DateTime), CAST(0x0000AC0D01255CC8 AS DateTime), 4, 2, N'Roi', 75000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (320, CAST(0x0000AC0D01103C94 AS DateTime), CAST(0x0000AC0D01112DFC AS DateTime), 1, 2, N'Roi', 139000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (321, CAST(0x0000AC0D011531B8 AS DateTime), CAST(0x0000AC0D012563D0 AS DateTime), 1, 2, N'Roi', 291000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (325, CAST(0x0000AC0D0125D900 AS DateTime), CAST(0x0000AC0D012615F0 AS DateTime), 6, 2, N'Roi', 341000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (326, CAST(0x0000AC0D012A0A70 AS DateTime), CAST(0x0000AC0D012C5EEC AS DateTime), 2, 2, N'Roi', 459000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (335, CAST(0x0000AC0D0130AC7C AS DateTime), CAST(0x0000AC0D0130DEE0 AS DateTime), 2, 2, N'Roi', 224000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (344, CAST(0x0000AC0D01368624 AS DateTime), CAST(0x0000AC0D0139893C AS DateTime), 7, 2, N'Roi', 406000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (345, CAST(0x0000AC0D01369560 AS DateTime), CAST(0x0000AC0D0136BC0C AS DateTime), 4, 2, N'Roi', 413000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (346, CAST(0x0000AC0D014B0E00 AS DateTime), CAST(0x0000AC0D0167F1B4 AS DateTime), 2, 2, N'Roi', 50000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (348, CAST(0x0000AC0D016754AC AS DateTime), CAST(0x0000AC0D0167EBD8 AS DateTime), 1, 2, N'Roi', 141000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (349, CAST(0x0000AC0F00000000 AS DateTime), NULL, 1, 2, N'Chua', 1000.0000, N'                                                  ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (351, CAST(0x0000AC0F009450C0 AS DateTime), CAST(0x0000AC1600B273B6 AS DateTime), 2, 2, N'Roi', 26000.0000, NULL)
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (352, CAST(0x0000AC1501593FE6 AS DateTime), CAST(0x0000AC150159BFB0 AS DateTime), 3, 2, N'Roi', 685000.0000, N'Cash                                              ')
INSERT [dbo].[tblHoaDon] ([MaHD], [TGVao], [TGRa], [MaBan], [MaNV], [TrangThai], [TongTienTT], [PhuongThucTT]) VALUES (353, CAST(0x0000AC1600B2E6DC AS DateTime), CAST(0x0000AC1600B300E1 AS DateTime), 3, 2, N'Roi', 50000.0000, N'Cash                                              ')
SET IDENTITY_INSERT [dbo].[tblHoaDon] OFF
SET IDENTITY_INSERT [dbo].[tblLoaiMon] ON 

INSERT [dbo].[tblLoaiMon] ([MaLoai], [TenLoai]) VALUES (1, N'Cafe')
INSERT [dbo].[tblLoaiMon] ([MaLoai], [TenLoai]) VALUES (2, N'Nước ngọt')
INSERT [dbo].[tblLoaiMon] ([MaLoai], [TenLoai]) VALUES (5, N'Nước ép')
SET IDENTITY_INSERT [dbo].[tblLoaiMon] OFF
SET IDENTITY_INSERT [dbo].[tblLoaiNhanVien] ON 

INSERT [dbo].[tblLoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (1, N'Nhân viên phục vụ')
INSERT [dbo].[tblLoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (2, N'Nhân viên pha chế')
SET IDENTITY_INSERT [dbo].[tblLoaiNhanVien] OFF
SET IDENTITY_INSERT [dbo].[tblNguyenLieu] ON 

INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (1, N'Cafe Trung Nguyên', CAST(40.210 AS Decimal(18, 3)), N'kg', CAST(0x51410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (2, N'Sữa béo đặc', CAST(60.620 AS Decimal(18, 3)), N'hộp', CAST(0x51410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (3, N'Sữa tươi', CAST(862.800 AS Decimal(18, 3)), N'hộp', CAST(0x51410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (4, N'Bò húc', CAST(22.000 AS Decimal(18, 3)), N'lon', CAST(0x51410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (5, N'Sting', CAST(-1.000 AS Decimal(18, 3)), N'lon', CAST(0x51410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (6, N'Cocacola', CAST(0.000 AS Decimal(18, 3)), N'lon', CAST(0x51410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (7, N'7 Up', CAST(0.000 AS Decimal(18, 3)), N'lon', CAST(0x51410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (8, N'Bột Cacao', CAST(5.000 AS Decimal(18, 3)), N'kg', CAST(0x57410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (9, N'Đường', CAST(10.000 AS Decimal(18, 3)), N'kg', CAST(0x57410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (10, N'Chanh muối', CAST(2.000 AS Decimal(18, 3)), N'hũ', CAST(0x57410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (11, N'Caramel', CAST(4.000 AS Decimal(18, 3)), N'hũ', CAST(0x57410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (12, N'Nước ép dưa hấu', CAST(4.000 AS Decimal(18, 3)), N'lít', CAST(0x57410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (15, N'Nước ép cam', CAST(5.000 AS Decimal(18, 3)), N'lít', CAST(0x57410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (16, N'Nước ép thơm', CAST(3.000 AS Decimal(18, 3)), N'lít', CAST(0x57410B00 AS Date))
INSERT [dbo].[tblNguyenLieu] ([MaNL], [TenNL], [SoLuong], [DonViTinh], [NgayNhap]) VALUES (17, N'Trà xanh sấy', CAST(10.000 AS Decimal(18, 3)), N'kg', CAST(0x57410B00 AS Date))
SET IDENTITY_INSERT [dbo].[tblNguyenLieu] OFF
SET IDENTITY_INSERT [dbo].[tblNhanVien] ON 

INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [DiaChi], [SDT], [MaLoaiNV], [TaiKhoan]) VALUES (2, N'Nguyễn Văn A', N'TP HCM', N'0324567890                                                                                          ', 1, N'nguyenvana                                                                                          ')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [DiaChi], [SDT], [MaLoaiNV], [TaiKhoan]) VALUES (3, N'Trần Thanh B', N'Hà Nội', N'0234567891                                                                                          ', 1, N'admin                                                                                               ')
SET IDENTITY_INSERT [dbo].[tblNhanVien] OFF
INSERT [dbo].[tblTaiKhoan] ([MaNV], [TenDN], [MatKhau], [Quyen]) VALUES (2, N'nguyenvana', N'123456', N'nhanvien')
INSERT [dbo].[tblTaiKhoan] ([MaNV], [TenDN], [MatKhau], [Quyen]) VALUES (3, N'admin', N'123456', N'admin')
SET IDENTITY_INSERT [dbo].[tblThucDon] ON 

INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (1, N'Cafe Đá', 1, N'ly        ', N'22000.0   ', N'Espresso.jpg', N'abc', 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (2, N'Cafe sữa nóng/đá', 1, N'ly        ', N'25000     ', N'cafeSuaDa.jpg', NULL, 1)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (3, N'Cafe sữa tươi', 1, N'ly        ', N'28000     ', N'cafeSuaTuoi.jpg', NULL, 1)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (4, N'Bò húc', 2, N'lon       ', N'25000     ', N'BoHuc.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (5, N'Sting', 2, N'lon       ', N'25000     ', N'Sting.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (6, N'Cocacola', 2, N'lon       ', N'22000     ', N'Cocacola.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (7, N'7 Up', 2, N'lon       ', N'20000     ', N'7up.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (8, N'Americano', 2, N'ly        ', N'46000.0   ', N'Espresso.jpg', N'abc', 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (9, N'Bạc Sỉu Đá', 1, N'ly        ', N'33000     ', N'BacSiuDa.jpg', NULL, 1)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (10, N'Cacao Sữa Đá', 1, N'ly        ', N'43000     ', N'CacaoSuaDa.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (11, N'Legend Cafe Sữa Đá', 1, N'ly        ', N'150000    ', N'LegendCafeSuaDa.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (12, N'Chanh Muối Mật Ong', 1, N'ly        ', N'41000     ', N'ChanhMuoiMatOng.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (13, N'Cafe Đá Xay Caramel', 1, N'ly        ', N'55000     ', N'CafeDaXayCaramel.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (14, N'Dưa Hấu Ép', 5, N'ly        ', N'41000     ', N'DuaHauEp.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (15, N'Cacao Sữa Nóng', 1, N'ly        ', N'43000     ', N'CacaoSuaNong.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (16, N'Cam Vắt', 5, N'ly        ', N'49000     ', N'CamVat.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (17, N'Cappuchino', 1, N'ly        ', N'49000     ', N'Cappuchino.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (18, N'Thơm Ép', 5, N'ly        ', N'41000.0   ', N'Espresso.jpg', N'abc', 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (19, N'Cafe Đá Xay Socola', 1, N'ly        ', N'55000     ', N'CafeDaXaySocola.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (20, N'Trà Xanh Jelly', 1, N'ly        ', N'42000     ', N'TraXanhJelly.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (21, N'Cafe Mocha Đá', 1, N'ly        ', N'55000     ', N'CafeMoChaDa.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (22, N'Sữa Tươi', 1, N'ly        ', N'31000     ', N'SuaTuoi.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (23, N'Espresso', 1, N'ly        ', N'39000     ', N'Espresso.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (24, N'Cafe Latte', 1, N'ly        ', N'55000     ', N'CafeLatte.jpg', NULL, 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (26, N'abc', 1, N'cốc       ', N'2.0       ', N'Espresso.jpg', N'abc', 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (28, N'đồ uống test 2', 5, N'ly        ', N'123000    ', N'caffeeRang.jpg', N'13', 0)
INSERT [dbo].[tblThucDon] ([MaMon], [TenMon], [MaLoai], [DonViTinh], [DonGia], [HinhAnh], [TuyChonThem], [PhoBien]) VALUES (30, N'đồ uống test 2', 1, N'ly        ', N'120000    ', N'caffeeLy.jpg', N'abc', 1)
SET IDENTITY_INSERT [dbo].[tblThucDon] OFF
ALTER TABLE [dbo].[tblThucDon] ADD  CONSTRAINT [DF_tblThucDon_DonGia]  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[tblChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHD_tblHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tblChiTietHD] CHECK CONSTRAINT [FK_tblChiTietHD_tblHoaDon]
GO
ALTER TABLE [dbo].[tblChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHD_tblThucDon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblThucDon] ([MaMon])
GO
ALTER TABLE [dbo].[tblChiTietHD] CHECK CONSTRAINT [FK_tblChiTietHD_tblThucDon]
GO
ALTER TABLE [dbo].[tblCongThuc]  WITH CHECK ADD  CONSTRAINT [FK_tblCongThuc_tblNguyenLieu] FOREIGN KEY([MaNL])
REFERENCES [dbo].[tblNguyenLieu] ([MaNL])
GO
ALTER TABLE [dbo].[tblCongThuc] CHECK CONSTRAINT [FK_tblCongThuc_tblNguyenLieu]
GO
ALTER TABLE [dbo].[tblCongThuc]  WITH CHECK ADD  CONSTRAINT [FK_tblCongThuc_tblThucDon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblThucDon] ([MaMon])
GO
ALTER TABLE [dbo].[tblCongThuc] CHECK CONSTRAINT [FK_tblCongThuc_tblThucDon]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblBan] FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblBan]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblNhanVien]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblLoaiNhanVien] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[tblLoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblLoaiNhanVien]
GO
ALTER TABLE [dbo].[tblTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tblTaiKhoan_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblTaiKhoan] CHECK CONSTRAINT [FK_tblTaiKhoan_tblNhanVien]
GO
ALTER TABLE [dbo].[tblThucDon]  WITH CHECK ADD  CONSTRAINT [FK_tblThucDon_tblLoaiMon] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tblLoaiMon] ([MaLoai])
GO
ALTER TABLE [dbo].[tblThucDon] CHECK CONSTRAINT [FK_tblThucDon_tblLoaiMon]
GO
/****** Object:  Trigger [dbo].[capnhat_tongtien]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[capnhat_tongtien] on [dbo].[tblChiTietHD] after delete as
begin
	update tblhoadon set TongTienTT=TongTienTT-(select tongtien from deleted) where mahd=(select mahd from deleted)
end

GO
/****** Object:  Trigger [dbo].[TRG_CapNhatNLKho]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[TRG_CapNhatNLKho]
   ON  [dbo].[tblChiTietHD]
   AFTER INSERT,update
AS 
BEGIN
	DECLARE @MaMon INT,@MaHD INT, @slNL INT, @soluongMua INT, @soluongMua2 INT, 
	@maNL1 INT, @maNL2 INT, @maNL3 INT, 
	@hamLuong1 FLOAT, @hamLuong2 FLOAT, @hamLuong3 FLOAT 
	SELECT @MaMon = Inserted.MaMon, @MaHD = Inserted.MaHD, @soluongMua = Inserted.SoLuong FROM Inserted
	SELECT @soluongMua2 = SoLuong FROM dbo.tblChiTietHD WHERE MaMon =@MaMon AND MaHD = @MaHD
	SELECT @slNL = COUNT(*) FROM dbo.tblCongThuc WHERE @MaMon = MaMon

	IF(@slNL = 1)
	BEGIN
		SELECT @hamLuong1 = Tong, @maNL1 = MaNL FROM dbo.tblCongThuc WHERE MaMon = @MaMon
			BEGIN
				UPDATE dbo.tblNguyenLieu
				SET SoLuong = SoLuong - @hamLuong1*@soluongMua
				WHERE MaNL = @maNL1
			END
	END

	ELSE
		IF(@slNL = 2)
		BEGIN
			
			SELECT @hamLuong1 = HamLuong, @maNL1 = MaNL FROM dbo.tblCongThuc WHERE MaMon = @MaMon ORDER BY MaNL DESC OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY
			SELECT @hamLuong2 = HamLuong, @maNL2 = MaNL FROM dbo.tblCongThuc WHERE MaMon = @MaMon ORDER BY MaNL DESC OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY

				BEGIN
					UPDATE dbo.tblNguyenLieu
					SET SoLuong = SoLuong - @hamLuong1*@soluongMua
					WHERE MaNL = @maNL1

					UPDATE dbo.tblNguyenLieu
					SET SoLuong = SoLuong - @hamLuong2*@soluongMua
					WHERE MaNL = @maNL2
				END
		END

		ELSE
			IF(@slNL = 3)
			BEGIN
				SELECT @hamLuong1 = Tong, @maNL1 = MaNL FROM dbo.tblCongThuc WHERE MaMon = @MaMon ORDER BY MaNL DESC OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY
				SELECT @hamLuong2 = Tong, @maNL2 = MaNL FROM dbo.tblCongThuc WHERE MaMon = @MaMon ORDER BY MaNL DESC OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY
				SELECT @hamLuong3 = Tong, @maNL3 = MaNL FROM dbo.tblCongThuc WHERE MaMon = @MaMon ORDER BY MaNL DESC OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY
			
					BEGIN
						UPDATE dbo.tblNguyenLieu
						SET SoLuong = SoLuong - @hamLuong1*@soluongMua
						WHERE MaNL = @maNL1

						UPDATE dbo.tblNguyenLieu
						SET SoLuong = SoLuong - @hamLuong2*@soluongMua
						WHERE MaNL = @maNL2

						UPDATE dbo.tblNguyenLieu
						SET SoLuong = SoLuong - @hamLuong3*@soluongMua
						WHERE MaNL = @maNL3
					END
			END
END

GO
/****** Object:  Trigger [dbo].[xoa_HoaDon]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[xoa_HoaDon] on [dbo].[tblChiTietHD] after delete as
begin
	if((select count(*) from tblchitiethd where mahd=(select mahd from deleted))=0)
	begin
		delete from tblhoadon where mahd=(select mahd from deleted)
	end
end

GO
/****** Object:  Trigger [dbo].[capNhat_Ban]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[capNhat_Ban] on [dbo].[tblHoaDon] after update,insert as
begin
	if((select trangthai from inserted)='Chua')
		begin
			update tblban set trangthai='True' where maban=(select maban from inserted)
		end
	else
		begin
			update tblban set trangthai='False' where maban=(select maban from inserted)
		end
end

GO
/****** Object:  Trigger [dbo].[capNhat_Ban_Delete]    Script Date: 13/08/2020 16:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[capNhat_Ban_Delete] on [dbo].[tblHoaDon] after delete as
begin
		begin
			update tblban set trangthai='False' where maban=(select maban from deleted)
		end
end

GO
