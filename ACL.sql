USE [master]
GO
/****** Object:  Database [ACL]    Script Date: 05/05/2020 21:36:58 ******/
CREATE DATABASE [ACL] ON  PRIMARY 
( NAME = N'ACL', FILENAME = N'D:\MCProjects\SVILUPPO\DATABASE\ACL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ACL_log', FILENAME = N'D:\MCProjects\SVILUPPO\DATABASE\ACL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ACL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ACL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ACL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ACL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ACL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ACL] SET ARITHABORT OFF 
GO
ALTER DATABASE [ACL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ACL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ACL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ACL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ACL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ACL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ACL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ACL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ACL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ACL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ACL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ACL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ACL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ACL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ACL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ACL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ACL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ACL] SET RECOVERY FULL 
GO
ALTER DATABASE [ACL] SET  MULTI_USER 
GO
ALTER DATABASE [ACL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ACL] SET DB_CHAINING OFF 
GO
USE [ACL]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ACL]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 05/05/2020 21:36:58 ******/
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
/****** Object:  Table [dbo].[ED_Allegato]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ED_Allegato](
	[EDAL_ID] [int] IDENTITY(1,1) NOT NULL,
	[EDAL_Annotazione] [nvarchar](max) NULL,
	[EDAL_EDPS_ID] [int] NOT NULL,
	[EDAL_Guid] [uniqueidentifier] NOT NULL,
	[EDAL_Syncro] [bit] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ED_Allegato] PRIMARY KEY CLUSTERED 
(
	[EDAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ED_AllegatoFile]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ED_AllegatoFile](
	[EDAF_ID] [int] IDENTITY(1,1) NOT NULL,
	[EDAF_FileName] [nvarchar](max) NULL,
	[EDAF_EDAL_ID] [int] NOT NULL,
	[EDAF_Guid] [uniqueidentifier] NOT NULL,
	[EDAF_Syncro] [bit] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ED_AllegatoFile] PRIMARY KEY CLUSTERED 
(
	[EDAF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ED_Categoria]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ED_Categoria](
	[EDCT_ID] [int] IDENTITY(1,1) NOT NULL,
	[EDCT_Guid] [uniqueidentifier] NOT NULL,
	[EDCT_Descrizione] [nvarchar](max) NULL,
	[EDCT_Syncro] [bit] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ED_Categoria] PRIMARY KEY CLUSTERED 
(
	[EDCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ED_Post]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ED_Post](
	[EDPS_ID] [int] IDENTITY(1,1) NOT NULL,
	[EDPS_EDCT_ID] [int] NOT NULL,
	[EDPS_Titolo] [nvarchar](max) NULL,
	[EDPS_Autore] [nvarchar](max) NULL,
	[EDPS_Articolo] [nvarchar](max) NULL,
	[EDPS_Tags] [nvarchar](max) NULL,
	[EDPS_DataPubblica] [datetime2](7) NOT NULL,
	[EDPS_NrClick] [int] NOT NULL,
	[EDPS_Guid] [uniqueidentifier] NOT NULL,
	[EDPS_Syncro] [bit] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ED_Post] PRIMARY KEY CLUSTERED 
(
	[EDPS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ET_Categoria]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ET_Categoria](
	[EC_Id] [int] IDENTITY(1,1) NOT NULL,
	[EC_Description] [nvarchar](max) NULL,
	[EC_Color] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ET_Categoria] PRIMARY KEY CLUSTERED 
(
	[EC_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ET_Evento]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ET_Evento](
	[ET_Id] [int] IDENTITY(1,1) NOT NULL,
	[ET_Title] [nvarchar](max) NULL,
	[ET_Description] [nvarchar](max) NULL,
	[ET_start] [datetime2](7) NOT NULL,
	[ET_End] [datetime2](7) NOT NULL,
	[ET_IsAllDay] [bit] NOT NULL,
	[ET_Url] [nvarchar](max) NULL,
	[ET_Color] [nvarchar](max) NULL,
	[ET_Tag] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ET_Evento] PRIMARY KEY CLUSTERED 
(
	[ET_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GlyphiconLTE]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlyphiconLTE](
	[IconLTE_ID] [int] IDENTITY(1,1) NOT NULL,
	[IconLTE_Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_GlyphiconLTE] PRIMARY KEY CLUSTERED 
(
	[IconLTE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [varchar](255) NOT NULL,
	[Level] [varchar](50) NOT NULL,
	[Logger] [varchar](255) NOT NULL,
	[Message] [varchar](4000) NOT NULL,
	[Exception] [varchar](2000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_Allegato]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_Allegato](
	[MBAL_ID] [int] IDENTITY(1,1) NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[MBAL_MBAT_ID] [int] NOT NULL,
	[MBAL_MBAZ_ID] [int] NOT NULL,
	[MBAL_NomeTabella] [nvarchar](max) NULL,
	[MBAL_IDTabella] [int] NOT NULL,
	[MBAL_Descrizione] [nvarchar](max) NULL,
	[MBAL_NoteIntyerne] [nvarchar](max) NULL,
	[MBAL_NoteEsterne] [nvarchar](max) NULL,
	[MBAL_FileName] [nvarchar](max) NULL,
	[MBAL_Annullato] [bit] NOT NULL,
 CONSTRAINT [PK_MB_Allegato] PRIMARY KEY CLUSTERED 
(
	[MBAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_AllegatoTipo]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_AllegatoTipo](
	[MBAT_ID] [int] IDENTITY(1,1) NOT NULL,
	[MBAT_MBAZ_ID] [int] NOT NULL,
	[MBAT_Descrizione] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaCreazione] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[MBAT_Annullato] [bit] NOT NULL,
 CONSTRAINT [PK_MB_AllegatoTipo] PRIMARY KEY CLUSTERED 
(
	[MBAT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_Applicazioni]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_Applicazioni](
	[MBAP_ID] [int] IDENTITY(1,1) NOT NULL,
	[MBAP_MBAZ_ID] [int] NOT NULL,
	[MBAP_Descrizione] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MB_Applicazioni] PRIMARY KEY CLUSTERED 
(
	[MBAP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_Aziende]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_Aziende](
	[MBAZ_ID] [int] IDENTITY(1,1) NOT NULL,
	[MBAZ_Descrizione] [nvarchar](max) NULL,
	[MBAZ_DescrizioneBreve] [nvarchar](max) NULL,
	[MBAZ_Indirizzo] [nvarchar](max) NULL,
	[MBAZ_Localita] [nvarchar](max) NULL,
	[MBAZ_Cap] [nvarchar](max) NULL,
	[MBAZ_Citta] [nvarchar](max) NULL,
	[MBAZ_Provincia] [nvarchar](max) NULL,
	[MBAZ_PFPG] [bit] NOT NULL,
	[MBAZ_CodiceFiscale] [nvarchar](16) NULL,
	[MBAZ_PartitaIva] [int] NOT NULL,
	[MBAZ_Note] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[MBAL_Annullato] [bit] NOT NULL,
 CONSTRAINT [PK_MB_Aziende] PRIMARY KEY CLUSTERED 
(
	[MBAZ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_FascicoloTipoRiga]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_FascicoloTipoRiga](
	[MBFT_ID] [int] IDENTITY(1,1) NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[MBFT_Descrizione] [nvarchar](max) NULL,
	[MBFT_Icona] [nvarchar](max) NULL,
 CONSTRAINT [PK_MB_FascicoloTipoRiga] PRIMARY KEY CLUSTERED 
(
	[MBFT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_Figura]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_Figura](
	[MBFG_ID] [int] IDENTITY(1,1) NOT NULL,
	[MBFG_Code] [nvarchar](max) NULL,
	[MBFG_Descrizione] [nvarchar](max) NULL,
 CONSTRAINT [PK_MB_Figura] PRIMARY KEY CLUSTERED 
(
	[MBFG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_Funzioni]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_Funzioni](
	[MBFU_ID] [int] IDENTITY(1,1) NOT NULL,
	[MBFU_MBAP_ID] [int] NULL,
	[MBFU_MBMO_ID] [int] NULL,
	[MBFU_Code] [nvarchar](450) NULL,
	[MBFU_Descrizione] [nvarchar](max) NULL,
	[MBFU_Url] [nvarchar](max) NULL,
	[MBFU_Parent_ID] [int] NULL,
	[MBFU_ChildOf] [int] NULL,
	[MBFU_IconMenu] [nvarchar](max) NULL,
	[MBFU_Visualizza] [bit] NOT NULL,
	[MBFU_Ordine] [int] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[MBFU_GroupName] [nvarchar](max) NULL,
	[MBFU_BackEnd] [bit] NOT NULL,
 CONSTRAINT [PK_MB_Funzioni] PRIMARY KEY CLUSTERED 
(
	[MBFU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_Menu]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_Menu](
	[MBMU_ID] [int] IDENTITY(1,1) NOT NULL,
	[MBMU_Descrizione] [nvarchar](max) NULL,
	[MBMU_Url] [nvarchar](max) NULL,
	[MBMU_Icon] [nvarchar](max) NULL,
	[MBMU_Parent_ID] [int] NULL,
	[MBMU_CodeAuth] [nvarchar](max) NULL,
	[MBMU_IsAdmin] [bit] NOT NULL,
	[MBMU_Common] [bit] NOT NULL,
	[MBMU_Progressivo] [int] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MB_Menu] PRIMARY KEY CLUSTERED 
(
	[MBMU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_Moduli]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_Moduli](
	[MBMO_ID] [int] IDENTITY(1,1) NOT NULL,
	[MBMO_MBAP_ID] [int] NOT NULL,
	[MBMO_Descrizione] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MB_Moduli] PRIMARY KEY CLUSTERED 
(
	[MBMO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_RuoliFunzioni]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_RuoliFunzioni](
	[MBRO_ID] [int] NOT NULL,
	[MBFU_ID] [int] NOT NULL,
 CONSTRAINT [PK_MB_RuoliFunzioni] PRIMARY KEY CLUSTERED 
(
	[MBRO_ID] ASC,
	[MBFU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MB_Ruolo]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MB_Ruolo](
	[MBRO_ID] [int] IDENTITY(1,1) NOT NULL,
	[MBRO_Descrizione] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MB_Ruolo] PRIMARY KEY CLUSTERED 
(
	[MBRO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserData]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[TitoloStudio] [nvarchar](max) NULL,
	[IndirizzoResidenza] [nvarchar](max) NULL,
	[Recapiti] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[PageFavorite] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[IsAdmin] [bit] NULL,
	[Status] [int] NULL,
	[Avatar] [nvarchar](max) NULL,
	[Cognome] [nvarchar](max) NULL,
	[DateExpire] [datetime2](7) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[LastAccess] [datetime2](7) NOT NULL,
	[LastUpdatePwd] [datetime2](7) NOT NULL,
	[IsValid] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersMB_Figura]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersMB_Figura](
	[UsersId] [int] NOT NULL,
	[MBFG_ID] [int] NOT NULL,
 CONSTRAINT [PK_UsersMB_Figura] PRIMARY KEY CLUSTERED 
(
	[UsersId] ASC,
	[MBFG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersMB_Ruoli]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersMB_Ruoli](
	[UsersId] [int] NOT NULL,
	[MBRO_ID] [int] NOT NULL,
 CONSTRAINT [PK_UsersMB_Ruoli] PRIMARY KEY CLUSTERED 
(
	[UsersId] ASC,
	[MBRO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191002151033_Inizio', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191002194523_Scuola', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191014150353_ModelUser', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191021145601_User-LastAccess', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191022095748_User-LastUpdatePwd', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191029145604_User-IsValid', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191114112133_FiguraAziendale', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191118204117_PuntoZero', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191118204600_PuntoZeroUno', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191120220620_ManyToMany', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191123113729_UserData', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200129141634_Application', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200129155700_Application1', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200205135629_Application2', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200209143838_Application3', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200224153104_MB_Menu', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200225192412_UsersMB_Ruoli', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200326132040_Eventi_Scheduler', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200331151647_ET_Categoria', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200409203032_MB_Menu_Revisione', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200413195127_Gestione_Posts', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200424094550_Allegato', N'2.2.6-servicing-10079')
SET IDENTITY_INSERT [dbo].[ED_Allegato] ON 

INSERT [dbo].[ED_Allegato] ([EDAL_ID], [EDAL_Annotazione], [EDAL_EDPS_ID], [EDAL_Guid], [EDAL_Syncro], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1, N'Allegato 1', 1, N'af679fa4-249f-477c-b175-6174de600719', 0, 1, CAST(N'2020-04-24T11:50:00.0000000' AS DateTime2), 1, CAST(N'2020-04-24T11:50:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ED_Allegato] OFF
SET IDENTITY_INSERT [dbo].[ED_AllegatoFile] ON 

INSERT [dbo].[ED_AllegatoFile] ([EDAF_ID], [EDAF_FileName], [EDAF_EDAL_ID], [EDAF_Guid], [EDAF_Syncro], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1, N'FileName1.PDF', 1, N'6581403d-ea63-460d-9733-40c17f0cf0d3', 0, 1, CAST(N'2020-04-24T11:50:00.0000000' AS DateTime2), 1, CAST(N'2020-04-24T11:50:00.0000000' AS DateTime2))
INSERT [dbo].[ED_AllegatoFile] ([EDAF_ID], [EDAF_FileName], [EDAF_EDAL_ID], [EDAF_Guid], [EDAF_Syncro], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (2, N'FileName2.docx', 1, N'76e85115-4551-45df-a18b-c17042ea12e6', 0, 1, CAST(N'2020-04-24T11:50:00.0000000' AS DateTime2), 1, CAST(N'2020-04-24T11:50:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ED_AllegatoFile] OFF
SET IDENTITY_INSERT [dbo].[ED_Categoria] ON 

INSERT [dbo].[ED_Categoria] ([EDCT_ID], [EDCT_Guid], [EDCT_Descrizione], [EDCT_Syncro], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1, N'facdc436-a539-4f67-974b-740ddaae064d', N'CV', 1, 1, CAST(N'2020-04-19T16:56:32.8136135' AS DateTime2), 1, CAST(N'2020-04-19T20:04:16.1643605' AS DateTime2))
INSERT [dbo].[ED_Categoria] ([EDCT_ID], [EDCT_Guid], [EDCT_Descrizione], [EDCT_Syncro], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (2, N'ed44245b-b588-4514-bb9e-27fe25817a2a', N'Angular', 1, 1, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[ED_Categoria] ([EDCT_ID], [EDCT_Guid], [EDCT_Descrizione], [EDCT_Syncro], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (3, N'81308f95-9c79-43e3-ab5d-6237ed1bccfd', NULL, 1, 1, CAST(N'2020-04-21T16:55:35.7242569' AS DateTime2), 1, CAST(N'2020-04-21T16:55:35.7242569' AS DateTime2))
INSERT [dbo].[ED_Categoria] ([EDCT_ID], [EDCT_Guid], [EDCT_Descrizione], [EDCT_Syncro], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (4, N'faec3a11-9d0b-4c03-a06f-3bf0a53fbb77', NULL, 1, 1, CAST(N'2020-04-21T16:56:10.0450120' AS DateTime2), 1, CAST(N'2020-04-21T16:56:10.0450120' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ED_Categoria] OFF
SET IDENTITY_INSERT [dbo].[ED_Post] ON 

INSERT [dbo].[ED_Post] ([EDPS_ID], [EDPS_EDCT_ID], [EDPS_Titolo], [EDPS_Autore], [EDPS_Articolo], [EDPS_Tags], [EDPS_DataPubblica], [EDPS_NrClick], [EDPS_Guid], [EDPS_Syncro], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1, 2, N'Primo articolo', N'Marco C.', N'<h1><strong>testo </strong>dell''articolo</h1>', N'#firstArticle', CAST(N'2020-04-20T22:00:00.0000000' AS DateTime2), 0, N'eed79e5b-c73c-4be6-8540-6be17f55dfdc', 1, 1, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-04-21T17:16:56.5330592' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ED_Post] OFF
SET IDENTITY_INSERT [dbo].[ET_Categoria] ON 

INSERT [dbo].[ET_Categoria] ([EC_Id], [EC_Description], [EC_Color], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1, N'Appuntamento', N'#FF0000', 1, CAST(N'2020-03-31T17:18:00.0000000' AS DateTime2), 1, CAST(N'2020-03-31T17:18:00.0000000' AS DateTime2))
INSERT [dbo].[ET_Categoria] ([EC_Id], [EC_Description], [EC_Color], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (2, N'SAL', N'#FFF0F0', 1, CAST(N'2020-03-31T17:18:00.0000000' AS DateTime2), 1, CAST(N'2020-03-31T17:18:00.0000000' AS DateTime2))
INSERT [dbo].[ET_Categoria] ([EC_Id], [EC_Description], [EC_Color], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (4, N'Attività', N'#48b9f2', 1, CAST(N'2020-03-31T17:47:00.0000000' AS DateTime2), 1, CAST(N'2020-03-31T17:47:00.0000000' AS DateTime2))
INSERT [dbo].[ET_Categoria] ([EC_Id], [EC_Description], [EC_Color], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (5, N'Riunione', N'#8ef293', 1, CAST(N'2020-03-31T17:54:00.0000000' AS DateTime2), 1, CAST(N'2020-03-31T17:54:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ET_Categoria] OFF
SET IDENTITY_INSERT [dbo].[ET_Evento] ON 

INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1, N'SAL 26.03.2020', N'Annotazioni varie 2', CAST(N'2020-02-25T09:00:00.0000000' AS DateTime2), CAST(N'2020-02-25T09:30:00.0000000' AS DateTime2), 0, NULL, N'#FF0000', NULL, 1, CAST(N'2020-03-26T15:38:44.7636138' AS DateTime2), 1, CAST(N'2020-03-31T17:46:06.9426457' AS DateTime2))
INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (2, N'Lorem Ipsum', N'Lorem Ipsum è un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum è considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assemblò per preparare un testo campione. È sopravvissuto non solo a più di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni ’60, con la diffusione dei fogli di caratteri trasferibili “Letraset”, che contenevano passaggi del Lorem Ipsum, e più recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.
213', CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-26T00:00:00.0000000' AS DateTime2), 1, NULL, N'#000000', NULL, 1, CAST(N'2020-03-26T15:52:39.5682656' AS DateTime2), 1, CAST(N'2020-03-31T17:04:29.4997281' AS DateTime2))
INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (3, N'Oggetto', N'Campo note', CAST(N'2020-02-25T13:15:00.0000000' AS DateTime2), CAST(N'2020-02-25T14:45:00.0000000' AS DateTime2), 0, NULL, N'#000000', NULL, 1, CAST(N'2020-03-26T15:53:21.4285185' AS DateTime2), 1, CAST(N'2020-03-31T14:47:41.4007589' AS DateTime2))
INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (4, N'Conference', NULL, CAST(N'2020-02-26T14:00:00.0000000' AS DateTime2), CAST(N'2020-02-26T15:00:00.0000000' AS DateTime2), 0, NULL, N'#ffff00', NULL, 1, CAST(N'2020-03-26T15:55:24.5753291' AS DateTime2), 1, CAST(N'2020-03-31T14:51:05.3967419' AS DateTime2))
INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (5, N'Hello World !', N'qwerty3210', CAST(N'2020-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-18T00:00:00.0000000' AS DateTime2), 1, NULL, N'#00ff6a', NULL, 1, CAST(N'2020-03-26T15:59:26.8480483' AS DateTime2), 1, CAST(N'2020-03-30T15:50:31.5077478' AS DateTime2))
INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1002, N'test', N'', CAST(N'2020-02-25T09:45:00.0000000' AS DateTime2), CAST(N'2020-02-25T10:45:00.0000000' AS DateTime2), 0, NULL, N'#48b9f2', NULL, 1, CAST(N'2020-03-30T18:14:25.3640917' AS DateTime2), 1, CAST(N'2020-03-31T17:47:55.6069095' AS DateTime2))
INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1003, N'Riunione con Pippo', NULL, CAST(N'2020-02-27T09:00:00.0000000' AS DateTime2), CAST(N'2020-02-27T09:30:00.0000000' AS DateTime2), 0, NULL, N'#8ef293', NULL, 1, CAST(N'2020-03-31T17:54:39.6886429' AS DateTime2), 1, CAST(N'2020-03-31T17:54:49.6372366' AS DateTime2))
INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1004, N'qwerty', N'', CAST(N'2020-02-27T09:45:00.0000000' AS DateTime2), CAST(N'2020-02-27T10:15:00.0000000' AS DateTime2), 0, NULL, N'#8ef293', NULL, 1, CAST(N'2020-03-31T17:57:03.8441573' AS DateTime2), 1, CAST(N'2020-03-31T17:57:03.8449991' AS DateTime2))
INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1005, N'123', N'', CAST(N'2020-02-27T10:30:00.0000000' AS DateTime2), CAST(N'2020-02-27T11:00:00.0000000' AS DateTime2), 0, NULL, NULL, NULL, 1, CAST(N'2020-03-31T17:58:10.6084821' AS DateTime2), 1, CAST(N'2020-03-31T17:58:10.6092207' AS DateTime2))
INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1006, N'456', NULL, CAST(N'2020-02-27T11:15:00.0000000' AS DateTime2), CAST(N'2020-02-27T11:45:00.0000000' AS DateTime2), 0, NULL, N'#8ef293', NULL, 1, CAST(N'2020-03-31T17:58:58.7710912' AS DateTime2), 1, CAST(N'2020-03-31T17:59:25.7836147' AS DateTime2))
INSERT [dbo].[ET_Evento] ([ET_Id], [ET_Title], [ET_Description], [ET_start], [ET_End], [ET_IsAllDay], [ET_Url], [ET_Color], [ET_Tag], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1007, N'ola', N'', CAST(N'2020-02-25T11:15:00.0000000' AS DateTime2), CAST(N'2020-02-25T11:45:00.0000000' AS DateTime2), 0, NULL, N'#FF0000', NULL, 1, CAST(N'2020-03-31T17:59:41.9122943' AS DateTime2), 1, CAST(N'2020-03-31T17:59:41.9130380' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ET_Evento] OFF
SET IDENTITY_INSERT [dbo].[GlyphiconLTE] ON 

INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (1, N'fa fa-adjust')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (2, N'fa fa-anchor')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (3, N'fa fa-archive')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (4, N'fa fa-area-chart')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (5, N'fa fa-arrows')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (6, N'fa fa-arrows-h')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (7, N'fa fa-arrows-v')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (8, N'fa fa-asterisk')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (9, N'fa fa-at')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (10, N'fa fa-automobile')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (11, N'fa fa-ban')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (12, N'fa fa-bank')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (13, N'fa fa-bar-chart')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (14, N'fa fa-bar-chart-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (15, N'fa fa-barcode')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (16, N'fa fa-bars')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (17, N'fa fa-bed')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (18, N'fa fa-beer')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (19, N'fa fa-bell')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (20, N'fa fa-bell-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (21, N'fa fa-bell-slash')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (22, N'fa fa-bell-slash-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (23, N'fa fa-bicycle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (24, N'fa fa-binoculars')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (25, N'fa fa-birthday-cake')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (26, N'fa fa-bolt')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (27, N'fa fa-bomb')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (28, N'fa fa-book')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (29, N'fa fa-bookmark')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (30, N'fa fa-bookmark-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (31, N'fa fa-briefcase')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (32, N'fa fa-bug')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (33, N'fa fa-building')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (34, N'fa fa-building-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (35, N'fa fa-bullhorn')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (36, N'fa fa-bullseye')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (37, N'fa fa-bus')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (38, N'fa fa-cab')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (39, N'fa fa-calculator')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (40, N'fa fa-calendar')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (41, N'fa fa-calendar-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (42, N'fa fa-camera')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (43, N'fa fa-camera-retro')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (44, N'fa fa-car')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (45, N'fa fa-caret-square-o-down')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (46, N'fa fa-caret-square-o-left')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (47, N'fa fa-caret-square-o-right')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (48, N'fa fa-caret-square-o-up')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (49, N'fa fa-cart-arrow-down')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (50, N'fa fa-cart-plus')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (51, N'fa fa-cc')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (52, N'fa fa-certificate')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (53, N'fa fa-check')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (54, N'fa fa-check-circle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (55, N'fa fa-check-circle-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (56, N'fa fa-check-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (57, N'fa fa-check-square-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (58, N'fa fa-child')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (59, N'fa fa-circle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (60, N'fa fa-circle-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (61, N'fa fa-circle-o-notch')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (62, N'fa fa-circle-thin')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (63, N'fa fa-clock-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (64, N'fa fa-close')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (65, N'fa fa-cloud')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (66, N'fa fa-cloud-download')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (67, N'fa fa-cloud-upload')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (68, N'fa fa-code')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (69, N'fa fa-code-fork')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (70, N'fa fa-coffee')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (71, N'fa fa-cog')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (72, N'fa fa-cogs')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (73, N'fa fa-comment')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (74, N'fa fa-comment-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (75, N'fa fa-comments')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (76, N'fa fa-comments-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (77, N'fa fa-compass')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (78, N'fa fa-copyright')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (79, N'fa fa-credit-card')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (80, N'fa fa-crop')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (81, N'fa fa-crosshairs')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (82, N'fa fa-cube')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (83, N'fa fa-cubes')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (84, N'fa fa-cutlery')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (85, N'fa fa-dashboard')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (86, N'fa fa-database')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (87, N'fa fa-desktop')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (88, N'fa fa-diamond')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (89, N'fa fa-dot-circle-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (90, N'fa fa-download')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (91, N'fa fa-edit')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (92, N'fa fa-ellipsis-h')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (93, N'fa fa-ellipsis-v')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (94, N'fa fa-envelope')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (95, N'fa fa-envelope-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (96, N'fa fa-envelope-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (97, N'fa fa-eraser')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (98, N'fa fa-exchange')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (99, N'fa fa-exclamation')
GO
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (100, N'fa fa-exclamation-circle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (101, N'fa fa-exclamation-triangle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (102, N'fa fa-external-link')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (103, N'fa fa-external-link-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (104, N'fa fa-eye')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (105, N'fa fa-eye-slash')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (106, N'fa fa-eyedropper')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (107, N'fa fa-fax')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (108, N'fa fa-female')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (109, N'fa fa-fighter-jet')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (110, N'fa fa-file-archive-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (111, N'fa fa-file-audio-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (112, N'fa fa-file-code-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (113, N'fa fa-file-excel-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (114, N'fa fa-file-image-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (115, N'fa fa-file-movie-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (116, N'fa fa-file-pdf-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (117, N'fa fa-file-photo-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (118, N'fa fa-file-picture-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (119, N'fa fa-file-powerpoint-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (120, N'fa fa-file-sound-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (121, N'fa fa-file-video-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (122, N'fa fa-file-word-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (123, N'fa fa-file-zip-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (124, N'fa fa-film')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (125, N'fa fa-filter')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (126, N'fa fa-fire')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (127, N'fa fa-fire-extinguisher')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (128, N'fa fa-flag')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (129, N'fa fa-flag-checkered')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (130, N'fa fa-flag-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (131, N'fa fa-flash')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (132, N'fa fa-flask')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (133, N'fa fa-folder')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (134, N'fa fa-folder-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (135, N'fa fa-folder-open')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (136, N'fa fa-folder-open-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (137, N'fa fa-frown-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (138, N'fa fa-futbol-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (139, N'fa fa-gamepad')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (140, N'fa fa-gavel')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (141, N'fa fa-gear')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (142, N'fa fa-gears')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (143, N'fa fa-genderless')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (144, N'fa fa-gift')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (145, N'fa fa-glass')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (146, N'fa fa-globe')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (147, N'fa fa-graduation-cap')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (148, N'fa fa-group')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (149, N'fa fa-hdd-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (150, N'fa fa-headphones')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (151, N'fa fa-heart')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (152, N'fa fa-heart-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (153, N'fa fa-heartbeat')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (154, N'fa fa-history')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (155, N'fa fa-home')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (156, N'fa fa-hotel')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (157, N'fa fa-image')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (158, N'fa fa-inbox')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (159, N'fa fa-info')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (160, N'fa fa-info-circle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (161, N'fa fa-institution')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (162, N'fa fa-key')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (163, N'fa fa-keyboard-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (164, N'fa fa-language')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (165, N'fa fa-laptop')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (166, N'fa fa-leaf')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (167, N'fa fa-legal')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (168, N'fa fa-lemon-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (169, N'fa fa-level-down')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (170, N'fa fa-level-up')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (171, N'fa fa-life-bouy')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (172, N'fa fa-life-buoy')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (173, N'fa fa-life-ring')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (174, N'fa fa-life-saver')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (175, N'fa fa-lightbulb-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (176, N'fa fa-line-chart')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (177, N'fa fa-location-arrow')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (178, N'fa fa-lock')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (179, N'fa fa-magic')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (180, N'fa fa-magnet')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (181, N'fa fa-mail-forward')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (182, N'fa fa-mail-reply')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (183, N'fa fa-mail-reply-all')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (184, N'fa fa-male')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (185, N'fa fa-map-marker')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (186, N'fa fa-meh-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (187, N'fa fa-microphone')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (188, N'fa fa-microphone-slash')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (189, N'fa fa-minus')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (190, N'fa fa-minus-circle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (191, N'fa fa-minus-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (192, N'fa fa-minus-square-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (193, N'fa fa-mobile')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (194, N'fa fa-mobile-phone')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (195, N'fa fa-money')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (196, N'fa fa-moon-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (197, N'fa fa-mortar-board')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (198, N'fa fa-motorcycle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (199, N'fa fa-music')
GO
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (200, N'fa fa-navicon')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (201, N'fa fa-newspaper-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (202, N'fa fa-paint-brush')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (203, N'fa fa-paper-plane')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (204, N'fa fa-paper-plane-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (205, N'fa fa-paw')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (206, N'fa fa-pencil')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (207, N'fa fa-pencil-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (208, N'fa fa-pencil-square-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (209, N'fa fa-phone')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (210, N'fa fa-phone-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (211, N'fa fa-photo')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (212, N'fa fa-picture-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (213, N'fa fa-pie-chart')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (214, N'fa fa-plane')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (215, N'fa fa-plug')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (216, N'fa fa-plus')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (217, N'fa fa-plus-circle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (218, N'fa fa-plus-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (219, N'fa fa-plus-square-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (220, N'fa fa-power-off')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (221, N'fa fa-print')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (222, N'fa fa-puzzle-piece')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (223, N'fa fa-qrcode')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (224, N'fa fa-question')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (225, N'fa fa-question-circle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (226, N'fa fa-quote-left')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (227, N'fa fa-quote-right')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (228, N'fa fa-random')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (229, N'fa fa-recycle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (230, N'fa fa-refresh')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (231, N'fa fa-remove')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (232, N'fa fa-reorder')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (233, N'fa fa-reply')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (234, N'fa fa-reply-all')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (235, N'fa fa-retweet')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (236, N'fa fa-road')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (237, N'fa fa-rocket')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (238, N'fa fa-rss')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (239, N'fa fa-rss-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (240, N'fa fa-search')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (241, N'fa fa-search-minus')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (242, N'fa fa-search-plus')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (243, N'fa fa-send')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (244, N'fa fa-send-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (245, N'fa fa-server')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (246, N'fa fa-share')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (247, N'fa fa-share-alt')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (248, N'fa fa-share-alt-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (249, N'fa fa-share-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (250, N'fa fa-share-square-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (251, N'fa fa-shield')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (252, N'fa fa-ship')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (253, N'fa fa-shopping-cart')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (254, N'fa fa-sign-in')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (255, N'fa fa-sign-out')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (256, N'fa fa-signal')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (257, N'fa fa-sitemap')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (258, N'fa fa-sliders')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (259, N'fa fa-smile-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (260, N'fa fa-soccer-ball-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (261, N'fa fa-sort')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (262, N'fa fa-sort-alpha-asc')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (263, N'fa fa-sort-alpha-desc')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (264, N'fa fa-sort-amount-asc')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (265, N'fa fa-sort-amount-desc')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (266, N'fa fa-sort-asc')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (267, N'fa fa-sort-desc')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (268, N'fa fa-sort-down')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (269, N'fa fa-sort-numeric-asc')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (270, N'fa fa-sort-numeric-desc')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (271, N'fa fa-sort-up')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (272, N'fa fa-space-shuttle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (273, N'fa fa-spinner')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (274, N'fa fa-spoon')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (275, N'fa fa-square')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (276, N'fa fa-square-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (277, N'fa fa-star')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (278, N'fa fa-star-half')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (279, N'fa fa-star-half-empty')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (280, N'fa fa-star-half-full')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (281, N'fa fa-star-half-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (282, N'fa fa-star-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (283, N'fa fa-street-view')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (284, N'fa fa-suitcase')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (285, N'fa fa-sun-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (286, N'fa fa-support')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (287, N'fa fa-tablet')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (288, N'fa fa-tachometer')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (289, N'fa fa-tag')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (290, N'fa fa-tags')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (291, N'fa fa-tasks')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (292, N'fa fa-taxi')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (293, N'fa fa-terminal')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (294, N'fa fa-thumb-tack')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (295, N'fa fa-thumbs-down')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (296, N'fa fa-thumbs-o-down')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (297, N'fa fa-thumbs-o-up')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (298, N'fa fa-thumbs-up')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (299, N'fa fa-ticket')
GO
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (300, N'fa fa-times')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (301, N'fa fa-times-circle')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (302, N'fa fa-times-circle-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (303, N'fa fa-tint')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (304, N'fa fa-toggle-down')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (305, N'fa fa-toggle-left')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (306, N'fa fa-toggle-off')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (307, N'fa fa-toggle-on')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (308, N'fa fa-toggle-right')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (309, N'fa fa-toggle-up')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (310, N'fa fa-trash')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (311, N'fa fa-trash-o')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (312, N'fa fa-tree')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (313, N'fa fa-trophy')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (314, N'fa fa-truck')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (315, N'fa fa-tty')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (316, N'fa fa-umbrella')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (317, N'fa fa-university')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (318, N'fa fa-unlock')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (319, N'fa fa-unlock-alt')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (320, N'fa fa-unsorted')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (321, N'fa fa-upload')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (322, N'fa fa-user')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (323, N'fa fa-user-plus')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (324, N'fa fa-user-secret')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (325, N'fa fa-user-times')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (326, N'fa fa-users')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (327, N'fa fa-video-camera')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (328, N'fa fa-volume-down')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (329, N'fa fa-volume-off')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (330, N'fa fa-volume-up')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (331, N'fa fa-warning')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (332, N'fa fa-wheelchair')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (333, N'fa fa-wifi')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (334, N'fa fa-wrench')
INSERT [dbo].[GlyphiconLTE] ([IconLTE_ID], [IconLTE_Value]) VALUES (335, N'fa fa-balance-scale')
SET IDENTITY_INSERT [dbo].[GlyphiconLTE] OFF
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1, CAST(N'2019-10-02T14:45:38.923' AS DateTime), N'11', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcocecchetti', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (2, CAST(N'2019-10-09T09:25:59.330' AS DateTime), N'1', N'FATAL', N'Microsoft.AspNetCore.Hosting.Internal.WebHost', N'Application startup exception', N'System.Data.SqlClient.SqlException (0x80131904): A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible. Verify that the instance name is correct and that SQL Server is configured to allow remote connections. (provider: Named Pipes Provider, error: 40 - Could not open a connection to SQL Server) ---> System.ComponentModel.Win32Exception (2): Impossibile trovare il file specificato
   at System.Data.SqlClient.SqlInternalConnectionTds..ctor(DbConnectionPoolIdentity identity, SqlConnectionString connectionOptions, SqlCredential credential, Object providerInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString userConnectionOptions, SessionData reconnectSessionData, Boolean applyTransientFaultHandling, String accessToken)
   at System.Data.SqlClient.SqlConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionFactory.CreatePooledConnection(DbConnectionPool pool, DbConnection owningObject, DbConnectionOptions options, DbConnectionPoolKey poolKey, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, UInt32 waitForMultipleObjectsTimeout, Boolean allowCreate, Boolean onlyOneCheckConnection, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, T')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3, CAST(N'2020-02-04T09:36:34.220' AS DateTime), N'23', N'ERROR', N'Microsoft.EntityFrameworkCore.Database.Command', N'Failed executing DbCommand (25ms) [Parameters=[], CommandType=''Text'', CommandTimeout=''30'']
SELECT COUNT(*)
FROM [MB_Ruoli] AS [c]', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''MB_Ruoli''.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.Execute(IRelationalConnection connection, DbCommandMethod executeMethod, IReadOnlyDictionary`2 parameterValues)
ClientConnectionId:b101e0c9-e7b1-4bc6-a728-5761ae153ef1
Error Number:208,State:1,Class:16')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (6, CAST(N'2020-02-05T12:56:56.027' AS DateTime), N'13', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (7, CAST(N'2020-02-05T12:56:56.203' AS DateTime), N'13', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (8, CAST(N'2020-02-05T13:01:14.537' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (9, CAST(N'2020-02-05T13:01:14.687' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (10, CAST(N'2020-02-05T14:51:52.343' AS DateTime), N'21', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (11, CAST(N'2020-02-05T14:51:52.517' AS DateTime), N'21', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (12, CAST(N'2020-02-05T14:57:31.180' AS DateTime), N'12', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco#marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (13, CAST(N'2020-02-05T14:57:35.970' AS DateTime), N'12', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (14, CAST(N'2020-02-05T14:57:48.120' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (15, CAST(N'2020-02-05T14:57:48.240' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (16, CAST(N'2020-02-05T15:01:49.137' AS DateTime), N'17', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (17, CAST(N'2020-02-05T15:01:49.327' AS DateTime), N'17', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (4, CAST(N'2020-02-04T09:36:34.283' AS DateTime), N'23', N'ERROR', N'Microsoft.EntityFrameworkCore.Query', N'An exception occurred while iterating over the results of a query for context type ''CoreWebApi.Models.CeccoLabContext''.
System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''MB_Ruoli''.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.Execute(IRelationalConnection connection, DbCommandMethod executeMethod, IReadOnlyDictionary`2 parameterValues)
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.ExecuteReader(IRelationalConnection connection, IReadOnlyDictionary`2 parameterValues)
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryingEnumerable`1.Enumerator.BufferlessMoveNext(DbContext _, Boolean buffer)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.Execute[TState,TResult](TState state, Func`3 operation, Func`3 verifySucceeded)
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryingEnumerable`1.Enumerator.MoveNext()
   at Microsoft.EntityFrameworkCore.Query.QueryMethodProvider.GetResult[TResult](IEnumerable`1 valueBuffers, Boolean throwOnNullResult)
   at Microsoft.EntityFrameworkCore.Query.Internal.LinqOperatorProvider.ResultEnumerable`1.GetEnumerator()
   at Microsoft.EntityFrameworkCore.Query.Internal.LinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext()
ClientConnectionId:b101e0c9-e7b1-4bc6-a728-5761ae153ef1
Error Number:208,State:1,Class:16', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''MB_Ruoli''.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.Execute(IRelationalConnection connection, DbCommandMethod executeMethod, IReadOnlyDictionary`2 parameterValues)
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.ExecuteReader(IRelationalConnection connection, IReadOnlyDictionary`2 parameterValues)
   at Microsoft.EntityFrameworkCore')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (18, CAST(N'2020-02-05T15:15:17.043' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (19, CAST(N'2020-02-05T15:15:17.213' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (20, CAST(N'2020-02-05T15:33:57.100' AS DateTime), N'22', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (21, CAST(N'2020-02-05T15:33:57.267' AS DateTime), N'22', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (22, CAST(N'2020-02-06T15:52:40.583' AS DateTime), N'6', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcocecchetti', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (23, CAST(N'2020-02-06T15:52:46.700' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (24, CAST(N'2020-02-12T22:25:43.730' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'No property or field ''mbfU_Description'' exists in type ''jMB_Funzione'' (at index 3)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (25, CAST(N'2020-02-12T22:26:29.247' AS DateTime), N'7', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'No property or field ''mbfU_Description'' exists in type ''jMB_Funzione'' (at index 3)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (27, CAST(N'2020-02-12T22:42:33.433' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (28, CAST(N'2020-02-18T20:51:09.187' AS DateTime), N'6', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (26, CAST(N'2020-02-12T22:42:33.147' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (5, CAST(N'2020-02-04T09:36:34.293' AS DateTime), N'23', N'ERROR', N'Microsoft.EntityFrameworkCore.Query', N'An exception occurred while iterating over the results of a query for context type ''CoreWebApi.Models.CeccoLabContext''.
System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''MB_Ruoli''.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.Execute(IRelationalConnection connection, DbCommandMethod executeMethod, IReadOnlyDictionary`2 parameterValues)
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.ExecuteReader(IRelationalConnection connection, IReadOnlyDictionary`2 parameterValues)
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryingEnumerable`1.Enumerator.BufferlessMoveNext(DbContext _, Boolean buffer)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.Execute[TState,TResult](TState state, Func`3 operation, Func`3 verifySucceeded)
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryingEnumerable`1.Enumerator.MoveNext()
   at Microsoft.EntityFrameworkCore.Query.QueryMethodProvider.GetResult[TResult](IEnumerable`1 valueBuffers, Boolean throwOnNullResult)
   at Microsoft.EntityFrameworkCore.Query.Internal.LinqOperatorProvider.ResultEnumerable`1.GetEnumerator()
   at Microsoft.EntityFrameworkCore.Query.Internal.LinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext()
   at System.Linq.Enumerable.TryGetFirst[TSource](IEnumerable`1 source, Boolean& found)
   at System.Linq.Enumerable.First[TSource](IEnumerable`1 source)
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryCompiler.<>c__DisplayClass15_1`1.<CompileQueryCore>b__0(QueryContext qc)
ClientConnectionId:b101e0c9-e7b1-4bc6-a728-5761ae153ef1
Error Number:208,State:1,Class:16', N'System.Data.SqlClient.SqlException (0x80131904): Invalid object name ''MB_Ruoli''.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.Execute(IRelationalConnection connection, DbCommandMethod executeMethod, IReadOnlyDictionary`2 parameterValues)
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.ExecuteReader(IRelationalConnection connection, IReadOnlyDictionary`2 parameterValues)
   at Microsoft.EntityFrameworkCore')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (29, CAST(N'2020-02-18T20:51:14.540' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (30, CAST(N'2020-02-18T23:36:14.237' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (31, CAST(N'2020-02-18T23:36:14.470' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (32, CAST(N'2020-02-19T11:58:29.853' AS DateTime), N'6', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (33, CAST(N'2020-02-19T11:58:32.870' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (34, CAST(N'2020-02-24T16:07:54.007' AS DateTime), N'12', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcoceccheti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (35, CAST(N'2020-02-24T16:07:58.797' AS DateTime), N'12', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (43, CAST(N'2020-03-03T10:10:14.900' AS DateTime), N'9', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (44, CAST(N'2020-03-03T10:10:15.057' AS DateTime), N'9', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (45, CAST(N'2020-03-04T09:16:35.577' AS DateTime), N'45', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (36, CAST(N'2020-02-25T16:54:01.753' AS DateTime), N'7', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at CoreWebApi.Repository.Token.TokenRepository.GenerateToken(jTokenUser TokenUser) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\Token\TokenRepository.cs:line 52
   at CoreWebApi.Repository.Administrator.UserRepository.Login(String UserName, String Password) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\Administrator\UserRepository.cs:line 85
   at CoreWebApi.Controllers.TokenController.Create(LoginInputModel inputModel) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\TokenController.cs:line 32
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.E')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (41, CAST(N'2020-03-03T08:58:10.303' AS DateTime), N'27', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (42, CAST(N'2020-03-03T08:58:10.470' AS DateTime), N'27', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (46, CAST(N'2020-03-04T09:16:41.610' AS DateTime), N'45', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (47, CAST(N'2020-03-04T09:17:24.463' AS DateTime), N'44', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (48, CAST(N'2020-03-04T09:17:24.483' AS DateTime), N'44', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (49, CAST(N'2020-03-09T09:00:54.147' AS DateTime), N'13', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente diego@marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (50, CAST(N'2020-03-09T09:01:19.273' AS DateTime), N'13', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (51, CAST(N'2020-03-09T09:01:27.200' AS DateTime), N'24', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente diego@marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (52, CAST(N'2020-03-09T09:01:30.563' AS DateTime), N'24', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (54, CAST(N'2020-03-09T09:30:23.453' AS DateTime), N'13', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcocecchetti', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (55, CAST(N'2020-03-09T09:30:26.143' AS DateTime), N'13', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (58, CAST(N'2020-03-11T14:41:32.630' AS DateTime), N'52', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (59, CAST(N'2020-03-11T14:41:36.523' AS DateTime), N'52', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (60, CAST(N'2020-03-11T14:43:53.920' AS DateTime), N'59', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (61, CAST(N'2020-03-11T14:43:53.940' AS DateTime), N'59', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (78, CAST(N'2020-03-16T15:56:29.983' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: field,Description Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Ava.png''.
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (110, CAST(N'2020-03-26T10:43:05.760' AS DateTime), N'10', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marcoc@marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (114, CAST(N'2020-03-30T12:19:36.193' AS DateTime), N'9', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'Identifier expected (at index 3)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1118, CAST(N'2020-04-07T21:58:18.483' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (56, CAST(N'2020-03-11T12:46:21.700' AS DateTime), N'25', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (57, CAST(N'2020-03-11T12:46:22.043' AS DateTime), N'25', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (86, CAST(N'2020-03-17T16:36:31.343' AS DateTime), N'63', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@mmarcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (87, CAST(N'2020-03-17T16:36:34.153' AS DateTime), N'63', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (37, CAST(N'2020-02-28T15:12:52.740' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotSupportedException: HTTP method "POST" & path "api/Token" overloaded by actions - CoreWebApi.Controllers.TokenController.Create (CoreWebApi),CoreWebApi.Controllers.TokenController.Refresh (CoreWebApi). Actions require unique method/path combination for Swagger 2.0. Use ConflictingActionsResolver as a workaround
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItem(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at System.Linq.Enumerable.ToDictionary[TSource,TKey,TElement](IEnumerable`1 source, Func`2 keySelector, Func`2 elementSelector, IEqualityComparer`1 comparer)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItems(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.GetSwagger(String documentName, String host, String basePath, String[] schemes)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (38, CAST(N'2020-02-28T15:13:46.567' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotSupportedException: HTTP method "POST" & path "api/Token" overloaded by actions - CoreWebApi.Controllers.TokenController.Create (CoreWebApi),CoreWebApi.Controllers.TokenController.Refresh (CoreWebApi). Actions require unique method/path combination for Swagger 2.0. Use ConflictingActionsResolver as a workaround
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItem(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at System.Linq.Enumerable.ToDictionary[TSource,TKey,TElement](IEnumerable`1 source, Func`2 keySelector, Func`2 elementSelector, IEqualityComparer`1 comparer)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItems(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.GetSwagger(String documentName, String host, String basePath, String[] schemes)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (39, CAST(N'2020-02-28T15:14:04.843' AS DateTime), N'13', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotSupportedException: HTTP method "POST" & path "api/Token" overloaded by actions - CoreWebApi.Controllers.TokenController.Create (CoreWebApi),CoreWebApi.Controllers.TokenController.Refresh (CoreWebApi). Actions require unique method/path combination for Swagger 2.0. Use ConflictingActionsResolver as a workaround
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItem(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at System.Linq.Enumerable.ToDictionary[TSource,TKey,TElement](IEnumerable`1 source, Func`2 keySelector, Func`2 elementSelector, IEqualityComparer`1 comparer)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItems(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.GetSwagger(String documentName, String host, String basePath, String[] schemes)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (40, CAST(N'2020-02-28T15:36:37.940' AS DateTime), N'9', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotSupportedException: Ambiguous HTTP method for action - CoreWebApi.Controllers.TokenController.GenerateRefreshToken (CoreWebApi). Actions require an explicit HttpMethod binding for Swagger 2.0
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItem(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at System.Linq.Enumerable.ToDictionary[TSource,TKey,TElement](IEnumerable`1 source, Func`2 keySelector, Func`2 elementSelector, IEqualityComparer`1 comparer)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItems(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.GetSwagger(String documentName, String host, String basePath, String[] schemes)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1123, CAST(N'2020-04-08T09:37:49.153' AS DateTime), N'17', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1130, CAST(N'2020-04-08T10:28:11.310' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (2161, CAST(N'2020-04-25T17:24:57.417' AS DateTime), N'16', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3162, CAST(N'2020-05-01T15:40:07.913' AS DateTime), N'11', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (53, CAST(N'2020-03-09T09:06:34.920' AS DateTime), N'14', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at CoreWebApi.Model.Token.TokenBankManager.RemoveValueFromRefreshToken(List`1 lstRefreshToken) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Model\Token\TokenBankManager.cs:line 70
   at CoreWebApi.Controllers.TokenController.Remove_PendingSessionByRefreshToken(List`1 RefreshToken) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\TokenController.cs:line 122
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetC')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (62, CAST(N'2020-03-14T15:52:21.527' AS DateTime), N'85', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar.png''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar.png''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 26
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsof')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (2166, CAST(N'2020-04-27T00:00:07.830' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotSupportedException: Ambiguous HTTP method for action - CoreWebApi.Controllers.BaseApiController.GetCurrentLang (CoreWebApi). Actions require an explicit HttpMethod binding for Swagger 2.0
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItem(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at System.Linq.Enumerable.ToDictionary[TSource,TKey,TElement](IEnumerable`1 source, Func`2 keySelector, Func`2 elementSelector, IEqualityComparer`1 comparer)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItems(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.GetSwagger(String documentName, String host, String basePath, String[] schemes)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (63, CAST(N'2020-03-14T15:52:58.173' AS DateTime), N'83', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar.png''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar.png''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 26
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsof')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (64, CAST(N'2020-03-14T16:42:15.160' AS DateTime), N'84', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\myFile''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\myFile''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNet')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (2163, CAST(N'2020-04-26T23:48:36.487' AS DateTime), N'9', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (2164, CAST(N'2020-04-26T23:57:32.963' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotSupportedException: Ambiguous HTTP method for action - CoreWebApi.Controllers.BaseApiController.GetCurrentLang (CoreWebApi). Actions require an explicit HttpMethod binding for Swagger 2.0
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItem(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at System.Linq.Enumerable.ToDictionary[TSource,TKey,TElement](IEnumerable`1 source, Func`2 keySelector, Func`2 elementSelector, IEqualityComparer`1 comparer)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItems(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.GetSwagger(String documentName, String host, String basePath, String[] schemes)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (2165, CAST(N'2020-04-26T23:58:08.373' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotSupportedException: Ambiguous HTTP method for action - CoreWebApi.Controllers.BaseApiController.GetCurrentLang (CoreWebApi). Actions require an explicit HttpMethod binding for Swagger 2.0
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItem(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at System.Linq.Enumerable.ToDictionary[TSource,TKey,TElement](IEnumerable`1 source, Func`2 keySelector, Func`2 elementSelector, IEqualityComparer`1 comparer)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItems(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.GetSwagger(String documentName, String host, String basePath, String[] schemes)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (65, CAST(N'2020-03-14T16:42:41.700' AS DateTime), N'84', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\myFile''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\myFile''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNet')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (66, CAST(N'2020-03-14T16:57:15.307' AS DateTime), N'65', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (67, CAST(N'2020-03-14T17:00:40.603' AS DateTime), N'51', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (68, CAST(N'2020-03-14T17:00:43.033' AS DateTime), N'47', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (79, CAST(N'2020-03-17T09:54:59.720' AS DateTime), N'12', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: field,Description Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\A.docx''.
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1134, CAST(N'2020-04-08T14:56:32.113' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (111, CAST(N'2020-03-26T10:43:09.297' AS DateTime), N'10', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (112, CAST(N'2020-03-26T10:43:15.543' AS DateTime), N'22', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (113, CAST(N'2020-03-26T10:43:17.087' AS DateTime), N'22', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1119, CAST(N'2020-04-07T22:22:47.730' AS DateTime), N'14', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1144, CAST(N'2020-04-09T16:27:34.807' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1146, CAST(N'2020-04-09T16:52:40.513' AS DateTime), N'23', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1151, CAST(N'2020-04-09T22:52:25.960' AS DateTime), N'12', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1152, CAST(N'2020-04-09T22:58:09.763' AS DateTime), N'46', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1153, CAST(N'2020-04-09T22:58:13.573' AS DateTime), N'46', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1121, CAST(N'2020-04-08T09:37:40.813' AS DateTime), N'17', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1122, CAST(N'2020-04-08T09:37:44.690' AS DateTime), N'17', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (69, CAST(N'2020-03-14T17:00:43.733' AS DateTime), N'46', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (70, CAST(N'2020-03-14T17:00:44.430' AS DateTime), N'45', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (71, CAST(N'2020-03-14T17:00:45.610' AS DateTime), N'49', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\undefined''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (80, CAST(N'2020-03-17T14:54:36.670' AS DateTime), N'14', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'<log4net.Error>Exception rendering object type [System.TypeInitializationException]<stackTrace>System.TypeLoadException: Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.
   at System.ModuleHandle.ResolveType(RuntimeModule module, Int32 typeToken, IntPtr* typeInstArgs, Int32 typeInstCount, IntPtr* methodInstArgs, Int32 methodInstCount, ObjectHandleOnStack type)
   at System.ModuleHandle.ResolveTypeHandleInternal(RuntimeModule module, Int32 typeToken, RuntimeTypeHandle[] typeInstantiationContext, RuntimeTypeHandle[] methodInstantiationContext)
   at System.Reflection.RuntimeModule.ResolveType(Int32 metadataToken, Type[] genericTypeArguments, Type[] genericMethodArguments)
   at System.Reflection.CustomAttribute.FilterCustomAttributeRecord(CustomAttributeRecord caRecord, MetadataImport scope, Assembly& lastAptcaOkAssembly, RuntimeModule decoratedModule, MetadataToken decoratedToken, RuntimeType attributeFilterType, Boolean mustBeInheritable, Object[] attributes, IList derivedAttributes, RuntimeType& attributeType, IRuntimeMethodInfo& ctor, Boolean& ctorHasParameters, Boolean& isVarArg)
   at System.Reflection.CustomAttribute.IsCustomAttributeDefined(RuntimeModule decoratedModule, Int32 decoratedMetadataToken, RuntimeType attributeFilterType, Int32 attributeCtorToken, Boolean mustBeInheritable)
   at System.Reflection.CustomAttribute.IsDefined(RuntimeType type, RuntimeType caType, Boolean inherit)
   at System.Diagnostics.StackTrace.ShowInStackTrace(MethodBase mb)
   at System.Diagnostics.StackTrace.ToString(TraceFormat traceFormat)
   at System.Exception.GetStackTrace(Boolean needFileInfo)
   at System.Exception.ToString(Boolean needFileLineInfo, Boolean needMessage)
   at System.Exception.ToString(Boolean needFileLineInfo, Boolean needMessage)
   at log4net.ObjectRenderer.DefaultRenderer.RenderObject(RendererMap rendererMap, Object obj, TextWriter write')
GO
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (72, CAST(N'2020-03-16T10:56:20.827' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'<log4net.Error>Exception rendering object type [System.IO.FileNotFoundException]<stackTrace>System.TypeLoadException: Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.
   at System.ModuleHandle.ResolveType(RuntimeModule module, Int32 typeToken, IntPtr* typeInstArgs, Int32 typeInstCount, IntPtr* methodInstArgs, Int32 methodInstCount, ObjectHandleOnStack type)
   at System.ModuleHandle.ResolveTypeHandleInternal(RuntimeModule module, Int32 typeToken, RuntimeTypeHandle[] typeInstantiationContext, RuntimeTypeHandle[] methodInstantiationContext)
   at System.Reflection.RuntimeModule.ResolveType(Int32 metadataToken, Type[] genericTypeArguments, Type[] genericMethodArguments)
   at System.Reflection.CustomAttribute.FilterCustomAttributeRecord(CustomAttributeRecord caRecord, MetadataImport scope, Assembly& lastAptcaOkAssembly, RuntimeModule decoratedModule, MetadataToken decoratedToken, RuntimeType attributeFilterType, Boolean mustBeInheritable, Object[] attributes, IList derivedAttributes, RuntimeType& attributeType, IRuntimeMethodInfo& ctor, Boolean& ctorHasParameters, Boolean& isVarArg)
   at System.Reflection.CustomAttribute.IsCustomAttributeDefined(RuntimeModule decoratedModule, Int32 decoratedMetadataToken, RuntimeType attributeFilterType, Int32 attributeCtorToken, Boolean mustBeInheritable)
   at System.Reflection.CustomAttribute.IsDefined(RuntimeType type, RuntimeType caType, Boolean inherit)
   at System.Diagnostics.StackTrace.ShowInStackTrace(MethodBase mb)
   at System.Diagnostics.StackTrace.ToString(TraceFormat traceFormat)
   at System.Exception.GetStackTrace(Boolean needFileInfo)
   at System.IO.FileNotFoundException.ToString()
   at log4net.ObjectRenderer.DefaultRenderer.RenderObject(RendererMap rendererMap, Object obj, TextWriter writer)
   at log4net.ObjectRenderer.RendererMap.FindAndRender(Object obj, TextWriter writer)</stackTrace></log4net.E')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (73, CAST(N'2020-03-16T10:56:20.980' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Server.IIS.Core.IISHttpServer', N'Connection ID "17942340938529505313", Request ID "80000024-0005-f900-b63f-84710c7967bb": An unhandled exception was thrown by the application.', N'System.AggregateException: An error occurred while writing to logger(s). (Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.) (Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.) ---> System.TypeLoadException: Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.
   at System.ModuleHandle.ResolveType(RuntimeModule module, Int32 typeToken, IntPtr* typeInstArgs, Int32 typeInstCount, IntPtr* methodInstArgs, Int32 methodInstCount, ObjectHandleOnStack type)
   at System.ModuleHandle.ResolveTypeHandleInternal(RuntimeModule module, Int32 typeToken, RuntimeTypeHandle[] typeInstantiationContext, RuntimeTypeHandle[] methodInstantiationContext)
   at System.Reflection.RuntimeModule.ResolveType(Int32 metadataToken, Type[] genericTypeArguments, Type[] genericMethodArguments)
   at System.Reflection.CustomAttribute.FilterCustomAttributeRecord(CustomAttributeRecord caRecord, MetadataImport scope, Assembly& lastAptcaOkAssembly, RuntimeModule decoratedModule, MetadataToken decoratedToken, RuntimeType attributeFilterType, Boolean mustBeInheritable, Object[] attributes, IList derivedAttributes, RuntimeType& attributeType, IRuntimeMethodInfo& ctor, Boolean& ctorHasParameters, Boolean& isVarArg)
   at System.Reflection.CustomAttribute.IsCustomAttributeDefined(RuntimeModule decoratedModule, Int32 decoratedMetadataToken, RuntimeType attributeFilterType, Int32 attributeCtorToken, Boolean mustBeInheritable)
   at System.Reflection.CustomAttribute.IsDefined(RuntimeType type, RuntimeType caType, Boolean inherit)
   at System.Diagnostics.StackTrace.ShowInStackTrace(MethodBase mb)
   at System.Diagnostics.StackTrace.ToString(TraceFormat traceFormat)
   at System.Exception.GetStackTrace')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (74, CAST(N'2020-03-16T15:46:35.147' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar1.png''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar1.png''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Micros')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (75, CAST(N'2020-03-16T15:46:44.847' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar.png''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar.png''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsof')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (76, CAST(N'2020-03-16T15:46:45.767' AS DateTime), N'7', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar.png''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar.png''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsof')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (77, CAST(N'2020-03-16T15:47:30.093' AS DateTime), N'10', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.IO.FileNotFoundException: Could not find file ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar.png''.
File name: ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\IOFile\Download\Avatar.png''
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode)
   at CoreWebApi.Controllers.FileController.Download(String filename) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\FileController.cs:line 27
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at System.Threading.Tasks.ValueTask`1.get_Result()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsof')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (81, CAST(N'2020-03-17T14:54:36.740' AS DateTime), N'14', N'ERROR', N'Microsoft.AspNetCore.Server.IIS.Core.IISHttpServer', N'Connection ID "17654110558082826407", Request ID "800000aa-0004-f500-b63f-84710c7967bb": An unhandled exception was thrown by the application.', N'System.AggregateException: An error occurred while writing to logger(s). (Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.) (Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.) ---> System.TypeLoadException: Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.
   at System.ModuleHandle.ResolveType(RuntimeModule module, Int32 typeToken, IntPtr* typeInstArgs, Int32 typeInstCount, IntPtr* methodInstArgs, Int32 methodInstCount, ObjectHandleOnStack type)
   at System.ModuleHandle.ResolveTypeHandleInternal(RuntimeModule module, Int32 typeToken, RuntimeTypeHandle[] typeInstantiationContext, RuntimeTypeHandle[] methodInstantiationContext)
   at System.Reflection.RuntimeModule.ResolveType(Int32 metadataToken, Type[] genericTypeArguments, Type[] genericMethodArguments)
   at System.Reflection.CustomAttribute.FilterCustomAttributeRecord(CustomAttributeRecord caRecord, MetadataImport scope, Assembly& lastAptcaOkAssembly, RuntimeModule decoratedModule, MetadataToken decoratedToken, RuntimeType attributeFilterType, Boolean mustBeInheritable, Object[] attributes, IList derivedAttributes, RuntimeType& attributeType, IRuntimeMethodInfo& ctor, Boolean& ctorHasParameters, Boolean& isVarArg)
   at System.Reflection.CustomAttribute.IsCustomAttributeDefined(RuntimeModule decoratedModule, Int32 decoratedMetadataToken, RuntimeType attributeFilterType, Int32 attributeCtorToken, Boolean mustBeInheritable)
   at System.Reflection.CustomAttribute.IsDefined(RuntimeType type, RuntimeType caType, Boolean inherit)
   at System.Diagnostics.StackTrace.ShowInStackTrace(MethodBase mb)
   at System.Diagnostics.StackTrace.ToString(TraceFormat traceFormat)
   at System.Exception.GetStackTrace')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (82, CAST(N'2020-03-17T14:59:32.510' AS DateTime), N'7', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'<log4net.Error>Exception rendering object type [System.TypeInitializationException]<stackTrace>System.TypeLoadException: Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.
   at System.ModuleHandle.ResolveType(RuntimeModule module, Int32 typeToken, IntPtr* typeInstArgs, Int32 typeInstCount, IntPtr* methodInstArgs, Int32 methodInstCount, ObjectHandleOnStack type)
   at System.ModuleHandle.ResolveTypeHandleInternal(RuntimeModule module, Int32 typeToken, RuntimeTypeHandle[] typeInstantiationContext, RuntimeTypeHandle[] methodInstantiationContext)
   at System.Reflection.RuntimeModule.ResolveType(Int32 metadataToken, Type[] genericTypeArguments, Type[] genericMethodArguments)
   at System.Reflection.CustomAttribute.FilterCustomAttributeRecord(CustomAttributeRecord caRecord, MetadataImport scope, Assembly& lastAptcaOkAssembly, RuntimeModule decoratedModule, MetadataToken decoratedToken, RuntimeType attributeFilterType, Boolean mustBeInheritable, Object[] attributes, IList derivedAttributes, RuntimeType& attributeType, IRuntimeMethodInfo& ctor, Boolean& ctorHasParameters, Boolean& isVarArg)
   at System.Reflection.CustomAttribute.IsCustomAttributeDefined(RuntimeModule decoratedModule, Int32 decoratedMetadataToken, RuntimeType attributeFilterType, Int32 attributeCtorToken, Boolean mustBeInheritable)
   at System.Reflection.CustomAttribute.IsDefined(RuntimeType type, RuntimeType caType, Boolean inherit)
   at System.Diagnostics.StackTrace.ShowInStackTrace(MethodBase mb)
   at System.Diagnostics.StackTrace.ToString(TraceFormat traceFormat)
   at System.Exception.GetStackTrace(Boolean needFileInfo)
   at System.Exception.ToString(Boolean needFileLineInfo, Boolean needMessage)
   at System.Exception.ToString(Boolean needFileLineInfo, Boolean needMessage)
   at log4net.ObjectRenderer.DefaultRenderer.RenderObject(RendererMap rendererMap, Object obj, TextWriter write')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (83, CAST(N'2020-03-17T14:59:32.587' AS DateTime), N'7', N'ERROR', N'Microsoft.AspNetCore.Server.IIS.Core.IISHttpServer', N'Connection ID "17870283353081512158", Request ID "800000e1-0007-f800-b63f-84710c7967bb": An unhandled exception was thrown by the application.', N'System.AggregateException: An error occurred while writing to logger(s). (Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.) (Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.) ---> System.TypeLoadException: Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.
   at System.ModuleHandle.ResolveType(RuntimeModule module, Int32 typeToken, IntPtr* typeInstArgs, Int32 typeInstCount, IntPtr* methodInstArgs, Int32 methodInstCount, ObjectHandleOnStack type)
   at System.ModuleHandle.ResolveTypeHandleInternal(RuntimeModule module, Int32 typeToken, RuntimeTypeHandle[] typeInstantiationContext, RuntimeTypeHandle[] methodInstantiationContext)
   at System.Reflection.RuntimeModule.ResolveType(Int32 metadataToken, Type[] genericTypeArguments, Type[] genericMethodArguments)
   at System.Reflection.CustomAttribute.FilterCustomAttributeRecord(CustomAttributeRecord caRecord, MetadataImport scope, Assembly& lastAptcaOkAssembly, RuntimeModule decoratedModule, MetadataToken decoratedToken, RuntimeType attributeFilterType, Boolean mustBeInheritable, Object[] attributes, IList derivedAttributes, RuntimeType& attributeType, IRuntimeMethodInfo& ctor, Boolean& ctorHasParameters, Boolean& isVarArg)
   at System.Reflection.CustomAttribute.IsCustomAttributeDefined(RuntimeModule decoratedModule, Int32 decoratedMetadataToken, RuntimeType attributeFilterType, Int32 attributeCtorToken, Boolean mustBeInheritable)
   at System.Reflection.CustomAttribute.IsDefined(RuntimeType type, RuntimeType caType, Boolean inherit)
   at System.Diagnostics.StackTrace.ShowInStackTrace(MethodBase mb)
   at System.Diagnostics.StackTrace.ToString(TraceFormat traceFormat)
   at System.Exception.GetStackTrace')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (84, CAST(N'2020-03-17T14:59:49.483' AS DateTime), N'21', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'<log4net.Error>Exception rendering object type [System.TypeInitializationException]<stackTrace>System.TypeLoadException: Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.
   at System.ModuleHandle.ResolveType(RuntimeModule module, Int32 typeToken, IntPtr* typeInstArgs, Int32 typeInstCount, IntPtr* methodInstArgs, Int32 methodInstCount, ObjectHandleOnStack type)
   at System.ModuleHandle.ResolveTypeHandleInternal(RuntimeModule module, Int32 typeToken, RuntimeTypeHandle[] typeInstantiationContext, RuntimeTypeHandle[] methodInstantiationContext)
   at System.Reflection.RuntimeModule.ResolveType(Int32 metadataToken, Type[] genericTypeArguments, Type[] genericMethodArguments)
   at System.Reflection.CustomAttribute.FilterCustomAttributeRecord(CustomAttributeRecord caRecord, MetadataImport scope, Assembly& lastAptcaOkAssembly, RuntimeModule decoratedModule, MetadataToken decoratedToken, RuntimeType attributeFilterType, Boolean mustBeInheritable, Object[] attributes, IList derivedAttributes, RuntimeType& attributeType, IRuntimeMethodInfo& ctor, Boolean& ctorHasParameters, Boolean& isVarArg)
   at System.Reflection.CustomAttribute.IsCustomAttributeDefined(RuntimeModule decoratedModule, Int32 decoratedMetadataToken, RuntimeType attributeFilterType, Int32 attributeCtorToken, Boolean mustBeInheritable)
   at System.Reflection.CustomAttribute.IsDefined(RuntimeType type, RuntimeType caType, Boolean inherit)
   at System.Diagnostics.StackTrace.ShowInStackTrace(MethodBase mb)
   at System.Diagnostics.StackTrace.ToString(TraceFormat traceFormat)
   at System.Exception.GetStackTrace(Boolean needFileInfo)
   at System.Exception.ToString(Boolean needFileLineInfo, Boolean needMessage)
   at System.Exception.ToString(Boolean needFileLineInfo, Boolean needMessage)
   at log4net.ObjectRenderer.DefaultRenderer.RenderObject(RendererMap rendererMap, Object obj, TextWriter write')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (85, CAST(N'2020-03-17T14:59:49.497' AS DateTime), N'21', N'ERROR', N'Microsoft.AspNetCore.Server.IIS.Core.IISHttpServer', N'Connection ID "17870283353081512158", Request ID "800000e3-0007-f800-b63f-84710c7967bb": An unhandled exception was thrown by the application.', N'System.AggregateException: An error occurred while writing to logger(s). (Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.) (Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.) ---> System.TypeLoadException: Could not load type ''System.Web.UI.ParseChildrenAttribute'' from assembly ''System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a''.
   at System.ModuleHandle.ResolveType(RuntimeModule module, Int32 typeToken, IntPtr* typeInstArgs, Int32 typeInstCount, IntPtr* methodInstArgs, Int32 methodInstCount, ObjectHandleOnStack type)
   at System.ModuleHandle.ResolveTypeHandleInternal(RuntimeModule module, Int32 typeToken, RuntimeTypeHandle[] typeInstantiationContext, RuntimeTypeHandle[] methodInstantiationContext)
   at System.Reflection.RuntimeModule.ResolveType(Int32 metadataToken, Type[] genericTypeArguments, Type[] genericMethodArguments)
   at System.Reflection.CustomAttribute.FilterCustomAttributeRecord(CustomAttributeRecord caRecord, MetadataImport scope, Assembly& lastAptcaOkAssembly, RuntimeModule decoratedModule, MetadataToken decoratedToken, RuntimeType attributeFilterType, Boolean mustBeInheritable, Object[] attributes, IList derivedAttributes, RuntimeType& attributeType, IRuntimeMethodInfo& ctor, Boolean& ctorHasParameters, Boolean& isVarArg)
   at System.Reflection.CustomAttribute.IsCustomAttributeDefined(RuntimeModule decoratedModule, Int32 decoratedMetadataToken, RuntimeType attributeFilterType, Int32 attributeCtorToken, Boolean mustBeInheritable)
   at System.Reflection.CustomAttribute.IsDefined(RuntimeType type, RuntimeType caType, Boolean inherit)
   at System.Diagnostics.StackTrace.ShowInStackTrace(MethodBase mb)
   at System.Diagnostics.StackTrace.ToString(TraceFormat traceFormat)
   at System.Exception.GetStackTrace')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (88, CAST(N'2020-03-17T21:12:43.393' AS DateTime), N'43', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.InvalidOperationException: Unable to resolve service for type ''CoreWebApi.RepositoryAbstract.ModuloBase.IScheduler'' while attempting to activate ''CoreWebApi.Controllers.SchedulerController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Cors.Infrastructure.CorsMiddleware.InvokeCore(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (89, CAST(N'2020-03-17T21:35:45.283' AS DateTime), N'22', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 21
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (90, CAST(N'2020-03-17T21:38:11.470' AS DateTime), N'24', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 21
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1163, CAST(N'2020-04-14T20:48:57.587' AS DateTime), N'14', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (91, CAST(N'2020-03-17T21:39:37.797' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 21
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (92, CAST(N'2020-03-17T21:41:50.220' AS DateTime), N'19', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 21
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (2162, CAST(N'2020-04-26T23:38:15.130' AS DateTime), N'15', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (93, CAST(N'2020-03-17T21:49:50.033' AS DateTime), N'27', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 21
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (94, CAST(N'2020-03-17T21:56:42.370' AS DateTime), N'27', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 21
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (95, CAST(N'2020-03-18T22:08:44.853' AS DateTime), N'21', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (109, CAST(N'2020-03-20T21:15:12.767' AS DateTime), N'26', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'Microsoft.IdentityModel.Tokens.SecurityTokenExpiredException: IDX10223: Lifetime validation failed. The token is expired. ValidTo: ''[PII is hidden]'', Current time: ''[PII is hidden]''.
   at Microsoft.IdentityModel.Tokens.Validators.ValidateLifetime(Nullable`1 notBefore, Nullable`1 expires, SecurityToken securityToken, TokenValidationParameters validationParameters)
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ValidateLifetime(Nullable`1 notBefore, Nullable`1 expires, JwtSecurityToken jwtToken, TokenValidationParameters validationParameters)
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ValidateTokenPayload(JwtSecurityToken jwtToken, TokenValidationParameters validationParameters)
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ValidateToken(String token, TokenValidationParameters validationParameters, SecurityToken& validatedToken)
   at CoreWebApi.Repository.Token.TokenRepository.GetPrincipalFromExpiredToken(String token) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\Token\TokenRepository.cs:line 161
   at CoreWebApi.Repository.Token.TokenRepository.Refresh(jTokenModel token) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\Token\TokenRepository.cs:line 90
   at CoreWebApi.Controllers.TokenController.Refresh(jTokenModel token) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\TokenController.cs:line 68
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.Contro')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (115, CAST(N'2020-03-30T12:19:53.973' AS DateTime), N'9', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'''.'' or ''('' or string literal expected (at index 6)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1150, CAST(N'2020-04-09T22:45:31.543' AS DateTime), N'13', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1132, CAST(N'2020-04-08T14:45:37.337' AS DateTime), N'11', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1142, CAST(N'2020-04-09T12:03:05.817' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1143, CAST(N'2020-04-09T16:20:33.140' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1155, CAST(N'2020-04-10T00:06:28.083' AS DateTime), N'12', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1120, CAST(N'2020-04-07T23:12:57.493' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1124, CAST(N'2020-04-08T09:50:21.137' AS DateTime), N'12', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1125, CAST(N'2020-04-08T09:55:06.663' AS DateTime), N'23', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1127, CAST(N'2020-04-08T09:57:15.507' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1128, CAST(N'2020-04-08T10:14:56.110' AS DateTime), N'62', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1129, CAST(N'2020-04-08T10:14:56.133' AS DateTime), N'62', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (96, CAST(N'2020-03-18T22:09:02.647' AS DateTime), N'4', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (116, CAST(N'2020-03-30T12:22:19.573' AS DateTime), N'12', N'ERROR', N'Microsoft.EntityFrameworkCore.Query', N'An exception occurred while iterating over the results of a query for context type ''CoreWebApi.Models.CeccoLabContext''.
System.Data.SqlClient.SqlException (0x80131904): The number of rows provided for a FETCH clause must be greater then zero.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)
   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)
   at System.Data.SqlClient.SqlDataReader.Read()
   at Microsoft.EntityFrameworkCore.Storage.RelationalDataReader.Read()
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryingEnumerable`1.Enumerator.BufferlessMoveNext(DbContext _, Boolean buffer)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.Execute[TState,TResult](TState state, Func`3 operation, Func`3 verifySucceeded)
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryingEnumerable`1.Enumerator.MoveNext()
   at Microsoft.EntityFrameworkCore.Query.Internal.LinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext()
ClientConnectionId:34a5ed05-e8eb-4c8a-87a1-40ad4e310c8b
Error Number:10744,State:1,Class:15', N'System.Data.SqlClient.SqlException (0x80131904): The number of rows provided for a FETCH clause must be greater then zero.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)
   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)
   at System.Data.SqlClient.SqlDataReader.Read()
   at Microsoft.EntityFrameworkCore.Storage.RelationalDataReader.Read()
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryingEnumerable`1.Enumerator.BufferlessMoveNext(DbContext _, Boolean buffer)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.Execute[TState,TResult](TState state, Func`3 operation, Func`3 verifySucceeded)
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryingEnumerable`1.Enumerator.MoveNext()
   at Microsoft.EntityFrameworkCore.Query.Internal.LinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext()
ClientConnectionId:34a5ed05-e8eb-4c8a-87a1-40ad4e310c8b
Error Number:10744,State:1,Class:15')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (97, CAST(N'2020-03-18T22:12:02.273' AS DateTime), N'31', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento)
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento)
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Cors.Infrastructure.CorsMiddleware.InvokeCore(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddlewar')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (98, CAST(N'2020-03-18T23:06:31.810' AS DateTime), N'23', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3165, CAST(N'2020-05-01T15:57:28.240' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3167, CAST(N'2020-05-01T16:35:48.520' AS DateTime), N'13', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3168, CAST(N'2020-05-01T21:19:03.017' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3169, CAST(N'2020-05-01T21:23:36.067' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3170, CAST(N'2020-05-01T21:26:36.280' AS DateTime), N'10', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3171, CAST(N'2020-05-01T21:28:20.440' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3172, CAST(N'2020-05-01T21:30:01.747' AS DateTime), N'9', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3173, CAST(N'2020-05-01T21:40:06.453' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3174, CAST(N'2020-05-01T21:43:45.773' AS DateTime), N'10', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3175, CAST(N'2020-05-02T17:30:59.253' AS DateTime), N'10', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3176, CAST(N'2020-05-02T17:44:41.160' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3177, CAST(N'2020-05-02T17:53:40.753' AS DateTime), N'9', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (99, CAST(N'2020-03-18T23:07:17.323' AS DateTime), N'28', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (100, CAST(N'2020-03-19T14:13:03.527' AS DateTime), N'83', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1131, CAST(N'2020-04-08T14:36:21.667' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1135, CAST(N'2020-04-08T15:37:55.057' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1136, CAST(N'2020-04-08T15:48:59.317' AS DateTime), N'54', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@,marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1137, CAST(N'2020-04-08T15:49:01.810' AS DateTime), N'54', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1138, CAST(N'2020-04-08T15:49:06.013' AS DateTime), N'56', N'WARN', N'CoreWebApi.App_Framework.Logger.Logger', N'Accesso negato per l''utente marco@,marcocecchetti.it', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1139, CAST(N'2020-04-08T15:49:09.397' AS DateTime), N'56', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'ApiException Status Code: 400, Message: BadRequest
ErrorDataList:
ErrorCode: 999, Field: ,Description Autenticazione fallita
')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1140, CAST(N'2020-04-08T15:50:27.083' AS DateTime), N'62', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1141, CAST(N'2020-04-08T15:50:27.110' AS DateTime), N'62', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[x].RuoliFunzioni'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1147, CAST(N'2020-04-09T21:59:43.180' AS DateTime), N'13', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1148, CAST(N'2020-04-09T22:16:09.133' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (101, CAST(N'2020-03-19T14:13:39.297' AS DateTime), N'81', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (102, CAST(N'2020-03-19T14:13:44.293' AS DateTime), N'81', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (2167, CAST(N'2020-04-27T00:00:34.447' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotSupportedException: Ambiguous HTTP method for action - CoreWebApi.Controllers.BaseApiController.GetCurrentLang (CoreWebApi). Actions require an explicit HttpMethod binding for Swagger 2.0
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItem(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at System.Linq.Enumerable.ToDictionary[TSource,TKey,TElement](IEnumerable`1 source, Func`2 keySelector, Func`2 elementSelector, IEqualityComparer`1 comparer)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItems(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.GetSwagger(String documentName, String host, String basePath, String[] schemes)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (2168, CAST(N'2020-04-27T00:01:09.123' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotSupportedException: Ambiguous HTTP method for action - CoreWebApi.Controllers.BaseApiController.GetCurrentLang (CoreWebApi). Actions require an explicit HttpMethod binding for Swagger 2.0
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItem(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at System.Linq.Enumerable.ToDictionary[TSource,TKey,TElement](IEnumerable`1 source, Func`2 keySelector, Func`2 elementSelector, IEqualityComparer`1 comparer)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.CreatePathItems(IEnumerable`1 apiDescriptions, ISchemaRegistry schemaRegistry)
   at Swashbuckle.AspNetCore.SwaggerGen.SwaggerGenerator.GetSwagger(String documentName, String host, String basePath, String[] schemes)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (103, CAST(N'2020-03-19T14:14:28.523' AS DateTime), N'81', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1114, CAST(N'2020-04-05T11:30:29.890' AS DateTime), N'13', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.ArgumentNullException: IDX10000: The parameter ''token'' cannot be a ''null'' or an empty object.
Parameter name: token
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ReadJwtToken(String token)
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ReadToken(String token)
   at CoreWebApi.App_Framework.Helper.Security.JwtTokenDecoded.GetClaimValue(String TokenString, String ClaimName) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\App_Framework\Helper\Security\JwtTokenDecoded.cs:line 18
   at CoreWebApi.Repository.ModuloBase.MB_MenuRepository.BuildMenu() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\MB_MenuRepository.cs:line 38
   at CoreWebApi.Controllers.ModuloBaseController.BuildMenu() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\ModuloBaseController.cs:line 246
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& stat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (104, CAST(N'2020-03-19T14:18:09.997' AS DateTime), N'84', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1116, CAST(N'2020-04-05T17:28:46.320' AS DateTime), N'10', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.InvalidCastException: Unable to cast object of type ''SelectEnumerableIterator`2[Microsoft.EntityFrameworkCore.Query.EntityQueryModelVisitor+TransparentIdentifier`2[CoreWebApi.Models.MB_RuoliFunzioni,Microsoft.EntityFrameworkCore.Storage.ValueBuffer],CoreWebApi.Models.MB_RuoliFunzioni]'' to type ''CoreWebApi.Models.MB_RuoliFunzioni''.
   at CoreWebApi.Repository.ModuloBase.MB_MenuRepository.BuildMenu() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\MB_MenuRepository.cs:line 47
   at CoreWebApi.Controllers.ModuloBaseController.BuildMenu() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\ModuloBaseController.cs:line 246
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
  ')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (105, CAST(N'2020-03-19T14:27:59.287' AS DateTime), N'75', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (106, CAST(N'2020-03-19T17:00:47.767' AS DateTime), N'55', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (107, CAST(N'2020-03-19T17:25:36.773' AS DateTime), N'68', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1162, CAST(N'2020-04-14T15:54:50.437' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3163, CAST(N'2020-05-01T15:54:39.650' AS DateTime), N'34', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.ArgumentNullException: IDX10000: The parameter ''token'' cannot be a ''null'' or an empty object.
Parameter name: token
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ReadJwtToken(String token)
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ReadToken(String token)
   at CoreWebApi.App_Framework.Helper.Security.JwtTokenDecoded.GetClaimValue(String TokenString, String ClaimName) in D:\MCProjects\SVILUPPO\CORE\CoreWebApi\CoreWebApi\App_Framework\Helper\Security\JwtTokenDecoded.cs:line 18
   at CoreWebApi.Repository.ModuloBase.MB_MenuRepository.BuildMenu(Boolean isAlreadyLogged, Int32 IdUtente) in D:\MCProjects\SVILUPPO\CORE\CoreWebApi\CoreWebApi\Repository\ModuloBase\MB_MenuRepository.cs:line 47
   at CoreWebApi.Controllers.ModuloBaseController.BuildMenu() in D:\MCProjects\SVILUPPO\CORE\CoreWebApi\CoreWebApi\Controllers\ModuloBaseController.cs:line 245
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvo')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (108, CAST(N'2020-03-19T17:26:48.403' AS DateTime), N'68', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NotImplementedException: The method or operation is not implemented.
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Save(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 25
   at CoreWebApi.Controllers.SchedulerController.Save_Eventi(jET_Evento evento) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 55
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.Authenticat')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3164, CAST(N'2020-05-01T15:54:40.630' AS DateTime), N'34', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.ArgumentNullException: IDX10000: The parameter ''token'' cannot be a ''null'' or an empty object.
Parameter name: token
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ReadJwtToken(String token)
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ReadToken(String token)
   at CoreWebApi.App_Framework.Helper.Security.JwtTokenDecoded.GetClaimValue(String TokenString, String ClaimName) in D:\MCProjects\SVILUPPO\CORE\CoreWebApi\CoreWebApi\App_Framework\Helper\Security\JwtTokenDecoded.cs:line 18
   at CoreWebApi.Repository.ModuloBase.MB_MenuRepository.BuildMenu(Boolean isAlreadyLogged, Int32 IdUtente) in D:\MCProjects\SVILUPPO\CORE\CoreWebApi\CoreWebApi\Repository\ModuloBase\MB_MenuRepository.cs:line 47
   at CoreWebApi.Controllers.ModuloBaseController.BuildMenu() in D:\MCProjects\SVILUPPO\CORE\CoreWebApi\CoreWebApi\Controllers\ModuloBaseController.cs:line 245
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvo')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (117, CAST(N'2020-03-30T12:22:51.153' AS DateTime), N'12', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.Data.SqlClient.SqlException (0x80131904): The number of rows provided for a FETCH clause must be greater then zero.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)
   at System.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)
   at System.Data.SqlClient.SqlDataReader.Read()
   at Microsoft.EntityFrameworkCore.Storage.RelationalDataReader.Read()
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryingEnumerable`1.Enumerator.BufferlessMoveNext(DbContext _, Boolean buffer)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.Execute[TState,TResult](TState state, Func`3 operation, Func`3 verifySucceeded)
   at Microsoft.EntityFrameworkCore.Query.Internal.QueryingEnumerable`1.Enumerator.MoveNext()
   at Microsoft.EntityFrameworkCore.Query.Internal.LinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.MoveNext()
   at System.Collections.Generic.List`1.AddEnumerable(IEnumerable`1 enumerable)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Get_Eventi(ApiQuery apiQuery) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 76
   at CoreWebApi.Controllers.SchedulerController.Get_Eventi(ApiQuery apiQuery) i')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (118, CAST(N'2020-04-01T18:07:22.420' AS DateTime), N'13', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.UnauthorizedAccessException: Access to the path ''C:\MC\SRC_ANGULAR\Ultima\CoreWebApi'' is denied.
   at System.IO.FileStream.ValidateFileHandle(SafeFileHandle fileHandle)
   at System.IO.FileStream.CreateFileOpenHandle(FileMode mode, FileShare share, FileOptions options)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share, Int32 bufferSize, FileOptions options)
   at System.IO.StreamWriter..ctor(String path, Boolean append, Encoding encoding, Int32 bufferSize)
   at System.IO.StreamWriter..ctor(String path)
   at MCUtility.Base.IOOperation.TextFileFunction.TFWriteFromList(String TFFullFileName, List`1 listString) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\MCUtility.Base\IOOperation\TextFileFunction.cs:line 14
   at CoreWebApi.Repository.ModuloBase.SchedulerRepository.Get_Categorie() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\SchedulerRepository.cs:line 93
   at CoreWebApi.Controllers.SchedulerController.Get_Categorie() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\SchedulerController.cs:line 54
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1149, CAST(N'2020-04-09T22:23:35.197' AS DateTime), N'10', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1154, CAST(N'2020-04-09T23:30:58.237' AS DateTime), N'9', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1156, CAST(N'2020-04-10T10:45:02.897' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1157, CAST(N'2020-04-10T15:07:22.777' AS DateTime), N'13', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1158, CAST(N'2020-04-10T15:39:28.013' AS DateTime), N'14', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1159, CAST(N'2020-04-10T16:37:57.653' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1160, CAST(N'2020-04-10T17:00:52.013' AS DateTime), N'11', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1161, CAST(N'2020-04-13T21:12:55.713' AS DateTime), N'6', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3178, CAST(N'2020-05-02T18:29:03.097' AS DateTime), N'9', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1115, CAST(N'2020-04-05T17:10:15.543' AS DateTime), N'19', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.InvalidCastException: Unable to cast object of type ''SelectEnumerableIterator`2[Microsoft.EntityFrameworkCore.Query.EntityQueryModelVisitor+TransparentIdentifier`2[CoreWebApi.Models.MB_RuoliFunzioni,Microsoft.EntityFrameworkCore.Storage.ValueBuffer],CoreWebApi.Models.MB_RuoliFunzioni]'' to type ''CoreWebApi.Models.MB_RuoliFunzioni''.
   at CoreWebApi.Repository.ModuloBase.MB_MenuRepository.BuildMenu() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\MB_MenuRepository.cs:line 47
   at CoreWebApi.Controllers.ModuloBaseController.BuildMenu() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\ModuloBaseController.cs:line 246
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
  ')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3166, CAST(N'2020-05-01T16:33:38.793' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.ArgumentNullException: IDX10000: The parameter ''token'' cannot be a ''null'' or an empty object.
Parameter name: token
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ReadJwtToken(String token)
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ReadToken(String token)
   at CoreWebApi.App_Framework.Helper.Security.JwtTokenDecoded.GetClaimValue(String TokenString, String ClaimName) in D:\MCProjects\SVILUPPO\CORE\CoreWebApi\CoreWebApi\App_Framework\Helper\Security\JwtTokenDecoded.cs:line 18
   at CoreWebApi.Repository.ModuloBase.MB_MenuRepository.BuildMenu(Boolean isAlreadyLogged, Int32 IdUtente) in D:\MCProjects\SVILUPPO\CORE\CoreWebApi\CoreWebApi\Repository\ModuloBase\MB_MenuRepository.cs:line 47
   at CoreWebApi.Controllers.ModuloBaseController.BuildMenu() in D:\MCProjects\SVILUPPO\CORE\CoreWebApi\CoreWebApi\Controllers\ModuloBaseController.cs:line 245
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvo')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1117, CAST(N'2020-04-05T17:33:03.233' AS DateTime), N'6', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.InvalidCastException: Unable to cast object of type ''SelectEnumerableIterator`2[Microsoft.EntityFrameworkCore.Query.EntityQueryModelVisitor+TransparentIdentifier`2[CoreWebApi.Models.MB_RuoliFunzioni,Microsoft.EntityFrameworkCore.Storage.ValueBuffer],CoreWebApi.Models.MB_RuoliFunzioni]'' to type ''CoreWebApi.Models.MB_RuoliFunzioni''.
   at CoreWebApi.Repository.ModuloBase.MB_MenuRepository.BuildMenu() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\MB_MenuRepository.cs:line 49
   at CoreWebApi.Controllers.ModuloBaseController.BuildMenu() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\ModuloBaseController.cs:line 246
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
  ')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1126, CAST(N'2020-04-08T09:55:20.113' AS DateTime), N'23', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at CoreWebApi.Repository.ModuloBase.MB_MenuRepository.BuildMenu(Boolean isAlreadyLogged, Int32 IdUtente) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\ModuloBase\MB_MenuRepository.cs:line 63
   at CoreWebApi.Controllers.ModuloBaseController.BuildMenu() in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\ModuloBaseController.cs:line 244
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentica')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1133, CAST(N'2020-04-08T14:48:04.700' AS DateTime), N'23', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at CoreWebApi.Controllers.ModuloBaseController.SaveRuoliFunzioni(jMB_Ruolo Ruolo) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\ModuloBaseController.cs:line 237
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.<>c__DisplayClass33_0.<WrapVoidMethod>b__0(Object target, Object[] parameters)
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.VoidResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeInnerFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeNextResourceFilter()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeFilterPipelineAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.InvokeAsync()
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Cors.Infrastructure.C')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3179, CAST(N'2020-05-02T18:52:53.780' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3180, CAST(N'2020-05-02T21:08:10.160' AS DateTime), N'15', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3181, CAST(N'2020-05-03T17:10:48.247' AS DateTime), N'9', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3182, CAST(N'2020-05-03T17:15:50.237' AS DateTime), N'10', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (3183, CAST(N'2020-05-03T21:53:18.600' AS DateTime), N'7', N'WARN', N'Microsoft.EntityFrameworkCore.Query', N'The Include operation for navigation ''[y].RuoliFunzioni.Ruolo'' is unnecessary and was ignored because the navigation is not reachable in the final query results. See https://go.microsoft.com/fwlink/?linkid=850303 for more information.', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (1145, CAST(N'2020-04-09T16:38:16.597' AS DateTime), N'30', N'ERROR', N'Microsoft.AspNetCore.Diagnostics.ExceptionHandlerMiddleware', N'An unhandled exception has occurred while executing the request.', N'Microsoft.IdentityModel.Tokens.SecurityTokenExpiredException: IDX10223: Lifetime validation failed. The token is expired. ValidTo: ''[PII is hidden]'', Current time: ''[PII is hidden]''.
   at Microsoft.IdentityModel.Tokens.Validators.ValidateLifetime(Nullable`1 notBefore, Nullable`1 expires, SecurityToken securityToken, TokenValidationParameters validationParameters)
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ValidateLifetime(Nullable`1 notBefore, Nullable`1 expires, JwtSecurityToken jwtToken, TokenValidationParameters validationParameters)
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ValidateTokenPayload(JwtSecurityToken jwtToken, TokenValidationParameters validationParameters)
   at System.IdentityModel.Tokens.Jwt.JwtSecurityTokenHandler.ValidateToken(String token, TokenValidationParameters validationParameters, SecurityToken& validatedToken)
   at CoreWebApi.Repository.Token.TokenRepository.GetPrincipalFromExpiredToken(String token) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\Token\TokenRepository.cs:line 163
   at CoreWebApi.Repository.Token.TokenRepository.Refresh(jTokenModel token) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Repository\Token\TokenRepository.cs:line 92
   at CoreWebApi.Controllers.TokenController.Refresh(jTokenModel token) in C:\MC\SRC_ANGULAR\Ultima\CoreWebApi\CoreWebApi\Controllers\TokenController.cs:line 69
   at lambda_method(Closure , Object , Object[] )
   at Microsoft.Extensions.Internal.ObjectMethodExecutor.Execute(Object target, Object[] parameters)
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.SyncActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.InvokeNextActionFilterAsync()
   at Microsoft.AspNetCore.Mvc.Internal.Contro')
SET IDENTITY_INSERT [dbo].[Log] OFF
GO
SET IDENTITY_INSERT [dbo].[MB_Applicazioni] ON 

INSERT [dbo].[MB_Applicazioni] ([MBAP_ID], [MBAP_MBAZ_ID], [MBAP_Descrizione], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1, 0, N'Ultima', 0, CAST(N'2020-02-12T22:39:41.6485688' AS DateTime2), 0, CAST(N'2020-02-12T22:39:41.6509487' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MB_Applicazioni] OFF
SET IDENTITY_INSERT [dbo].[MB_Figura] ON 

INSERT [dbo].[MB_Figura] ([MBFG_ID], [MBFG_Code], [MBFG_Descrizione]) VALUES (1, N'CTO', N'Chief technical officer')
INSERT [dbo].[MB_Figura] ([MBFG_ID], [MBFG_Code], [MBFG_Descrizione]) VALUES (2, N'CEO', N'Chief Executive Officer')
INSERT [dbo].[MB_Figura] ([MBFG_ID], [MBFG_Code], [MBFG_Descrizione]) VALUES (3, N'DEV', N'Developer')
INSERT [dbo].[MB_Figura] ([MBFG_ID], [MBFG_Code], [MBFG_Descrizione]) VALUES (4, N'ANL', N'Analist')
INSERT [dbo].[MB_Figura] ([MBFG_ID], [MBFG_Code], [MBFG_Descrizione]) VALUES (5, N'ASS', N'Assistant')
SET IDENTITY_INSERT [dbo].[MB_Figura] OFF
SET IDENTITY_INSERT [dbo].[MB_Funzioni] ON 

INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (1, NULL, NULL, N'Home', N'Home', N'#', NULL, NULL, N'fa fa-home', 1, 0, 0, CAST(N'2020-04-14T22:14:08.4666667' AS DateTime2), 0, CAST(N'2020-04-14T22:14:08.4666667' AS DateTime2), NULL, 0)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (2, 1, NULL, N'ModuloBase/Get_Applicazioni', N'Elenco applicazioni', N'', 26, NULL, NULL, 1, 1100, 0, CAST(N'2020-04-14T22:14:09.8293329' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.3942555' AS DateTime2), N'Applicazioni', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (3, 1, NULL, N'ModuloBase/Get_Categorie', N'Elenco categorie', N'', 33, NULL, NULL, 0, 8100, 0, CAST(N'2020-04-14T22:14:09.9193894' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4615940' AS DateTime2), N'Scheduler', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (4, 1, NULL, N'ModuloBase/Get_Eventi', N'Elenco eventi', N'', 33, NULL, NULL, 1, 8200, 0, CAST(N'2020-04-14T22:14:09.9171537' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4598596' AS DateTime2), N'Scheduler', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (5, 1, NULL, N'Profile/Save', N'Salva Profilo', N'', 31, 6, NULL, 1, 6100, 0, CAST(N'2020-04-14T22:14:09.9156605' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4575690' AS DateTime2), N'Profili', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (6, 1, NULL, N'Profile/Users', N'Elenco Profili', N'', 31, NULL, NULL, 1, 6200, 0, CAST(N'2020-04-14T22:14:09.9143257' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4540832' AS DateTime2), N'Profili', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (7, 1, NULL, N'Profile/UserById', N'Legge un Profilo', N'', 31, 6, NULL, 0, 6300, 0, CAST(N'2020-04-14T22:14:09.9130758' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4531031' AS DateTime2), N'Profili', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (13, 1, NULL, N'ModuloBase/SaveMenu', N'Salva Menu', N'', 29, 14, NULL, 1, 4100, 0, CAST(N'2020-04-14T22:14:09.9051678' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4452151' AS DateTime2), N'Moduli', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (14, 1, NULL, N'ModuloBase/GetMenus', N'Elenco Menu', N'', 28, NULL, NULL, 1, 3100, 0, CAST(N'2020-04-14T22:14:09.9041619' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4440286' AS DateTime2), N'Menu', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (15, 1, NULL, N'ModuloBase/SalvaPermesso', N'Salva permesso', N'', 32, 16, NULL, 1, 7100, 0, CAST(N'2020-04-14T22:14:09.9031656' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4431557' AS DateTime2), N'Ruoli', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (16, 1, NULL, N'ModuloBase/Permessi', N'Permessi', N'', 32, NULL, NULL, 1, 7200, 0, CAST(N'2020-04-14T22:14:09.9012034' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4422128' AS DateTime2), N'Ruoli', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (17, 1, NULL, N'ModuloBase/SaveRuolo', N'Salva ruolo', N'', 32, 18, NULL, 1, 7300, 0, CAST(N'2020-04-14T22:14:09.8996054' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4364313' AS DateTime2), N'Ruoli', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (18, 1, NULL, N'ModuloBase/GetRuoli', N'Elenco ruoli', N'', 32, NULL, NULL, 1, 7400, 0, CAST(N'2020-04-14T22:14:09.8983855' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4356465' AS DateTime2), N'Ruoli', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (19, 1, NULL, N'ModuloBase/SaveFunzione', N'Salva funzione', N'', 27, 20, NULL, 1, 2100, 0, CAST(N'2020-04-14T22:14:09.8971827' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4347222' AS DateTime2), N'Funzioni', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (20, 1, NULL, N'ModuloBase/GetFunzioni', N'Elenco funzioni', N'', 27, NULL, NULL, 1, 2200, 0, CAST(N'2020-04-14T22:14:09.8961766' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4339576' AS DateTime2), N'Funzioni', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (21, 1, NULL, N'ModuloBase/SaveModulo', N'Salva applicazione', N'', 29, 22, NULL, 1, 4200, 0, CAST(N'2020-04-14T22:14:09.8950418' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4331859' AS DateTime2), N'Moduli', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (22, 1, NULL, N'ModuloBase/Get_Moduli', N'Elenco moduli', N'', 29, NULL, NULL, 1, 4300, 0, CAST(N'2020-04-14T22:14:09.8938529' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4323850' AS DateTime2), N'Moduli', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (23, 1, NULL, N'ModuloBase/SaveApplicazione', N'Salva applicazione', N'', 26, 2, NULL, 1, 1200, 0, CAST(N'2020-04-14T22:14:09.8762486' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4315972' AS DateTime2), N'Applicazioni', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (24, 1, NULL, N'ModuloBase/Save_Eventi', N'Salva evento', N'', 33, 4, NULL, 1, 8300, 0, CAST(N'2020-04-14T22:14:09.9214185' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4640826' AS DateTime2), N'Scheduler', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (25, 1, NULL, N'Token/PendingSession', N'Token', N'', 34, NULL, NULL, 1, 9100, 0, CAST(N'2020-04-14T22:14:09.9235490' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4655276' AS DateTime2), N'Token', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (26, 1, NULL, N'Applicazioni', N'Applicazioni', N'#', 1, NULL, NULL, 1, 1000, 0, CAST(N'2020-04-14T22:15:43.8436186' AS DateTime2), 0, CAST(N'2020-04-14T22:15:43.8436242' AS DateTime2), N'Applicazioni', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (27, 1, NULL, N'Funzioni', N'Funzioni', N'#', 1, NULL, NULL, 1, 2000, 0, CAST(N'2020-04-14T22:15:43.8454863' AS DateTime2), 0, CAST(N'2020-04-14T22:15:43.8454892' AS DateTime2), N'Funzioni', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (28, 1, NULL, N'Menu', N'Menu', N'#', 1, NULL, NULL, 1, 3000, 0, CAST(N'2020-04-14T22:15:43.8477158' AS DateTime2), 0, CAST(N'2020-04-14T22:15:43.8477193' AS DateTime2), N'Menu', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (29, 1, NULL, N'Moduli', N'Moduli', N'#', 1, NULL, NULL, 1, 4000, 0, CAST(N'2020-04-14T22:15:43.8503788' AS DateTime2), 0, CAST(N'2020-04-14T22:15:43.8503830' AS DateTime2), N'Moduli', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (31, 1, NULL, N'Profili', N'Profili', N'#', 1, NULL, NULL, 1, 6000, 0, CAST(N'2020-04-14T22:15:43.8555618' AS DateTime2), 0, CAST(N'2020-04-14T22:15:43.8555657' AS DateTime2), N'Profili', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (32, 1, NULL, N'Ruoli', N'Ruoli', N'#', 1, NULL, NULL, 1, 7000, 0, CAST(N'2020-04-14T22:15:43.8580808' AS DateTime2), 0, CAST(N'2020-04-14T22:15:43.8580841' AS DateTime2), N'Ruoli', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (33, 1, NULL, N'Scheduler', N'Scheduler', N'#', 1, NULL, NULL, 1, 8000, 0, CAST(N'2020-04-14T22:15:43.8605813' AS DateTime2), 0, CAST(N'2020-04-14T22:15:43.8605847' AS DateTime2), N'Scheduler', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (34, 1, NULL, N'Token', N'Token', N'#', 1, NULL, NULL, 1, 9000, 0, CAST(N'2020-04-14T22:15:43.8628960' AS DateTime2), 0, CAST(N'2020-04-14T22:15:43.8628990' AS DateTime2), N'Token', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (35, 1, NULL, N'Post/Get_Posts', N'Elenco articoli', N'', 40, NULL, NULL, 1, 10200, 0, CAST(N'2020-04-14T22:18:34.6768973' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4479871' AS DateTime2), N'Post', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (36, 1, NULL, N'Post/SaveCategoria', N'Salva categoria', N'', 40, 37, NULL, 1, 10300, 0, CAST(N'2020-04-14T22:18:34.6755449' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4470083' AS DateTime2), N'Post', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (37, 1, NULL, N'Post/Get_Categorie', N'Elenco categorie', N'', 40, NULL, NULL, 1, 10400, 0, CAST(N'2020-04-14T22:18:34.6640262' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4461606' AS DateTime2), N'Post', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (38, 1, NULL, N'Post/SavePost', N'Salva articolo', N'', 40, 35, NULL, 1, 10500, 0, CAST(N'2020-04-14T22:18:34.6785947' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4514820' AS DateTime2), N'Post', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (40, 1, NULL, N'Post', N'Post', N'#', 1, NULL, NULL, 1, 10100, 0, CAST(N'2020-04-14T22:18:38.3104425' AS DateTime2), 0, CAST(N'2020-04-14T22:18:38.3104492' AS DateTime2), N'Post', 1)
INSERT [dbo].[MB_Funzioni] ([MBFU_ID], [MBFU_MBAP_ID], [MBFU_MBMO_ID], [MBFU_Code], [MBFU_Descrizione], [MBFU_Url], [MBFU_Parent_ID], [MBFU_ChildOf], [MBFU_IconMenu], [MBFU_Visualizza], [MBFU_Ordine], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [MBFU_GroupName], [MBFU_BackEnd]) VALUES (50, 1, NULL, N'Post/Get_PostsById', N'Articolo', N'', 40, 35, NULL, 0, 10600, 0, CAST(N'2020-04-14T23:32:54.2754532' AS DateTime2), 0, CAST(N'2020-05-03T21:53:00.4489203' AS DateTime2), N'Post', 1)
SET IDENTITY_INSERT [dbo].[MB_Funzioni] OFF
SET IDENTITY_INSERT [dbo].[MB_Menu] ON 

INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1, N'Profilo', N'/profile', N'perm_identity', NULL, N'Profile/Users', 0, 1, 100, 0, CAST(N'2020-02-24T17:04:49.6933333' AS DateTime2), 0, CAST(N'2020-02-24T17:04:49.6933333' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (2, N'Elenco Utenti', N'/userList', N'supervisor_account', NULL, N'Profile/Users', 1, 0, 300, 0, CAST(N'2020-02-24T17:04:49.6933333' AS DateTime2), 0, CAST(N'2020-02-24T17:04:49.6933333' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (3, N'Applicazioni', N'/applicazioniList', N'extension', NULL, N'ModuloBase/Get_Applicazioni', 1, 0, 400, 0, CAST(N'2020-02-24T17:04:49.6933333' AS DateTime2), 1, CAST(N'2020-04-10T17:14:06.6279969' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (4, N'Moduli', N'/moduliList', N'view_module', NULL, N'ModuloBase/Get_Moduli', 1, 0, 500, 0, CAST(N'2020-02-24T17:04:49.6933333' AS DateTime2), 0, CAST(N'2020-02-24T17:04:49.6933333' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (5, N'Ruoli', N'/ruoliList', N'work_outline', NULL, N'ModuloBase/GetRuoli', 1, 0, 600, 0, CAST(N'2020-02-24T17:04:49.6933333' AS DateTime2), 0, CAST(N'2020-02-24T17:04:49.6933333' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (6, N'Permessi', N'/permessiList', N'lock_open', NULL, N'ModuloBase/Permessi', 1, 0, 800, 0, CAST(N'2020-02-24T17:04:49.6966667' AS DateTime2), 0, CAST(N'2020-02-24T17:04:49.6966667' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (7, N'Funzioni', N'/funzioniList', N'functions', NULL, N'ModuloBase/GetFunzioni', 1, 0, 700, 0, CAST(N'2020-04-07T22:04:34.2266667' AS DateTime2), 0, CAST(N'2020-04-07T22:04:34.2266667' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (8, N'Planning', N'/planning', N'assignment', NULL, N'ModuloBase/Get_Eventi', 1, 1, 200, 0, CAST(N'2020-04-07T22:06:07.0666667' AS DateTime2), 1, CAST(N'2020-04-10T17:14:02.7100008' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (9, N'Sessioni attive', N'/pendingSession', N'dashboard', NULL, N'Token/PendingSession', 1, 0, 900, 0, CAST(N'2020-04-07T22:16:55.8700000' AS DateTime2), 0, CAST(N'2020-04-07T22:16:55.8700000' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (10, N'Elenco Menu', N'/menuList', N'format_list_bulleted', NULL, N'ModuloBase/GetMenus', 1, 0, 1000, 0, CAST(N'2020-04-10T00:05:00.0000000' AS DateTime2), 1, CAST(N'2020-04-13T21:13:46.7683139' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (11, N'Articoli', NULL, N'library_books', NULL, N'Post/Get_Posts', 0, 0, 1100, 0, CAST(N'2020-04-14T15:42:00.0000000' AS DateTime2), 1, CAST(N'2020-04-19T20:43:55.8803264' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (12, N'Categorie', N'/postCategorieList', N'dashboard', 11, N'Post/Get_Categorie', 0, 0, 1200, 0, CAST(N'2020-04-14T15:42:00.0000000' AS DateTime2), 0, CAST(N'2020-04-14T15:42:00.0000000' AS DateTime2))
INSERT [dbo].[MB_Menu] ([MBMU_ID], [MBMU_Descrizione], [MBMU_Url], [MBMU_Icon], [MBMU_Parent_ID], [MBMU_CodeAuth], [MBMU_IsAdmin], [MBMU_Common], [MBMU_Progressivo], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (13, N'Lista Articoli', N'/postsList', N'library_books', 11, N'Post/Get_Posts', 0, 0, 1300, 1, CAST(N'2020-04-19T20:39:02.2272346' AS DateTime2), 1, CAST(N'2020-04-19T20:40:39.3660805' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MB_Menu] OFF
SET IDENTITY_INSERT [dbo].[MB_Moduli] ON 

INSERT [dbo].[MB_Moduli] ([MBMO_ID], [MBMO_MBAP_ID], [MBMO_Descrizione], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1, 1, N'Administrator', 1, CAST(N'2020-03-11T12:53:50.7638447' AS DateTime2), 1, CAST(N'2020-03-11T12:53:50.7993447' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MB_Moduli] OFF
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 1)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 2)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 4)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 5)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 6)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 13)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 14)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 15)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 16)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 17)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 18)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 19)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 20)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 21)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 22)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 23)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 24)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 25)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 26)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 27)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 28)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 29)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 31)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 32)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 33)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 34)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 35)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 36)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 37)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 38)
INSERT [dbo].[MB_RuoliFunzioni] ([MBRO_ID], [MBFU_ID]) VALUES (1, 40)
SET IDENTITY_INSERT [dbo].[MB_Ruolo] ON 

INSERT [dbo].[MB_Ruolo] ([MBRO_ID], [MBRO_Descrizione], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (1, N'Ruolo1', 1, CAST(N'2020-02-05T15:01:58.3121512' AS DateTime2), 1, CAST(N'2020-02-05T15:01:58.3282561' AS DateTime2))
INSERT [dbo].[MB_Ruolo] ([MBRO_ID], [MBRO_Descrizione], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (2, N'Ruolo2', 1, CAST(N'2020-02-05T15:02:04.8336786' AS DateTime2), 1, CAST(N'2020-02-05T15:02:04.8345314' AS DateTime2))
INSERT [dbo].[MB_Ruolo] ([MBRO_ID], [MBRO_Descrizione], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (3, N'Ruolo3', 1, CAST(N'2020-02-05T15:02:56.6553224' AS DateTime2), 1, CAST(N'2020-02-05T15:02:56.6556124' AS DateTime2))
INSERT [dbo].[MB_Ruolo] ([MBRO_ID], [MBRO_Descrizione], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica]) VALUES (4, N'Ruolo4', 1, CAST(N'2020-02-05T15:03:08.1639277' AS DateTime2), 1, CAST(N'2020-02-05T15:03:08.1641049' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MB_Ruolo] OFF
SET IDENTITY_INSERT [dbo].[UserData] ON 

INSERT [dbo].[UserData] ([Id], [UserId], [TitoloStudio], [IndirizzoResidenza], [Recapiti], [Note], [PageFavorite]) VALUES (1, 1, N'Perito Informatico.', N'via Giotto, 4 M.S.M.Tiberina (PG)', N'3475478822', N'<p>Nessuna</p><p>annotazione</p><p>particolare......</p>', N'')
INSERT [dbo].[UserData] ([Id], [UserId], [TitoloStudio], [IndirizzoResidenza], [Recapiti], [Note], [PageFavorite]) VALUES (2, 4, N'ragioneria', NULL, NULL, NULL, NULL)
INSERT [dbo].[UserData] ([Id], [UserId], [TitoloStudio], [IndirizzoResidenza], [Recapiti], [Note], [PageFavorite]) VALUES (3, 2, N'Liceo Classico', N'via Giotto, 4 Monte S.Maria Tiberina (PG)', N'0758526028', NULL, NULL)
INSERT [dbo].[UserData] ([Id], [UserId], [TitoloStudio], [IndirizzoResidenza], [Recapiti], [Note], [PageFavorite]) VALUES (4, 3, N'xyz', N'', N'3344556677', N'', N'')
SET IDENTITY_INSERT [dbo].[UserData] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Password], [IsAdmin], [Status], [Avatar], [Cognome], [DateExpire], [Nome], [LastAccess], [LastUpdatePwd], [IsValid]) VALUES (1, N'marco@marcocecchetti.it', N'marcoc', 1, 2, N'25aea95517124ba2817d6d7dcacd4145_Avatar1.png', N'Cecchetti', CAST(N'2020-12-27T18:00:00.0000000' AS DateTime2), N'Marco', CAST(N'2020-05-03T21:53:18.2763369' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Users] ([Id], [Username], [Password], [IsAdmin], [Status], [Avatar], [Cognome], [DateExpire], [Nome], [LastAccess], [LastUpdatePwd], [IsValid]) VALUES (2, N'mary@marcocecchetti.it', N'pippo456', 0, NULL, N'44291620ecc64d74a24b7b3594463f85_libro.png', N'Cecchetti', CAST(N'2099-12-29T21:00:00.0000000' AS DateTime2), N'Maria Chiara', CAST(N'2019-12-11T16:36:26.0922560' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Users] ([Id], [Username], [Password], [IsAdmin], [Status], [Avatar], [Cognome], [DateExpire], [Nome], [LastAccess], [LastUpdatePwd], [IsValid]) VALUES (3, N'diego@marcocecchetti.it', N'pippo789', 0, NULL, N'c55838882ee443bf9db4c97d61984761_pallone.png', N'Cecchetti', CAST(N'2099-12-30T23:00:00.0000000' AS DateTime2), N'Diego', CAST(N'2020-03-09T09:01:56.0798493' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Users] ([Id], [Username], [Password], [IsAdmin], [Status], [Avatar], [Cognome], [DateExpire], [Nome], [LastAccess], [LastUpdatePwd], [IsValid]) VALUES (4, N'michela@michelabecchetti.it', N'123', 0, NULL, N'avatar4.png', N'Becchetti', CAST(N'2099-12-30T22:00:00.0000000' AS DateTime2), N'Michela', CAST(N'0001-01-01T12:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Users] ([Id], [Username], [Password], [IsAdmin], [Status], [Avatar], [Cognome], [DateExpire], [Nome], [LastAccess], [LastUpdatePwd], [IsValid]) VALUES (6, N'pippo.calo@cosanostra.it', N'pippo', 0, NULL, NULL, N'Calò', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'Pippo', CAST(N'2019-12-13T17:06:23.7312211' AS DateTime2), CAST(N'2019-12-13T17:06:23.7312180' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[UsersMB_Figura] ([UsersId], [MBFG_ID]) VALUES (1, 3)
INSERT [dbo].[UsersMB_Figura] ([UsersId], [MBFG_ID]) VALUES (1, 4)
INSERT [dbo].[UsersMB_Figura] ([UsersId], [MBFG_ID]) VALUES (2, 5)
INSERT [dbo].[UsersMB_Figura] ([UsersId], [MBFG_ID]) VALUES (4, 5)
INSERT [dbo].[UsersMB_Figura] ([UsersId], [MBFG_ID]) VALUES (6, 2)
INSERT [dbo].[UsersMB_Ruoli] ([UsersId], [MBRO_ID]) VALUES (1, 1)
INSERT [dbo].[UsersMB_Ruoli] ([UsersId], [MBRO_ID]) VALUES (1, 3)
/****** Object:  Index [IX_ED_Allegato_EDAL_EDPS_ID]    Script Date: 05/05/2020 21:36:58 ******/
CREATE NONCLUSTERED INDEX [IX_ED_Allegato_EDAL_EDPS_ID] ON [dbo].[ED_Allegato]
(
	[EDAL_EDPS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ED_AllegatoFile_EDAF_EDAL_ID]    Script Date: 05/05/2020 21:36:58 ******/
CREATE NONCLUSTERED INDEX [IX_ED_AllegatoFile_EDAF_EDAL_ID] ON [dbo].[ED_AllegatoFile]
(
	[EDAF_EDAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ED_Post_EDPS_EDCT_ID]    Script Date: 05/05/2020 21:36:58 ******/
CREATE NONCLUSTERED INDEX [IX_ED_Post_EDPS_EDCT_ID] ON [dbo].[ED_Post]
(
	[EDPS_EDCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsersMB_Ruoli_MBRO_ID]    Script Date: 05/05/2020 21:36:58 ******/
CREATE NONCLUSTERED INDEX [IX_UsersMB_Ruoli_MBRO_ID] ON [dbo].[UsersMB_Ruoli]
(
	[MBRO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MB_Funzioni] ADD  DEFAULT ((0)) FOR [MBFU_BackEnd]
GO
ALTER TABLE [dbo].[MB_Menu] ADD  CONSTRAINT [DF__MB_Menu__MBMU_Co__351DDF8C]  DEFAULT ((0)) FOR [MBMU_Common]
GO
ALTER TABLE [dbo].[MB_Menu] ADD  CONSTRAINT [DF__MB_Menu__MBMU_Pr__361203C5]  DEFAULT ((0)) FOR [MBMU_Progressivo]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DateExpire]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [LastAccess]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [LastUpdatePwd]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsValid]
GO
ALTER TABLE [dbo].[ED_Allegato]  WITH CHECK ADD  CONSTRAINT [FK_ED_Allegato_ED_Post_EDAL_EDPS_ID] FOREIGN KEY([EDAL_EDPS_ID])
REFERENCES [dbo].[ED_Post] ([EDPS_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ED_Allegato] CHECK CONSTRAINT [FK_ED_Allegato_ED_Post_EDAL_EDPS_ID]
GO
ALTER TABLE [dbo].[ED_AllegatoFile]  WITH CHECK ADD  CONSTRAINT [FK_ED_AllegatoFile_ED_Allegato_EDAF_EDAL_ID] FOREIGN KEY([EDAF_EDAL_ID])
REFERENCES [dbo].[ED_Allegato] ([EDAL_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ED_AllegatoFile] CHECK CONSTRAINT [FK_ED_AllegatoFile_ED_Allegato_EDAF_EDAL_ID]
GO
ALTER TABLE [dbo].[ED_Post]  WITH CHECK ADD  CONSTRAINT [FK_ED_Post_ED_Categoria_EDPS_EDCT_ID] FOREIGN KEY([EDPS_EDCT_ID])
REFERENCES [dbo].[ED_Categoria] ([EDCT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ED_Post] CHECK CONSTRAINT [FK_ED_Post_ED_Categoria_EDPS_EDCT_ID]
GO
ALTER TABLE [dbo].[MB_Allegato]  WITH CHECK ADD  CONSTRAINT [FK_MB_Allegato_MB_AllegatoTipo_MBAL_MBAT_ID] FOREIGN KEY([MBAL_MBAT_ID])
REFERENCES [dbo].[MB_AllegatoTipo] ([MBAT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MB_Allegato] CHECK CONSTRAINT [FK_MB_Allegato_MB_AllegatoTipo_MBAL_MBAT_ID]
GO
ALTER TABLE [dbo].[MB_Allegato]  WITH CHECK ADD  CONSTRAINT [FK_MB_Allegato_MB_Aziende_MBAL_MBAZ_ID] FOREIGN KEY([MBAL_MBAZ_ID])
REFERENCES [dbo].[MB_Aziende] ([MBAZ_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MB_Allegato] CHECK CONSTRAINT [FK_MB_Allegato_MB_Aziende_MBAL_MBAZ_ID]
GO
ALTER TABLE [dbo].[MB_AllegatoTipo]  WITH CHECK ADD  CONSTRAINT [FK_MB_AllegatoTipo_MB_Aziende_MBAT_MBAZ_ID] FOREIGN KEY([MBAT_MBAZ_ID])
REFERENCES [dbo].[MB_Aziende] ([MBAZ_ID])
GO
ALTER TABLE [dbo].[MB_AllegatoTipo] CHECK CONSTRAINT [FK_MB_AllegatoTipo_MB_Aziende_MBAT_MBAZ_ID]
GO
ALTER TABLE [dbo].[MB_Funzioni]  WITH CHECK ADD  CONSTRAINT [FK_MB_Funzioni_MB_Applicazioni] FOREIGN KEY([MBFU_MBMO_ID])
REFERENCES [dbo].[MB_Moduli] ([MBMO_ID])
GO
ALTER TABLE [dbo].[MB_Funzioni] CHECK CONSTRAINT [FK_MB_Funzioni_MB_Applicazioni]
GO
ALTER TABLE [dbo].[MB_Funzioni]  WITH CHECK ADD  CONSTRAINT [FK_MB_Funzioni_MB_Applicazioni_MBFU_MBAP_ID] FOREIGN KEY([MBFU_MBAP_ID])
REFERENCES [dbo].[MB_Applicazioni] ([MBAP_ID])
GO
ALTER TABLE [dbo].[MB_Funzioni] CHECK CONSTRAINT [FK_MB_Funzioni_MB_Applicazioni_MBFU_MBAP_ID]
GO
ALTER TABLE [dbo].[MB_Moduli]  WITH CHECK ADD  CONSTRAINT [FK_MB_Moduli_MB_Applicazioni_MBMO_MBAP_ID] FOREIGN KEY([MBMO_MBAP_ID])
REFERENCES [dbo].[MB_Applicazioni] ([MBAP_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MB_Moduli] CHECK CONSTRAINT [FK_MB_Moduli_MB_Applicazioni_MBMO_MBAP_ID]
GO
ALTER TABLE [dbo].[MB_RuoliFunzioni]  WITH CHECK ADD  CONSTRAINT [FK_MB_RuoliFunzioni_MB_Funzioni_MBFU_ID] FOREIGN KEY([MBFU_ID])
REFERENCES [dbo].[MB_Funzioni] ([MBFU_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MB_RuoliFunzioni] CHECK CONSTRAINT [FK_MB_RuoliFunzioni_MB_Funzioni_MBFU_ID]
GO
ALTER TABLE [dbo].[MB_RuoliFunzioni]  WITH CHECK ADD  CONSTRAINT [FK_MB_RuoliFunzioni_MB_Ruolo_MBRO_ID] FOREIGN KEY([MBRO_ID])
REFERENCES [dbo].[MB_Ruolo] ([MBRO_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MB_RuoliFunzioni] CHECK CONSTRAINT [FK_MB_RuoliFunzioni_MB_Ruolo_MBRO_ID]
GO
ALTER TABLE [dbo].[UserData]  WITH CHECK ADD  CONSTRAINT [FK_UserData_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserData] CHECK CONSTRAINT [FK_UserData_Users_UserId]
GO
ALTER TABLE [dbo].[UsersMB_Figura]  WITH CHECK ADD  CONSTRAINT [FK_UsersMB_Figura_MB_Figura_MBFG_ID] FOREIGN KEY([MBFG_ID])
REFERENCES [dbo].[MB_Figura] ([MBFG_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersMB_Figura] CHECK CONSTRAINT [FK_UsersMB_Figura_MB_Figura_MBFG_ID]
GO
ALTER TABLE [dbo].[UsersMB_Figura]  WITH CHECK ADD  CONSTRAINT [FK_UsersMB_Figura_Users_UsersId] FOREIGN KEY([UsersId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersMB_Figura] CHECK CONSTRAINT [FK_UsersMB_Figura_Users_UsersId]
GO
ALTER TABLE [dbo].[UsersMB_Ruoli]  WITH CHECK ADD  CONSTRAINT [FK_UsersMB_Ruoli_MB_Ruolo_MBRO_ID] FOREIGN KEY([MBRO_ID])
REFERENCES [dbo].[MB_Ruolo] ([MBRO_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersMB_Ruoli] CHECK CONSTRAINT [FK_UsersMB_Ruoli_MB_Ruolo_MBRO_ID]
GO
ALTER TABLE [dbo].[UsersMB_Ruoli]  WITH CHECK ADD  CONSTRAINT [FK_UsersMB_Ruoli_Users_UsersId] FOREIGN KEY([UsersId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersMB_Ruoli] CHECK CONSTRAINT [FK_UsersMB_Ruoli_Users_UsersId]
GO
/****** Object:  StoredProcedure [dbo].[BuildMenu]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BuildMenu]
	@IdUtente int
As

Begin
	WITH MenuCTE (Code, IdMenu, IdParentMenu, ParentMenu, Name, Lvl)
	AS
	(
		-- Anchor member
		SELECT m.MBFU_Code, m.MBFU_ID, m.MBFU_Parent_ID, CAST('' AS varchar) AS ParentMenu, m.MBFU_Descrizione, 0 AS Lvl
		FROM dbo.MB_Funzioni AS m
		WHERE CAST(m.MBFU_Parent_ID AS INT) = 1 and m.MBFU_ID in ( select MBFU_ID 
																	from MB_Funzioni 
																	where MBFU_ID in (select MBFU_ID 
																						from mb_ruolifunzioni 
																						where mbro_id in (select UsersId 
																											from UsersMB_Ruoli 
																											where UsersId = @IdUtente)))
		UNION ALL

		-- Recursive member
		SELECT m.MBFU_Code, m.MBFU_ID, m.MBFU_Parent_ID, CAST(mc.Name AS varchar) AS ParentMenu, m.MBFU_Descrizione, Lvl + 1 AS Lvl
		FROM dbo.MB_Funzioni AS m
		INNER JOIN MenuCTE AS mc
			ON CAST(m.MBFU_Parent_ID AS INT) = mc.IdMenu
	)
	SELECT Code, IdMenu, IdParentMenu, ParentMenu, REPLICATE('...', Lvl) + Name
	FROM MenuCTE
	--WHERE Lvl > 0
	ORDER BY IdParentMenu

End

GO
/****** Object:  StoredProcedure [dbo].[Testing]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Testing] 
AS
BEGIN
	Select Users.Id, People.[Name]
	From Users
	inner join People on Users.Id = People.[User_Id]
END


GO
/****** Object:  StoredProcedure [dbo].[Testing2]    Script Date: 05/05/2020 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Testing2] 
AS
BEGIN
	Select Users.Id, People.[Name]
	From Users
	inner join People on Users.Id = People.[User_Id]
END


GO
USE [master]
GO
ALTER DATABASE [ACL] SET  READ_WRITE 
GO
