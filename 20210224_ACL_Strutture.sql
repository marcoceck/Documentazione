USE [ACL]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[ED_Allegato]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[ED_AllegatoFile]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[ED_Categoria]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[ED_Post]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[ET_Categoria]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[ET_Evento]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[GlyphiconLTE]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[Log]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_Allegato]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_AllegatoTipo]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_Applicazioni]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_Aziende]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_FascicoloTipoRiga]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_Figura]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_Funzioni]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_Menu]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_Moduli]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_RuoliFunzioni]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[MB_Ruolo]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[NV_DevelopD]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NV_DevelopD](
	[NVDD_ID] [int] IDENTITY(1,1) NOT NULL,
	[NVDD_NVDT_ID] [int] NOT NULL,
	[NVDD_TypeObject] [nvarchar](max) NULL,
	[NVDD_NrObject] [int] NOT NULL,
	[NVDD_DateTimeOriginal] [datetime2](7) NULL,
	[NVDD_Note] [nvarchar](max) NULL,
	[NVDD_DataRilascio] [datetime2](7) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[NVDD_Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_NV_DevelopD] PRIMARY KEY CLUSTERED 
(
	[NVDD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NV_DevelopT]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NV_DevelopT](
	[NVDT_ID] [int] IDENTITY(1,1) NOT NULL,
	[NVDT_ProjectName] [nvarchar](max) NULL,
	[NVDT_Description] [nvarchar](max) NULL,
	[NVDT_MBUS_ID] [int] NOT NULL,
	[NVDT_Data] [datetime2](7) NOT NULL,
	[NVDT_DataRilascio] [datetime2](7) NULL,
	[NVDT_Note] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[NVDT_ReferenteEsterno] [nvarchar](max) NULL,
	[NVDT_ReferenteInterno] [nvarchar](max) NULL,
 CONSTRAINT [PK_NV_DevelopT] PRIMARY KEY CLUSTERED 
(
	[NVDT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NV_DevelopTAllegatoFile]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NV_DevelopTAllegatoFile](
	[NVDF_ID] [int] IDENTITY(1,1) NOT NULL,
	[NVDF_FileName] [nvarchar](max) NULL,
	[NVDF_NVDT_ID] [int] NOT NULL,
	[NVDF_Guid] [uniqueidentifier] NOT NULL,
	[NVDF_Syncro] [bit] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_NV_DevelopTAllegatoFile] PRIMARY KEY CLUSTERED 
(
	[NVDF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NV_ObjectStatus]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NV_ObjectStatus](
	[NVOS_ID] [int] IDENTITY(1,1) NOT NULL,
	[NVOS_Execution] [datetime2](7) NOT NULL,
	[NVOS_ObjectType] [nvarchar](max) NULL,
	[NVOS_ObjectId] [int] NOT NULL,
	[NVOS_Name] [nvarchar](max) NULL,
	[NVOS_DatetimeP] [datetime2](7) NOT NULL,
	[NVOS_LockIdP] [nvarchar](max) NULL,
	[NVOS_DatetimeC] [datetime2](7) NOT NULL,
	[NVOS_LockIdC] [nvarchar](max) NULL,
	[NVOS_DatetimeS] [datetime2](7) NOT NULL,
	[NVOS_LockIdS] [nvarchar](max) NULL,
	[NVOS_Different] [bit] NOT NULL,
	[NVOS_DifferentText] [nvarchar](max) NULL,
 CONSTRAINT [PK_NV_ObjectStatus] PRIMARY KEY CLUSTERED 
(
	[NVOS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NV_ObjectStatusElab]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NV_ObjectStatusElab](
	[NVOE_ID] [int] IDENTITY(1,1) NOT NULL,
	[NVOE_Execution] [datetime2](7) NOT NULL,
	[NVOE_ExecutionStart] [datetime2](7) NOT NULL,
	[NVOE_ExecutionEnd] [datetime2](7) NULL,
 CONSTRAINT [PK_NV_ObjectStatusElab] PRIMARY KEY CLUSTERED 
(
	[NVOE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RS_Documento]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RS_Documento](
	[RSDC_ID] [int] IDENTITY(1,1) NOT NULL,
	[RSDC_MBUS_ID] [int] NOT NULL,
	[RSDC_Chiave] [nvarchar](max) NULL,
	[RSDC_Valore] [nvarchar](max) NULL,
	[RSDC_Riferimento] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_RS_Documento] PRIMARY KEY CLUSTERED 
(
	[RSDC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_Atleta]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Atleta](
	[SCAL_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCAL_Cognome] [nvarchar](max) NULL,
	[SCAL_Nome] [nvarchar](max) NULL,
	[SCAL_DataNascita] [datetime2](7) NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[SCAL_CittaNascita] [nvarchar](max) NULL,
	[SCAL_Cittadinanza] [nvarchar](max) NULL,
	[SCAL_Photo] [nvarchar](max) NULL,
	[SCAL_ProvinciaNascita] [nvarchar](max) NULL,
	[SCAL_Recapiti] [nvarchar](max) NULL,
	[SCAL_RecapitoAtleta] [nvarchar](max) NULL,
	[SCAL_RecapitoMadre] [nvarchar](max) NULL,
	[SCAL_RecapitoPadre] [nvarchar](max) NULL,
	[SCAL_ResCAP] [nvarchar](max) NULL,
	[SCAL_ResCitta] [nvarchar](max) NULL,
	[SCAL_ResIndirizzo] [nvarchar](max) NULL,
	[SCAL_ResProvincia] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
 CONSTRAINT [PK_SC_Atleta] PRIMARY KEY CLUSTERED 
(
	[SCAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_Categoria]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Categoria](
	[SCCT_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCCT_Codice] [nvarchar](max) NULL,
	[SCCT_Descrizione] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[SC_StagioneSCSG_ID] [int] NULL,
	[SCCT_Color] [nvarchar](max) NULL,
 CONSTRAINT [PK_SC_Categoria] PRIMARY KEY CLUSTERED 
(
	[SCCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_CertificatoMedico]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_CertificatoMedico](
	[SCCM_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCCM_SCAL_ID] [int] NOT NULL,
	[SCCM_Scadenza] [datetime2](7) NOT NULL,
	[SCCM_FileName] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SC_CertificatoMedico] PRIMARY KEY CLUSTERED 
(
	[SCCM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_RegistroAllenamento]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_RegistroAllenamento](
	[SCRA_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCRA_SCSC_ID] [int] NOT NULL,
	[SCRA_SCCT_ID] [int] NOT NULL,
	[SCRA_Start] [datetime2](7) NOT NULL,
	[SCRA_End] [datetime2](7) NOT NULL,
	[SCRA_DurataH] [decimal](4, 2) NOT NULL,
	[SCRA_Note] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[SCRA_SCSG_ID] [int] NOT NULL,
	[SCRA_Recurrency] [nvarchar](max) NULL,
 CONSTRAINT [PK_SC_RegistroAllenamento] PRIMARY KEY CLUSTERED 
(
	[SCRA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_RegistroAllenamentoAtleta]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_RegistroAllenamentoAtleta](
	[SCAA_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCAA_SCRA_ID] [int] NOT NULL,
	[SCAA_SCAL_ID] [int] NOT NULL,
	[SCAA_Note] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SC_RegistroAllenamentoAtleta] PRIMARY KEY CLUSTERED 
(
	[SCAA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_RegistroAllenamentoStaff]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_RegistroAllenamentoStaff](
	[SCAS_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCAS_SCRA_ID] [int] NOT NULL,
	[SCAS_SCFF_ID] [int] NOT NULL,
	[SCAS_Note] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SC_RegistroAllenamentoStaff] PRIMARY KEY CLUSTERED 
(
	[SCAS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_Societa]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Societa](
	[SCSC_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCSC_RagioneSociale] [nvarchar](max) NULL,
	[SCSC_Code] [nvarchar](max) NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[SCSC_Default] [bit] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
 CONSTRAINT [PK_SC_Societa] PRIMARY KEY CLUSTERED 
(
	[SCSC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_Squadra]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Squadra](
	[SCQU_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCQU_Descrizione] [nvarchar](max) NULL,
	[SCQU_SCSC_ID] [int] NOT NULL,
	[SCQU_SCSG_ID] [int] NOT NULL,
	[SCQU_SCCT_ID] [int] NOT NULL,
	[SCQU_Note] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[SCQU_Color] [nvarchar](max) NULL,
 CONSTRAINT [PK_SC_Squadra] PRIMARY KEY CLUSTERED 
(
	[SCQU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_SquadraStaff]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_SquadraStaff](
	[SCQS_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCQS_SCQU_ID] [int] NOT NULL,
	[SCQS_SCFF_ID] [int] NOT NULL,
	[SCQS_Note] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SC_SquadraStaff] PRIMARY KEY CLUSTERED 
(
	[SCQS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_Staff]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Staff](
	[SCFF_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCFF_Cognome] [nvarchar](max) NULL,
	[SCFF_Nome] [nvarchar](max) NULL,
	[SCFF_Recapiti] [nvarchar](max) NULL,
	[SCFF_eMail1] [nvarchar](max) NULL,
	[SCFF_eMail2] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[SCFF_UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_SC_Staff] PRIMARY KEY CLUSTERED 
(
	[SCFF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_Stagione]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Stagione](
	[SCSG_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCSG_Descrizione] [nvarchar](max) NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[SCSG_AnnoFine] [int] NOT NULL,
	[SCSG_AnnoInizio] [int] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
 CONSTRAINT [PK_SC_Stagione] PRIMARY KEY CLUSTERED 
(
	[SCSG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_Tessera]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_Tessera](
	[SCTS_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCTS_NrCartellino] [nvarchar](max) NULL,
	[SCTS_SCAL_ID] [int] NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[SCTS_SCSC_ID] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[SCTS_SCCT_ID] [int] NULL,
	[SCTS_SCSG_ID] [int] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
 CONSTRAINT [PK_SC_Tessera] PRIMARY KEY CLUSTERED 
(
	[SCTS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_ValutazioneDModello]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ValutazioneDModello](
	[SCLD_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCLD_SCLT_ID] [int] NOT NULL,
	[SCLD_Raggruppamento] [nvarchar](max) NULL,
	[SCLD_CaratteristicaCode] [nvarchar](max) NULL,
	[SCLD_CaratteristicaDesc] [nvarchar](max) NULL,
	[SCLD_Rating] [int] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SC_ValutazioneDModello] PRIMARY KEY CLUSTERED 
(
	[SCLD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_ValutazioneDScheda]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ValutazioneDScheda](
	[SCVD_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCVD_SCVT_ID] [int] NOT NULL,
	[SCVD_Raggruppamento] [nvarchar](max) NULL,
	[SCVD_CaratteristicaCode] [nvarchar](max) NULL,
	[SCVD_CaratteristicaDesc] [nvarchar](max) NULL,
	[SCVD_Rating] [int] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[SCVD_RatingMax] [int] NOT NULL,
 CONSTRAINT [PK_SC_ValutazioneDScheda] PRIMARY KEY CLUSTERED 
(
	[SCVD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_ValutazioneTModello]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ValutazioneTModello](
	[SCLT_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCLT_Descrizione] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SC_ValutazioneTModello] PRIMARY KEY CLUSTERED 
(
	[SCLT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SC_ValutazioneTScheda]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC_ValutazioneTScheda](
	[SCVT_ID] [int] IDENTITY(1,1) NOT NULL,
	[SCVT_Descrizione] [nvarchar](max) NULL,
	[SCVT_SCAL_ID] [int] NOT NULL,
	[SCVT_SCLT_ID] [int] NOT NULL,
	[SCVT_SCFF_ID] [int] NOT NULL,
	[SCVT_DataValutazione] [datetime2](7) NOT NULL,
	[SCVT_Note] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SC_ValutazioneTScheda] PRIMARY KEY CLUSTERED 
(
	[SCVT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserData]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 24/02/2021 15:57:24 ******/
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
	[IMap] [nvarchar](max) NULL,
	[IsPecMail] [bit] NOT NULL,
	[PwdEMail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersMB_Figura]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[UsersMB_Ruoli]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  Table [dbo].[WF_Process]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WF_Process](
	[WFPR_ID] [int] IDENTITY(1,1) NOT NULL,
	[WFPR_MBAZ_ID] [int] NOT NULL,
	[WFPR_Description] [nvarchar](max) NULL,
	[WFPR_BpmnFile] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_WF_Process] PRIMARY KEY CLUSTERED 
(
	[WFPR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WF_Step]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WF_Step](
	[WFST_ID] [int] IDENTITY(1,1) NOT NULL,
	[WFST_MBAZ_ID] [int] NOT NULL,
	[WFST_WFPR_ID] [int] NOT NULL,
	[WFST_Description] [nvarchar](max) NULL,
	[WFST_Progressive] [int] NOT NULL,
	[WFST_Decisional] [bit] NOT NULL,
	[WFST_NoApply] [bit] NOT NULL,
	[WFST_CheckPoint] [bit] NOT NULL,
	[WFST_DiagramCode] [nvarchar](max) NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[WF_ProcessWFPR_ID] [int] NULL,
 CONSTRAINT [PK_WF_Step] PRIMARY KEY CLUSTERED 
(
	[WFST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WF_StepSuccession]    Script Date: 24/02/2021 15:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WF_StepSuccession](
	[WFSS_ID] [int] IDENTITY(1,1) NOT NULL,
	[WFSS_MBAZ_ID] [int] NOT NULL,
	[WFSS_WFPR_ID] [int] NOT NULL,
	[WFSS_WFST_ID] [int] NULL,
	[WFSS_WFST_IDSucc] [int] NULL,
	[WFSS_TrueFalse] [bit] NOT NULL,
	[WFSS_IsJoin] [bit] NOT NULL,
	[UtenteCreazione] [int] NOT NULL,
	[DataOraCreazione] [datetime2](7) NOT NULL,
	[UtenteUltimaModifica] [int] NOT NULL,
	[DataOraUltimaModifica] [datetime2](7) NOT NULL,
	[WF_ProcessWFPR_ID] [int] NULL,
 CONSTRAINT [PK_WF_StepSuccession] PRIMARY KEY CLUSTERED 
(
	[WFSS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MB_Funzioni] ADD  DEFAULT ((0)) FOR [MBFU_BackEnd]
GO
ALTER TABLE [dbo].[MB_Menu] ADD  CONSTRAINT [DF__MB_Menu__MBMU_Co__351DDF8C]  DEFAULT ((0)) FOR [MBMU_Common]
GO
ALTER TABLE [dbo].[MB_Menu] ADD  CONSTRAINT [DF__MB_Menu__MBMU_Pr__361203C5]  DEFAULT ((0)) FOR [MBMU_Progressivo]
GO
ALTER TABLE [dbo].[NV_DevelopD] ADD  DEFAULT ((0)) FOR [NVDD_Deleted]
GO
ALTER TABLE [dbo].[SC_Atleta] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DataOraCreazione]
GO
ALTER TABLE [dbo].[SC_Atleta] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DataOraUltimaModifica]
GO
ALTER TABLE [dbo].[SC_Atleta] ADD  DEFAULT ((0)) FOR [UtenteCreazione]
GO
ALTER TABLE [dbo].[SC_Atleta] ADD  DEFAULT ((0)) FOR [UtenteUltimaModifica]
GO
ALTER TABLE [dbo].[SC_RegistroAllenamento] ADD  DEFAULT ((0)) FOR [SCRA_SCSG_ID]
GO
ALTER TABLE [dbo].[SC_Societa] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DataOraCreazione]
GO
ALTER TABLE [dbo].[SC_Societa] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DataOraUltimaModifica]
GO
ALTER TABLE [dbo].[SC_Societa] ADD  DEFAULT ((0)) FOR [SCSC_Default]
GO
ALTER TABLE [dbo].[SC_Societa] ADD  DEFAULT ((0)) FOR [UtenteCreazione]
GO
ALTER TABLE [dbo].[SC_Societa] ADD  DEFAULT ((0)) FOR [UtenteUltimaModifica]
GO
ALTER TABLE [dbo].[SC_Stagione] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DataOraCreazione]
GO
ALTER TABLE [dbo].[SC_Stagione] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DataOraUltimaModifica]
GO
ALTER TABLE [dbo].[SC_Stagione] ADD  DEFAULT ((0)) FOR [SCSG_AnnoFine]
GO
ALTER TABLE [dbo].[SC_Stagione] ADD  DEFAULT ((0)) FOR [SCSG_AnnoInizio]
GO
ALTER TABLE [dbo].[SC_Stagione] ADD  DEFAULT ((0)) FOR [UtenteCreazione]
GO
ALTER TABLE [dbo].[SC_Stagione] ADD  DEFAULT ((0)) FOR [UtenteUltimaModifica]
GO
ALTER TABLE [dbo].[SC_Tessera] ADD  DEFAULT ((0)) FOR [SCTS_SCAL_ID]
GO
ALTER TABLE [dbo].[SC_Tessera] ADD  DEFAULT ((0)) FOR [UtenteUltimaModifica]
GO
ALTER TABLE [dbo].[SC_Tessera] ADD  DEFAULT ((0)) FOR [SCTS_SCSC_ID]
GO
ALTER TABLE [dbo].[SC_Tessera] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DataOraCreazione]
GO
ALTER TABLE [dbo].[SC_Tessera] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DataOraUltimaModifica]
GO
ALTER TABLE [dbo].[SC_Tessera] ADD  DEFAULT ((0)) FOR [SCTS_SCSG_ID]
GO
ALTER TABLE [dbo].[SC_Tessera] ADD  DEFAULT ((0)) FOR [UtenteCreazione]
GO
ALTER TABLE [dbo].[SC_ValutazioneDScheda] ADD  DEFAULT ((0)) FOR [SCVD_RatingMax]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DateExpire]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [LastAccess]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [LastUpdatePwd]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsValid]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsPecMail]
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
ALTER TABLE [dbo].[NV_DevelopD]  WITH CHECK ADD  CONSTRAINT [FK_NV_DevelopD_NV_DevelopT_NVDD_NVDT_ID] FOREIGN KEY([NVDD_NVDT_ID])
REFERENCES [dbo].[NV_DevelopT] ([NVDT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NV_DevelopD] CHECK CONSTRAINT [FK_NV_DevelopD_NV_DevelopT_NVDD_NVDT_ID]
GO
ALTER TABLE [dbo].[NV_DevelopTAllegatoFile]  WITH CHECK ADD  CONSTRAINT [FK_NV_DevelopTAllegatoFile_NV_DevelopT_NVDF_NVDT_ID] FOREIGN KEY([NVDF_NVDT_ID])
REFERENCES [dbo].[NV_DevelopT] ([NVDT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NV_DevelopTAllegatoFile] CHECK CONSTRAINT [FK_NV_DevelopTAllegatoFile_NV_DevelopT_NVDF_NVDT_ID]
GO
ALTER TABLE [dbo].[SC_Categoria]  WITH CHECK ADD  CONSTRAINT [FK_SC_Categoria_SC_Stagione_SC_StagioneSCSG_ID] FOREIGN KEY([SC_StagioneSCSG_ID])
REFERENCES [dbo].[SC_Stagione] ([SCSG_ID])
GO
ALTER TABLE [dbo].[SC_Categoria] CHECK CONSTRAINT [FK_SC_Categoria_SC_Stagione_SC_StagioneSCSG_ID]
GO
ALTER TABLE [dbo].[SC_CertificatoMedico]  WITH CHECK ADD  CONSTRAINT [FK_SC_CertificatoMedico_SC_Atleta_SCCM_SCAL_ID] FOREIGN KEY([SCCM_SCAL_ID])
REFERENCES [dbo].[SC_Atleta] ([SCAL_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_CertificatoMedico] CHECK CONSTRAINT [FK_SC_CertificatoMedico_SC_Atleta_SCCM_SCAL_ID]
GO
ALTER TABLE [dbo].[SC_RegistroAllenamento]  WITH CHECK ADD  CONSTRAINT [FK_SC_RegistroAllenamento_SC_Categoria_SCRA_SCCT_ID] FOREIGN KEY([SCRA_SCCT_ID])
REFERENCES [dbo].[SC_Categoria] ([SCCT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_RegistroAllenamento] CHECK CONSTRAINT [FK_SC_RegistroAllenamento_SC_Categoria_SCRA_SCCT_ID]
GO
ALTER TABLE [dbo].[SC_RegistroAllenamento]  WITH CHECK ADD  CONSTRAINT [FK_SC_RegistroAllenamento_SC_Societa_SCRA_SCSC_ID] FOREIGN KEY([SCRA_SCSC_ID])
REFERENCES [dbo].[SC_Societa] ([SCSC_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_RegistroAllenamento] CHECK CONSTRAINT [FK_SC_RegistroAllenamento_SC_Societa_SCRA_SCSC_ID]
GO
ALTER TABLE [dbo].[SC_RegistroAllenamentoAtleta]  WITH CHECK ADD  CONSTRAINT [FK_SC_RegistroAllenamentoAtleta_SC_Atleta_SCAA_SCAL_ID] FOREIGN KEY([SCAA_SCAL_ID])
REFERENCES [dbo].[SC_Atleta] ([SCAL_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_RegistroAllenamentoAtleta] CHECK CONSTRAINT [FK_SC_RegistroAllenamentoAtleta_SC_Atleta_SCAA_SCAL_ID]
GO
ALTER TABLE [dbo].[SC_RegistroAllenamentoAtleta]  WITH CHECK ADD  CONSTRAINT [FK_SC_RegistroAllenamentoAtleta_SC_RegistroAllenamento_SCAA_SCRA_ID] FOREIGN KEY([SCAA_SCRA_ID])
REFERENCES [dbo].[SC_RegistroAllenamento] ([SCRA_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_RegistroAllenamentoAtleta] CHECK CONSTRAINT [FK_SC_RegistroAllenamentoAtleta_SC_RegistroAllenamento_SCAA_SCRA_ID]
GO
ALTER TABLE [dbo].[SC_RegistroAllenamentoStaff]  WITH CHECK ADD  CONSTRAINT [FK_SC_RegistroAllenamentoStaff_SC_RegistroAllenamento_SCAS_SCRA_ID] FOREIGN KEY([SCAS_SCRA_ID])
REFERENCES [dbo].[SC_RegistroAllenamento] ([SCRA_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_RegistroAllenamentoStaff] CHECK CONSTRAINT [FK_SC_RegistroAllenamentoStaff_SC_RegistroAllenamento_SCAS_SCRA_ID]
GO
ALTER TABLE [dbo].[SC_RegistroAllenamentoStaff]  WITH CHECK ADD  CONSTRAINT [FK_SC_RegistroAllenamentoStaff_SC_Staff_SCAS_SCFF_ID] FOREIGN KEY([SCAS_SCFF_ID])
REFERENCES [dbo].[SC_Staff] ([SCFF_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_RegistroAllenamentoStaff] CHECK CONSTRAINT [FK_SC_RegistroAllenamentoStaff_SC_Staff_SCAS_SCFF_ID]
GO
ALTER TABLE [dbo].[SC_Squadra]  WITH CHECK ADD  CONSTRAINT [FK_SC_Squadra_SC_Categoria_SCQU_SCCT_ID] FOREIGN KEY([SCQU_SCCT_ID])
REFERENCES [dbo].[SC_Categoria] ([SCCT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_Squadra] CHECK CONSTRAINT [FK_SC_Squadra_SC_Categoria_SCQU_SCCT_ID]
GO
ALTER TABLE [dbo].[SC_Squadra]  WITH CHECK ADD  CONSTRAINT [FK_SC_Squadra_SC_Societa_SCQU_SCSC_ID] FOREIGN KEY([SCQU_SCSC_ID])
REFERENCES [dbo].[SC_Societa] ([SCSC_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_Squadra] CHECK CONSTRAINT [FK_SC_Squadra_SC_Societa_SCQU_SCSC_ID]
GO
ALTER TABLE [dbo].[SC_Squadra]  WITH CHECK ADD  CONSTRAINT [FK_SC_Squadra_SC_Stagione_SCQU_SCSG_ID] FOREIGN KEY([SCQU_SCSG_ID])
REFERENCES [dbo].[SC_Stagione] ([SCSG_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_Squadra] CHECK CONSTRAINT [FK_SC_Squadra_SC_Stagione_SCQU_SCSG_ID]
GO
ALTER TABLE [dbo].[SC_SquadraStaff]  WITH CHECK ADD  CONSTRAINT [FK_SC_SquadraStaff_SC_Squadra_SCQS_SCQU_ID] FOREIGN KEY([SCQS_SCQU_ID])
REFERENCES [dbo].[SC_Squadra] ([SCQU_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_SquadraStaff] CHECK CONSTRAINT [FK_SC_SquadraStaff_SC_Squadra_SCQS_SCQU_ID]
GO
ALTER TABLE [dbo].[SC_SquadraStaff]  WITH CHECK ADD  CONSTRAINT [FK_SC_SquadraStaff_SC_Staff_SCQS_SCFF_ID] FOREIGN KEY([SCQS_SCFF_ID])
REFERENCES [dbo].[SC_Staff] ([SCFF_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_SquadraStaff] CHECK CONSTRAINT [FK_SC_SquadraStaff_SC_Staff_SCQS_SCFF_ID]
GO
ALTER TABLE [dbo].[SC_Tessera]  WITH CHECK ADD  CONSTRAINT [FK_SC_Tessera_SC_Atleta_SCTS_SCAL_ID] FOREIGN KEY([SCTS_SCAL_ID])
REFERENCES [dbo].[SC_Atleta] ([SCAL_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_Tessera] CHECK CONSTRAINT [FK_SC_Tessera_SC_Atleta_SCTS_SCAL_ID]
GO
ALTER TABLE [dbo].[SC_Tessera]  WITH CHECK ADD  CONSTRAINT [FK_SC_Tessera_SC_Categoria_SCTS_SCCT_ID] FOREIGN KEY([SCTS_SCCT_ID])
REFERENCES [dbo].[SC_Categoria] ([SCCT_ID])
GO
ALTER TABLE [dbo].[SC_Tessera] CHECK CONSTRAINT [FK_SC_Tessera_SC_Categoria_SCTS_SCCT_ID]
GO
ALTER TABLE [dbo].[SC_Tessera]  WITH CHECK ADD  CONSTRAINT [FK_SC_Tessera_SC_Societa_SCTS_SCSC_ID] FOREIGN KEY([SCTS_SCSC_ID])
REFERENCES [dbo].[SC_Societa] ([SCSC_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_Tessera] CHECK CONSTRAINT [FK_SC_Tessera_SC_Societa_SCTS_SCSC_ID]
GO
ALTER TABLE [dbo].[SC_Tessera]  WITH CHECK ADD  CONSTRAINT [FK_SC_Tessera_SC_Stagione_SCTS_SCSG_ID] FOREIGN KEY([SCTS_SCSG_ID])
REFERENCES [dbo].[SC_Stagione] ([SCSG_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_Tessera] CHECK CONSTRAINT [FK_SC_Tessera_SC_Stagione_SCTS_SCSG_ID]
GO
ALTER TABLE [dbo].[SC_ValutazioneDModello]  WITH CHECK ADD  CONSTRAINT [FK_SC_ValutazioneDModello_SC_ValutazioneTModello_SCLD_SCLT_ID] FOREIGN KEY([SCLD_SCLT_ID])
REFERENCES [dbo].[SC_ValutazioneTModello] ([SCLT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_ValutazioneDModello] CHECK CONSTRAINT [FK_SC_ValutazioneDModello_SC_ValutazioneTModello_SCLD_SCLT_ID]
GO
ALTER TABLE [dbo].[SC_ValutazioneDScheda]  WITH CHECK ADD  CONSTRAINT [FK_SC_ValutazioneDScheda_SC_ValutazioneTScheda_SCVD_SCVT_ID] FOREIGN KEY([SCVD_SCVT_ID])
REFERENCES [dbo].[SC_ValutazioneTScheda] ([SCVT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_ValutazioneDScheda] CHECK CONSTRAINT [FK_SC_ValutazioneDScheda_SC_ValutazioneTScheda_SCVD_SCVT_ID]
GO
ALTER TABLE [dbo].[SC_ValutazioneTScheda]  WITH CHECK ADD  CONSTRAINT [FK_SC_ValutazioneTScheda_SC_Atleta_SCVT_SCAL_ID] FOREIGN KEY([SCVT_SCAL_ID])
REFERENCES [dbo].[SC_Atleta] ([SCAL_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_ValutazioneTScheda] CHECK CONSTRAINT [FK_SC_ValutazioneTScheda_SC_Atleta_SCVT_SCAL_ID]
GO
ALTER TABLE [dbo].[SC_ValutazioneTScheda]  WITH CHECK ADD  CONSTRAINT [FK_SC_ValutazioneTScheda_SC_Staff_SCVT_SCFF_ID] FOREIGN KEY([SCVT_SCFF_ID])
REFERENCES [dbo].[SC_Staff] ([SCFF_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_ValutazioneTScheda] CHECK CONSTRAINT [FK_SC_ValutazioneTScheda_SC_Staff_SCVT_SCFF_ID]
GO
ALTER TABLE [dbo].[SC_ValutazioneTScheda]  WITH CHECK ADD  CONSTRAINT [FK_SC_ValutazioneTScheda_SC_ValutazioneTModello_SCVT_SCLT_ID] FOREIGN KEY([SCVT_SCLT_ID])
REFERENCES [dbo].[SC_ValutazioneTModello] ([SCLT_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SC_ValutazioneTScheda] CHECK CONSTRAINT [FK_SC_ValutazioneTScheda_SC_ValutazioneTModello_SCVT_SCLT_ID]
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
ALTER TABLE [dbo].[WF_Process]  WITH CHECK ADD  CONSTRAINT [FK_WF_Process_MB_Aziende_WFPR_MBAZ_ID] FOREIGN KEY([WFPR_MBAZ_ID])
REFERENCES [dbo].[MB_Aziende] ([MBAZ_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WF_Process] CHECK CONSTRAINT [FK_WF_Process_MB_Aziende_WFPR_MBAZ_ID]
GO
ALTER TABLE [dbo].[WF_Step]  WITH CHECK ADD  CONSTRAINT [FK_WF_Step_MB_Aziende_WFST_MBAZ_ID] FOREIGN KEY([WFST_MBAZ_ID])
REFERENCES [dbo].[MB_Aziende] ([MBAZ_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WF_Step] CHECK CONSTRAINT [FK_WF_Step_MB_Aziende_WFST_MBAZ_ID]
GO
ALTER TABLE [dbo].[WF_Step]  WITH CHECK ADD  CONSTRAINT [FK_WF_Step_WF_Process_WF_ProcessWFPR_ID] FOREIGN KEY([WF_ProcessWFPR_ID])
REFERENCES [dbo].[WF_Process] ([WFPR_ID])
GO
ALTER TABLE [dbo].[WF_Step] CHECK CONSTRAINT [FK_WF_Step_WF_Process_WF_ProcessWFPR_ID]
GO
ALTER TABLE [dbo].[WF_StepSuccession]  WITH CHECK ADD  CONSTRAINT [FK_WF_StepSuccession_MB_Aziende_WFSS_MBAZ_ID] FOREIGN KEY([WFSS_MBAZ_ID])
REFERENCES [dbo].[MB_Aziende] ([MBAZ_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WF_StepSuccession] CHECK CONSTRAINT [FK_WF_StepSuccession_MB_Aziende_WFSS_MBAZ_ID]
GO
ALTER TABLE [dbo].[WF_StepSuccession]  WITH CHECK ADD  CONSTRAINT [FK_WF_StepSuccession_WF_Process_WF_ProcessWFPR_ID] FOREIGN KEY([WF_ProcessWFPR_ID])
REFERENCES [dbo].[WF_Process] ([WFPR_ID])
GO
ALTER TABLE [dbo].[WF_StepSuccession] CHECK CONSTRAINT [FK_WF_StepSuccession_WF_Process_WF_ProcessWFPR_ID]
GO
ALTER TABLE [dbo].[WF_StepSuccession]  WITH CHECK ADD  CONSTRAINT [FK_WF_StepSuccession_WF_Step_WFSS_WFST_ID] FOREIGN KEY([WFSS_WFST_ID])
REFERENCES [dbo].[WF_Step] ([WFST_ID])
GO
ALTER TABLE [dbo].[WF_StepSuccession] CHECK CONSTRAINT [FK_WF_StepSuccession_WF_Step_WFSS_WFST_ID]
GO
ALTER TABLE [dbo].[WF_StepSuccession]  WITH CHECK ADD  CONSTRAINT [FK_WF_StepSuccession_WF_Step_WFSS_WFST_IDSucc] FOREIGN KEY([WFSS_WFST_IDSucc])
REFERENCES [dbo].[WF_Step] ([WFST_ID])
GO
ALTER TABLE [dbo].[WF_StepSuccession] CHECK CONSTRAINT [FK_WF_StepSuccession_WF_Step_WFSS_WFST_IDSucc]
GO
/****** Object:  StoredProcedure [dbo].[BuildMenu]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  StoredProcedure [dbo].[Testing]    Script Date: 24/02/2021 15:57:24 ******/
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
/****** Object:  StoredProcedure [dbo].[Testing2]    Script Date: 24/02/2021 15:57:24 ******/
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
