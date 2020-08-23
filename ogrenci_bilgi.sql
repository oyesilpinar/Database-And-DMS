USE [master]
GO
/****** Object:  Database [ogrenci_bilgi_sistemi]    Script Date: 21.08.2020 01:52:38 ******/
CREATE DATABASE [ogrenci_bilgi_sistemi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ogrenci_bilgi_sistemi', FILENAME = N'D:\program files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ogrenci_bilgi_sistemi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ogrenci_bilgi_sistemi_log', FILENAME = N'D:\program files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ogrenci_bilgi_sistemi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ogrenci_bilgi_sistemi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET ARITHABORT OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET  MULTI_USER 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET QUERY_STORE = OFF
GO
USE [ogrenci_bilgi_sistemi]
GO
/****** Object:  Table [dbo].[ogrenci]    Script Date: 21.08.2020 01:52:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenci](
	[ogrenci_no] [int] NOT NULL,
	[ad] [nvarchar](30) NULL,
	[soyad] [nvarchar](30) NULL,
	[adres] [nvarchar](50) NULL,
	[bolum_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_ogrenci] PRIMARY KEY CLUSTERED 
(
	[ogrenci_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[OgrenciBilgi]    Script Date: 21.08.2020 01:52:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[OgrenciBilgi]
AS
Select ogrenci_no,ad,soyad
From  ogrenci
GO
/****** Object:  Table [dbo].[bolum]    Script Date: 21.08.2020 01:52:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bolum](
	[bolum_id] [nvarchar](50) NOT NULL,
	[bolum_ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_bolum] PRIMARY KEY CLUSTERED 
(
	[bolum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deneme]    Script Date: 21.08.2020 01:52:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deneme](
	[ad] [nchar](10) NULL,
	[soyad] [nchar](10) NULL,
	[no] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogretim_gorevlisi]    Script Date: 21.08.2020 01:52:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogretim_gorevlisi](
	[ogretim_id] [nvarchar](50) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[unvan] [nvarchar](50) NULL,
	[bolum_id] [nvarchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ogrenci_bilgi_sistemi] SET  READ_WRITE 
GO
