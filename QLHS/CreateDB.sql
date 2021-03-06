/****** To insert Vietnames:  ******/
/****** 1. make sure script in Unicode-16 ******/
/****** 2. Put N before Vietnames text ******/
/******    Example: N'Nguyễn Công Hoan' ******/

USE [master]
GO

WHILE EXISTS(select NULL from sys.databases where name='QLHS')
BEGIN
    DECLARE @SQL varchar(max)
    SELECT @SQL = COALESCE(@SQL,'') + 'Kill ' + Convert(varchar, SPId) + ';'
    FROM MASTER..SysProcesses
    WHERE DBId = DB_ID(N'QLHS') AND SPId <> @@SPId
    EXEC(@SQL)
    DROP DATABASE [QLHS]
END
GO

/* Collation = SQL_Latin1_General_CP1_CI_AS */
CREATE DATABASE [QLHS]
GO

USE [QLHS]
GO

/****** Object:  Table [dbo].[tblLoaiHocSinh]    Script Date: 3/28/2018 8:02:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblLoaiHocSinh](
	[maloaihocsinh] [int] NOT NULL,
	[tenloaihocsinh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblLoaiHocSinh] PRIMARY KEY CLUSTERED 
(
	[maloaihocsinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [QLHS]
GO

/****** Object:  Table [dbo].[tblHocSinh]    Script Date: 3/28/2018 8:05:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* Note: */
/* [datetime2](7) = DateTime type in .NET */

CREATE TABLE [dbo].[tblHocSinh](
	[mshs] [nvarchar](8) NOT NULL,
	[maloaihocsinh] [int] NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[ngaysinh] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tblHocSinh] PRIMARY KEY CLUSTERED 
(
	[mshs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [QLHS]
GO

INSERT INTO[dbo].[tblLoaiHocSinh]([maloaihocsinh],[tenloaihocsinh]) VALUES(1,N'ChuyênToán')
GO
INSERT INTO[dbo].[tblLoaiHocSinh]([maloaihocsinh],[tenloaihocsinh]) VALUES(2,N'ChuyênTin')
GO
INSERT INTO[dbo].[tblLoaiHocSinh]([maloaihocsinh],[tenloaihocsinh]) VALUES(3,N'ChuyênVăn')
GO

USE [QLHS]
GO


INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'16000001',1,N'Nguyễn Văn An',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'16000002',2,N'Nguyễn Văn Huy',N'1 Cống Quỳnh, Quận 1, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'16000003',3,N'Nguyễn Văn Tùng',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'16000004',1,N'Nguyễn Quang Minh',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'16000005',2,N'Nguyễn Nhật Trường',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))

INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'15000001',1,N'Nguyễn Văn An',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'15000002',2,N'Nguyễn Văn Huy',N'1 Cống Quỳnh, Quận 1, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'15000003',3,N'Nguyễn Văn Tùng',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'15000004',1,N'Nguyễn Quang Minh',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'15000005',2,N'Nguyễn Nhật Trường',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))


INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'14000001',1,N'Nguyễn Văn An',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'14000002',2,N'Nguyễn Văn Huy',N'1 Cống Quỳnh, Quận 1, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'14000003',3,N'Nguyễn Văn Tùng',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'14000004',1,N'Nguyễn Quang Minh',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO
INSERT INTO [dbo].[tblHocSinh]([mshs],[maloaihocsinh],[hoten],[diachi],[ngaysinh]) VALUES(N'14000005',2,N'Nguyễn Nhật Trường',N'134 Cộng Hòa, Quận Tân Bình, TP HCM',convert(datetime,'12/30/2017 00:00:00',101))
GO

USE [QLHS]
GO

/****** Object:  Table [dbo].[tblhocky]    Script Date: 3/31/2018 6:20:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblhocky](
	[tenhocky] [nvarchar](50) NULL,
	[mahocky] [int] NOT NULL,
	[thutuhocky] [int] NOT NULL,
	[manamhoc] [int] NOT NULL,
 CONSTRAINT [PK_tblhocky] PRIMARY KEY CLUSTERED 
(
	[mahocky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


USE [QLHS]
GO

/****** Object:  Table [dbo].[tblkhoi]    Script Date: 3/31/2018 6:20:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblkhoi](
	[makhoi] [int] NOT NULL,
	[tenkhoi] [nvarchar](50) NOT NULL,
	[thutukhoi] [int] NOT NULL,
 CONSTRAINT [PK_tblkhoi] PRIMARY KEY CLUSTERED 
(
	[makhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


USE [QLHS]
GO

/****** Object:  Table [dbo].[tbllop]    Script Date: 3/31/2018 6:21:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbllop](
	[malop] [int] NOT NULL,
	[tenlop] [nvarchar](50) NOT NULL,
	[mahocky] [int] NOT NULL,
	[makhoi] [int] NOT NULL
) ON [PRIMARY]

GO


USE [QLHS]
GO

/****** Object:  Table [dbo].[tbllophocsinh]    Script Date: 3/31/2018 6:21:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbllophocsinh](
	[mahocsinh] [nvarchar](8) NOT NULL,
	[malop] [int] NOT NULL
 CONSTRAINT [PK_tbllophocsinh] PRIMARY KEY CLUSTERED 
(
	[mahocsinh] ASC,
	[malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


USE [QLHS]
GO

/****** Object:  Table [dbo].[tblnamhoc]    Script Date: 3/31/2018 6:21:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblnamhoc](
	[manamhoc] [int] NOT NULL,
	[tennamhoc] [nvarchar](50) NOT NULL,
	[thutunamhoc] [int] NOT NULL,
 CONSTRAINT [PK_tblnamhoc_1] PRIMARY KEY CLUSTERED 
(
	[manamhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [QLHS]
GO

/****** Object:  Table [dbo].[tblloaidiem]    Script Date: 3/31/2018 7:35:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblloaidiem](
	[maloaidiem] [int] NOT NULL,
	[tenloaidiem] [nvarchar](50) NOT NULL,
	[hesomacdinh] [int] NOT NULL,
 CONSTRAINT [PK_tblloaidiem] PRIMARY KEY CLUSTERED 
(
	[maloaidiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [QLHS]
GO

/****** Object:  Table [dbo].[tblmonhoc]    Script Date: 3/31/2018 7:37:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblmonhoc](
	[mamonhoc] [int] NOT NULL,
	[tenmonhoc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblmonhoc] PRIMARY KEY CLUSTERED 
(
	[mamonhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tblquydinh](
	[id] [int] NOT NULL,
	[sokhoitoida] [int] NOT NULL,
	[sohockytoida] [int] NOT NULL,
CONSTRAINT [PK_tblquydinh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY]

GO


USE [QLHS]
GO

/****** Object:  Table [dbo].[tblchuongtrinh]    Script Date: 4/8/2018 2:48:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblchuongtrinh](
	[machuongtrinh] [int] NOT NULL,
	[tenchuongtrinh] [nvarchar](50) NOT NULL,
	[ngaytao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tblchuongtrinh] PRIMARY KEY CLUSTERED 
(
	[machuongtrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [QLHS]
GO

/****** Object:  Table [dbo].[tblchitietchuongtrinh]    Script Date: 4/8/2018 2:50:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblchitietchuongtrinh](
	[machitietchuongtrinh] [int] NOT NULL,
	[mamonhoc] [int] NOT NULL,
	[hesomon] [int] NOT NULL,
	[machuongtrinh] [int] NOT NULL,
 CONSTRAINT [PK_tblchitietchuongtrinh] PRIMARY KEY CLUSTERED 
(
	[machitietchuongtrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


USE [QLHS]
GO

/****** Object:  Table [dbo].[tblhinhthucdanhgia]    Script Date: 4/8/2018 2:50:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblhinhthucdanhgia](
	[mahinhthucdanhgia] [int] NOT NULL,
	[machitietchuongtrinh] [int] NOT NULL,
	[maloaidiem] [int] NOT NULL,
	[hesodiem] [int] NOT NULL,
 CONSTRAINT [PK_tblhinhthucdanhgia] PRIMARY KEY CLUSTERED 
(
	[mahinhthucdanhgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


USE [QLHS]
GO

/****** Object:  Table [dbo].[tbldiem]    Script Date: 4/8/2018 2:50:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbldiem](
	[mahinhthucdanhgia] [int] NOT NULL,
	[mahocsinh] [nvarchar](8) NOT NULL,
	[diemso] [float] NOT NULL,
	[ngaynhap] [datetime2](7) NOT NULL,
	[ngaycapnhat] [datetime2](7) NOT NULL,
	[useridnhap] [nvarchar](40) NOT NULL,
	[useridcapnhat] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_tbldiem] PRIMARY KEY CLUSTERED 
(
	[mahinhthucdanhgia] ASC,
	[mahocsinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


USE [QLHS]
GO

/****** Object:  Table [dbo].[tblapdung]    Script Date: 4/8/2018 2:51:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblapdung](
	[malop] [int] NOT NULL,
	[machuongtrinh] [int] NOT NULL,
	[ngayapdung] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tblapdung] PRIMARY KEY CLUSTERED 
(
	[malop] ASC,
	[machuongtrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO





USE [QLHS]
GO

INSERT INTO [dbo].[tblnamhoc]
           ([manamhoc]
           ,[tennamhoc]
		   ,[thutunamhoc])
     VALUES
           (1
           ,N'2014-2015',
		   1)
GO
INSERT INTO [dbo].[tblnamhoc]
           ([manamhoc]
           ,[tennamhoc]
		   ,[thutunamhoc])
     VALUES
           (2
           ,N'2015-2016',
		   2)
GO
INSERT INTO [dbo].[tblnamhoc]
           ([manamhoc]
           ,[tennamhoc]
		   ,[thutunamhoc])
     VALUES
           (3
           ,N'2016-2017'
		   ,3)
GO
INSERT INTO [dbo].[tblnamhoc]
           ([manamhoc]
           ,[tennamhoc]
		   ,[thutunamhoc])
     VALUES
           (4
           ,N'2017-2018',
		   4)
GO


USE [QLHS]
GO

INSERT INTO [dbo].[tblhocky]
           ([tenhocky]
           ,[mahocky]
		   ,[thutuhocky]
           ,[manamhoc])
     VALUES
           (N'Học Kỳ I'
           ,1
		   ,1
           ,1)
GO

INSERT INTO [dbo].[tblhocky]
           ([tenhocky]
           ,[mahocky]
		   ,[thutuhocky]
           ,[manamhoc])
     VALUES
           (N'Học Kỳ 2'
           ,2
		   ,2
           ,1)
GO

INSERT INTO [dbo].[tblhocky]
           ([tenhocky]
           ,[mahocky]
		   ,[thutuhocky]
           ,[manamhoc])
     VALUES
           (N'Học Kỳ I'
           ,3
		   ,1
           ,2)
GO

INSERT INTO [dbo].[tblhocky]
           ([tenhocky]
           ,[mahocky]
		   ,[thutuhocky]
           ,[manamhoc])
     VALUES
           (N'Học Kỳ 2'
           ,4
		   ,2
           ,2)
GO

INSERT INTO [dbo].[tblhocky]
           ([tenhocky]
           ,[mahocky]
		   ,[thutuhocky]
           ,[manamhoc])
     VALUES
           (N'Học Kỳ I'
           ,5
		   ,1
           ,3)
GO

INSERT INTO [dbo].[tblhocky]
           ([tenhocky]
           ,[mahocky]
		   ,[thutuhocky]
           ,[manamhoc])
     VALUES
           (N'Học Kỳ 2'
           ,6
		   ,2
           ,3)
GO

INSERT INTO [dbo].[tblhocky]
           ([tenhocky]
           ,[mahocky]
		   ,[thutuhocky]
           ,[manamhoc])
     VALUES
           (N'Học Kỳ I'
           ,7
		   ,1
           ,4)
GO

INSERT INTO [dbo].[tblhocky]
           ([tenhocky]
           ,[mahocky]
		   ,[thutuhocky]
           ,[manamhoc])
     VALUES
           (N'Học Kỳ 2'
           ,8
		   ,2
           ,4)
GO
USE [QLHS]
GO

INSERT INTO [dbo].[tblkhoi]
           ([makhoi]
           ,[tenkhoi]
		   ,[thutukhoi])
     VALUES
           (1
           ,N'Khối 10'
		   ,1)
GO

INSERT INTO [dbo].[tblkhoi]
           ([makhoi]
           ,[tenkhoi]
		   ,[thutukhoi])
     VALUES
           (2
           ,N'Khối 11'
		   ,2)
GO

INSERT INTO [dbo].[tblkhoi]
           ([makhoi]
           ,[tenkhoi]
		   ,[thutukhoi])
     VALUES
           (3
           ,N'Khối 12'
		   ,3)
GO


USE [QLHS]
GO

INSERT INTO [dbo].[tbllop]
           ([malop]
           ,[tenlop]
		   ,[mahocky]
           ,[makhoi])
     VALUES
           (1
           ,N'10A1'
		   ,1
           ,1)
GO

INSERT INTO [dbo].[tbllop]
           ([malop]
           ,[tenlop]
		   ,[mahocky]
           ,[makhoi])
     VALUES
           (2
           ,N'10A2'
		   ,1
           ,1)
GO

INSERT INTO [dbo].[tbllop]
           ([malop]
           ,[tenlop]
			,[mahocky]
           ,[makhoi])
     VALUES
           (3
           ,N'11A1'
		   ,1
           ,2)
GO

INSERT INTO [dbo].[tbllop]
           ([malop]
           ,[tenlop]
		   	,[mahocky]
           ,[makhoi])
     VALUES
           (4
           ,N'11A2'
		   ,1
           ,2)
GO

INSERT INTO [dbo].[tbllop]
           ([malop]
           ,[tenlop]
		   	,[mahocky]
           ,[makhoi])
     VALUES
           (5
           ,N'12A1'
		   ,1
           ,3)
GO

INSERT INTO [dbo].[tbllop]
           ([malop]
           ,[tenlop]
		   ,[mahocky]
           ,[makhoi])
     VALUES
           (6
           ,N'12A2'
		   ,1
           ,3)
GO

USE [QLHS]
GO

INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])

     VALUES
           (N'14000001'
           ,5)
GO

INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
		   
     VALUES
           (N'14000002'
           ,5)
GO

INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
		   
     VALUES
           (N'14000003'
           ,6)
GO

INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'14000004'
           ,6)
GO
INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'14000005'
           ,6)
GO

INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'15000001'
           ,3)
GO

INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'15000002'
           ,4)
GO

INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'15000003'
           ,4)
GO

INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'15000004'
           ,4)
GO
INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'15000005'
           ,4)
GO


INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'16000001'
           ,1)
GO

INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'16000002'
           ,2)
GO

INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'16000003'
           ,2)
GO
INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'16000004'
           ,2)
GO
INSERT INTO [dbo].[tbllophocsinh]
           ([mahocsinh]
           ,[malop])
     VALUES
           (N'16000005'
           ,2)
GO

USE [QLHS]
GO


USE [QLHS]
GO

INSERT INTO [dbo].[tblquydinh]
           ([id]
		   ,[sokhoitoida]
           ,[sohockytoida])
     VALUES
           (1
		   ,3
           ,3)
GO




USE [QLHS]
GO

INSERT INTO [dbo].[tblchuongtrinh]
           ([machuongtrinh]
           ,[tenchuongtrinh]
           ,[ngaytao])
     VALUES
           (1
           ,N'Chương Trình Chuẩn Khối 10'
           ,convert(datetime,'04/08/2018 00:00:00',101)
		   )
GO

INSERT INTO [dbo].[tblchuongtrinh]
           ([machuongtrinh]
           ,[tenchuongtrinh]
           ,[ngaytao])
     VALUES
           (2
           ,N'Chương Trình Chuẩn Khối 11'
           ,convert(datetime,'04/08/2018 00:00:00',101)
		   )
GO

INSERT INTO [dbo].[tblchuongtrinh]
           ([machuongtrinh]
           ,[tenchuongtrinh]
           ,[ngaytao])
     VALUES
           (3
           ,N'Chương Trình Chuẩn Khối 12'
           ,convert(datetime,'04/08/2018 00:00:00',101)
		   )
GO

USE [QLHS]
GO

INSERT INTO [dbo].[tblchitietchuongtrinh]
           ([machitietchuongtrinh]
           ,[mamonhoc]
           ,[hesomon]
           ,[machuongtrinh])
     VALUES
           (1
           ,1
           ,1
           ,1)
GO


INSERT INTO [dbo].[tblchitietchuongtrinh]
           ([machitietchuongtrinh]
           ,[mamonhoc]
           ,[hesomon]
           ,[machuongtrinh])
     VALUES
           (2
           ,2
           ,2
           ,1)
GO

USE [QLHS]
GO

INSERT INTO [dbo].[tblhinhthucdanhgia]
           ([mahinhthucdanhgia]
           ,[machitietchuongtrinh]
           ,[maloaidiem]
           ,[hesodiem])
     VALUES
           (1
           ,1
           ,1
           ,1)
GO


INSERT INTO [dbo].[tblhinhthucdanhgia]
           ([mahinhthucdanhgia]
           ,[machitietchuongtrinh]
           ,[maloaidiem]
           ,[hesodiem])
     VALUES
           (2
           ,1
           ,2
           ,2)
GO

INSERT INTO [dbo].[tblhinhthucdanhgia]
           ([mahinhthucdanhgia]
           ,[machitietchuongtrinh]
           ,[maloaidiem]
           ,[hesodiem])
     VALUES
           (3
           ,2
           ,1
           ,1)
GO

INSERT INTO [dbo].[tblhinhthucdanhgia]
           ([mahinhthucdanhgia]
           ,[machitietchuongtrinh]
           ,[maloaidiem]
           ,[hesodiem])
     VALUES
           (4
           ,2
           ,3
           ,2)
GO
INSERT INTO [dbo].[tblhinhthucdanhgia]
           ([mahinhthucdanhgia]
           ,[machitietchuongtrinh]
           ,[maloaidiem]
           ,[hesodiem])
     VALUES
           (5
           ,2
           ,3
           ,6)
GO


USE [QLHS]
GO

--CREATE TABLE [dbo].[tbldiem](
--[mahinhthucdanhgia] [int] NOT NULL,
--[mahocsinh] [nvarchar](8) NOT NULL,
--[diemso] [float] NOT NULL,
--[ngaynhap] [datetime2](7) NOT NULL,
--[ngaycapnhat] [datetime2](7) NOT NULL,
--[userid] [nvarchar](40) NOT NULL,

INSERT INTO [dbo].[tbldiem]
           ([mahinhthucdanhgia]
           ,[mahocsinh]
           ,[diemso]
		   ,[ngaynhap]
		   ,[ngaycapnhat]
		   ,[useridnhap]
		   ,[useridcapnhat]
		   )
     VALUES
           (1
           ,N'14000001'
           ,3.0
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,N'admin'
		   ,N'admin'
		   )
GO


INSERT INTO [dbo].[tbldiem]
           ([mahinhthucdanhgia]
           ,[mahocsinh]
           ,[diemso]
		   ,[ngaynhap]
		   ,[ngaycapnhat]
		   ,[useridnhap]
		   ,[useridcapnhat]
		   )
     VALUES
           (2
           ,N'14000001'
           ,9.0
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,N'admin'
		   ,N'admin'
		   )
GO

INSERT INTO [dbo].[tbldiem]
           ([mahinhthucdanhgia]
           ,[mahocsinh]
           ,[diemso]
		   ,[ngaynhap]
		   ,[ngaycapnhat]
		   ,[useridnhap]
		   ,[useridcapnhat]
		   )
     VALUES
           (3
           ,N'14000001'
           ,8.0
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,N'admin'
		   ,N'admin'
		   )
GO

INSERT INTO [dbo].[tbldiem]
           ([mahinhthucdanhgia]
           ,[mahocsinh]
           ,[diemso]
		   ,[ngaynhap]
		   ,[ngaycapnhat]
		   ,[useridnhap]
		   ,[useridcapnhat]
		   )
     VALUES
           (4
           ,N'14000001'
           ,8.0
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,N'admin'
		   ,N'admin'
		   )
GO


INSERT INTO [dbo].[tbldiem]
           ([mahinhthucdanhgia]
           ,[mahocsinh]
           ,[diemso]
		   ,[ngaynhap]
		   ,[ngaycapnhat]
		   ,[useridnhap]
		   ,[useridcapnhat]
		   )
     VALUES
           (1
           ,N'14000002'
           ,7.0
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,N'admin'
		   ,N'admin'
		   )
GO


INSERT INTO [dbo].[tbldiem]
           ([mahinhthucdanhgia]
           ,[mahocsinh]
           ,[diemso]
		   ,[ngaynhap]
		   ,[ngaycapnhat]
		   ,[useridnhap]
		   ,[useridcapnhat]
		   )
     VALUES
           (2
           ,N'14000002'
           ,6.0
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,N'admin'
		   ,N'admin'
		   )
GO

INSERT INTO [dbo].[tbldiem]
           ([mahinhthucdanhgia]
           ,[mahocsinh]
           ,[diemso]
		   ,[ngaynhap]
		   ,[ngaycapnhat]
		   ,[useridnhap]
		   ,[useridcapnhat]
		   )
     VALUES
           (3
           ,N'14000002'
           ,5.0
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,N'admin'
		   ,N'admin'
		   )
GO

INSERT INTO [dbo].[tbldiem]
           ([mahinhthucdanhgia]
           ,[mahocsinh]
           ,[diemso]
		   ,[ngaynhap]
		   ,[ngaycapnhat]
		   ,[useridnhap]
		   ,[useridcapnhat]
		   )
     VALUES
           (4
           ,N'14000002'
           ,4.0
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,convert(datetime,'04/18/2018 00:00:00',101)
		   ,N'admin'
		   ,N'admin'
		   )
GO



USE [QLHS]
GO

INSERT INTO [dbo].[tblapdung]
           ([malop]
           ,[machuongtrinh]
           ,[ngayapdung])
     VALUES
           (1
           ,1
           ,convert(datetime,'04/08/2018 00:00:00',101))
GO


USE [QLHS]
GO

INSERT INTO [dbo].[tblloaidiem]
           ([maloaidiem]
           ,[tenloaidiem]
           ,[hesomacdinh])
     VALUES
           (1
           ,N'Miệng'
           ,1)
GO


USE [QLHS]
GO

INSERT INTO [dbo].[tblloaidiem]
           ([maloaidiem]
           ,[tenloaidiem]
           ,[hesomacdinh])
     VALUES
           (2
           ,N'15 Phút'
           ,1)
GO


USE [QLHS]
GO

INSERT INTO [dbo].[tblloaidiem]
           ([maloaidiem]
           ,[tenloaidiem]
           ,[hesomacdinh])
     VALUES
           (3
           ,N'1 Tiết - 45 phút'
           ,2)
GO


USE [QLHS]
GO

INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (1
           ,N'Toán')
GO


INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (2
           ,N'Văn')
GO

INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (3
           ,N'Anh')
GO

INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (4
           ,N'Hóa')
GO

INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (5
           ,N'Lý')
GO

INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (6
           ,N'Sinh')
GO

INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (7
           ,N'Địa')
GO
INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (8
           ,N'Sử')
GO

INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (9
           ,N'Giáo Dục Công Dân')
GO

INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (10
           ,N'Thể Dục')
GO

INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (11
           ,N'Vẽ')
GO

INSERT INTO [dbo].[tblmonhoc]
           ([mamonhoc]
           ,[tenmonhoc])
     VALUES
           (12
           ,N'Nhạc')
GO




