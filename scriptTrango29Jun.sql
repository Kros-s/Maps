USE [Trango]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user](
	[ID_USER] [int] IDENTITY(1,1) NOT NULL,
	[TIPO_USUARIO] [varchar](255) NOT NULL,
	[NOMBRE_COMPLETO] [varchar](255) NOT NULL,
	[USERNAME_SYSTEM] [varchar](255) NOT NULL,
	[PASSWORD_SYSTEM] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_USER] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_user] ON
INSERT [dbo].[tbl_user] ([ID_USER], [TIPO_USUARIO], [NOMBRE_COMPLETO], [USERNAME_SYSTEM], [PASSWORD_SYSTEM]) VALUES (1, N'Administrator', N'Admin1', N'admin', N'admin')
INSERT [dbo].[tbl_user] ([ID_USER], [TIPO_USUARIO], [NOMBRE_COMPLETO], [USERNAME_SYSTEM], [PASSWORD_SYSTEM]) VALUES (2, N'Administrador', N'Admin2', N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
/****** Object:  Table [dbo].[tbl_timer]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_timer](
	[ID_TIMER] [int] IDENTITY(1,1) NOT NULL,
	[TIMER_NAME] [varchar](255) NOT NULL,
	[TIMER_VALUE] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TIMER] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_timer] ON
INSERT [dbo].[tbl_timer] ([ID_TIMER], [TIMER_NAME], [TIMER_VALUE]) VALUES (1, N'Timer_f(t)', 15)
INSERT [dbo].[tbl_timer] ([ID_TIMER], [TIMER_NAME], [TIMER_VALUE]) VALUES (2, N'Timer_Alarms', 20)
INSERT [dbo].[tbl_timer] ([ID_TIMER], [TIMER_NAME], [TIMER_VALUE]) VALUES (3, N'Timer_StatisticsSamplePeriod', 20)
SET IDENTITY_INSERT [dbo].[tbl_timer] OFF
/****** Object:  Table [dbo].[tbl_su]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_su](
	[ID_SU] [int] IDENTITY(1,1) NOT NULL,
	[ID_AP] [int] NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[NAME_OBJECT] [varchar](255) NOT NULL,
	[IP_AP] [varchar](255) NOT NULL,
	[IP_SU] [varchar](255) NOT NULL,
	[DESC_] [varchar](255) NOT NULL,
	[MAP] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ru]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ru](
	[ID_RU] [int] IDENTITY(1,1) NOT NULL,
	[ID_MU] [int] NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[NAME_OBJECT] [varchar](255) NOT NULL,
	[IP_MU] [varchar](255) NOT NULL,
	[IP_RU] [varchar](255) NOT NULL,
	[DESC_] [varchar](255) NOT NULL,
	[MAP] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_RU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_mu]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_mu](
	[ID_MU] [int] IDENTITY(1,1) NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[NAME_OBJECT] [varchar](255) NOT NULL,
	[IP] [varchar](255) NOT NULL,
	[DESC_] [varchar](255) NOT NULL,
	[MAP] [varchar](255) NOT NULL,
	[Latitude] [nchar](100) NULL,
	[Longitude] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_MU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Maps]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Maps](
	[Id_Map] [int] IDENTITY(1,1) NOT NULL,
	[MapName] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_Maps] PRIMARY KEY CLUSTERED 
(
	[Id_Map] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Maps] ON
INSERT [dbo].[tbl_Maps] ([Id_Map], [MapName]) VALUES (1, N'mapa1')
INSERT [dbo].[tbl_Maps] ([Id_Map], [MapName]) VALUES (2, N'mapa1')
INSERT [dbo].[tbl_Maps] ([Id_Map], [MapName]) VALUES (3, N'Mapa2')
INSERT [dbo].[tbl_Maps] ([Id_Map], [MapName]) VALUES (4, N'Mapa2')
SET IDENTITY_INSERT [dbo].[tbl_Maps] OFF
/****** Object:  Table [dbo].[tbl_ftiempo_mu_ru]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ftiempo_mu_ru](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[VARIABLE] [varchar](255) NOT NULL,
	[VALOR] [varchar](255) NOT NULL,
	[TIEMPO] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ftiempo_atlas]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ftiempo_atlas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[VARIABLE] [varchar](255) NOT NULL,
	[VALOR] [varchar](255) NOT NULL,
	[TIEMPO] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ftiempo]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ftiempo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[VARIABLE] [varchar](255) NOT NULL,
	[VALOR] [varchar](255) NOT NULL,
	[TIEMPO] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_error]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_error](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FORMA] [varchar](100) NULL,
	[FUNCION] [varchar](100) NULL,
	[FECHA] [varchar](100) NULL,
	[ERROR] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_error] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_error] ON
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (310, N'clsAPM5830S', N'Public Sub New', N'21/01/2014 08:32:45 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (311, N'clsAPM5800S', N'Public Sub New', N'21/01/2014 08:32:46 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (312, N'clsSU5800M', N'Public Sub New', N'21/01/2014 08:32:46 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (313, N'clsSU5830M', N'Public Sub New', N'21/01/2014 08:32:47 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (314, N'clsP5830S_MU_Events', N'Public Sub New', N'21/01/2014 08:32:48 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (315, N'clsP5830S_RU_Events', N'Public Sub New', N'21/01/2014 08:32:48 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (316, N'clsATLAS_MU_Events', N'Public Sub New', N'21/01/2014 08:32:49 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (317, N'clsATLAS_MU_Events', N'Public Sub New', N'21/01/2014 08:32:49 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (318, N'clsAPM5830S', N'Public Sub New', N'21/01/2014 08:34:04 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (319, N'clsAPM5800S', N'Public Sub New', N'21/01/2014 08:34:04 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (320, N'clsSU5800M', N'Public Sub New', N'21/01/2014 08:34:05 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (321, N'clsSU5830M', N'Public Sub New', N'21/01/2014 08:34:05 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (322, N'clsP5830S_MU_Events', N'Public Sub New', N'21/01/2014 08:34:05 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (323, N'clsP5830S_RU_Events', N'Public Sub New', N'21/01/2014 08:34:05 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (324, N'clsATLAS_MU_Events', N'Public Sub New', N'21/01/2014 08:34:05 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (325, N'clsATLAS_MU_Events', N'Public Sub New', N'21/01/2014 08:34:06 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (326, N'clsP5830S_MU_Events', N'Public Sub New', N'21/01/2014 08:34:18 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (327, N'clsP5830S_RU_Events', N'Public Sub New', N'21/01/2014 08:34:19 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (328, N'clsAPM5830S', N'Public Sub New', N'21/01/2014 09:16:25 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (329, N'clsAPM5800S', N'Public Sub New', N'21/01/2014 09:16:27 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (330, N'clsSU5800M', N'Public Sub New', N'21/01/2014 09:16:28 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (331, N'clsSU5830M', N'Public Sub New', N'21/01/2014 09:16:30 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (332, N'clsP5830S_MU_Events', N'Public Sub New', N'21/01/2014 09:16:30 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (333, N'clsP5830S_RU_Events', N'Public Sub New', N'21/01/2014 09:16:31 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (334, N'clsATLAS_MU_Events', N'Public Sub New', N'21/01/2014 09:16:31 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (335, N'clsATLAS_MU_Events', N'Public Sub New', N'21/01/2014 09:16:31 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (336, N'clsAPM5830S', N'Public Sub New', N'21/01/2014 09:21:09 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (337, N'clsAPM5800S', N'Public Sub New', N'21/01/2014 09:21:09 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (338, N'clsSU5800M', N'Public Sub New', N'21/01/2014 09:21:10 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (339, N'clsSU5830M', N'Public Sub New', N'21/01/2014 09:21:10 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (340, N'clsP5830S_MU_Events', N'Public Sub New', N'21/01/2014 09:21:10 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (341, N'clsP5830S_RU_Events', N'Public Sub New', N'21/01/2014 09:21:10 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (342, N'clsATLAS_MU_Events', N'Public Sub New', N'21/01/2014 09:21:10 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (343, N'clsATLAS_MU_Events', N'Public Sub New', N'21/01/2014 09:21:10 p. m.', N'Error al crear una instancia del componente COM con CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} des')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (344, N'clsAPM5830S', N'Public Sub New', N'22/01/2014 10:12:44 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (345, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 10:12:45 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (346, N'clsSU5800M', N'Public Sub New', N'22/01/2014 10:12:45 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (347, N'clsSU5830M', N'Public Sub New', N'22/01/2014 10:12:46 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (348, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 10:12:46 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (349, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 10:12:46 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (350, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 10:12:47 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (351, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 10:12:47 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (352, N'clsAPM5830S', N'Public Sub New', N'22/01/2014 10:13:34 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (353, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 10:13:34 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (354, N'clsSU5800M', N'Public Sub New', N'22/01/2014 10:13:35 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (355, N'clsSU5830M', N'Public Sub New', N'22/01/2014 10:13:35 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (356, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 10:13:35 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (357, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 10:13:36 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (358, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 10:13:36 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (359, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 10:13:37 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (360, N'clsAPM5830S', N'Public Sub New', N'22/01/2014 10:14:13 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (361, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 10:14:14 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (362, N'clsSU5800M', N'Public Sub New', N'22/01/2014 10:14:14 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (363, N'clsSU5830M', N'Public Sub New', N'22/01/2014 10:14:15 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (364, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 10:14:16 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (365, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 10:14:16 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (366, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 10:14:17 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (367, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 10:14:17 a.m.', N'Creating an instance of the COM component with CLSID {9AB8F812-A9F5-4640-8739-D700552D108C} from the')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (368, N'clsAPM5830S', N'Public Sub New', N'22/01/2014 11:14:39 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (369, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 11:14:39 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (370, N'clsSU5800M', N'Public Sub New', N'22/01/2014 11:14:39 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (371, N'clsSU5830M', N'Public Sub New', N'22/01/2014 11:14:39 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (372, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 11:14:39 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (373, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 11:14:39 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (374, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 11:14:39 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (375, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 11:14:40 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (376, N'clsAPM5830S', N'Public Sub New', N'22/01/2014 11:15:55 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (377, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 11:15:58 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (378, N'clsSU5800M', N'Public Sub New', N'22/01/2014 11:15:58 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (379, N'clsSU5830M', N'Public Sub New', N'22/01/2014 11:15:58 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (380, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 11:15:58 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (381, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 11:15:58 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (382, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 11:15:58 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (383, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 11:15:58 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (384, N'clsAPM5830S', N'Public Sub New', N'22/01/2014 11:56:51 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (385, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 11:56:51 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (386, N'clsSU5800M', N'Public Sub New', N'22/01/2014 11:56:51 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (387, N'clsSU5830M', N'Public Sub New', N'22/01/2014 11:56:51 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (388, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 11:56:51 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (389, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 11:56:51 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (390, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 11:56:51 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (391, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 11:56:51 a.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (392, N'clsAPM5830S', N'Public Sub New', N'22/01/2014 12:15:12 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (393, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:15:12 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (394, N'clsSU5800M', N'Public Sub New', N'22/01/2014 12:15:12 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (395, N'clsSU5830M', N'Public Sub New', N'22/01/2014 12:15:12 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (396, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:15:12 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (397, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:15:12 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (398, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 12:15:12 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (399, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 12:15:12 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (400, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 12:15:17 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (401, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 12:15:17 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (402, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:21:34 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (403, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:21:34 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (404, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:23:08 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (405, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:08 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (406, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:08 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (407, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:23:08 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (408, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:08 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (409, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:08 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
GO
print 'Processed 100 total records'
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (410, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:23:11 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (411, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:11 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (412, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:11 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (413, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:23:11 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (414, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:11 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (415, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:11 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (416, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:23:16 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (417, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:16 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (418, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:16 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (419, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:23:16 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (420, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:16 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (421, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:16 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (422, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:23:23 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (423, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:23 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (424, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:23 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (425, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:23:23 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (426, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:23 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (427, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:23 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (428, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:23:26 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (429, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:26 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (430, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:26 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (431, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:23:26 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (432, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:26 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (433, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:26 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (434, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:23:28 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (435, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:28 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (436, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:28 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (437, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:23:28 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (438, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:28 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (439, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:28 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (440, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:23:30 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (441, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:30 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (442, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:30 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (443, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:23:30 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (444, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:30 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (445, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:30 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (446, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:23:32 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (447, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:32 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (448, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:32 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (449, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:23:32 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (450, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:32 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (451, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:32 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (452, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:23:35 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (453, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:35 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (454, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:23:35 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (455, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:23:35 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (456, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:35 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (457, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:23:35 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (458, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:23:44 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (459, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:23:44 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (460, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:24:27 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (461, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:27 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (462, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:27 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (463, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:24:27 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (464, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:27 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (465, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:27 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (466, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:24:30 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (467, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:30 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (468, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:30 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (469, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:24:30 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (470, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:30 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (471, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:30 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (472, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:24:31 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (473, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:31 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (474, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:31 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (475, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:24:31 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (476, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:31 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (477, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:31 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (478, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:24:41 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (479, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:41 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (480, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:41 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (481, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:24:41 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (482, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:41 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (483, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:41 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (484, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:24:47 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (485, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:47 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (486, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:47 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (487, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:24:47 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (488, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:47 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (489, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:47 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (490, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:24:51 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (491, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:51 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (492, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:51 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (493, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:24:51 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (494, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:51 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (495, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:51 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (496, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:24:52 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (497, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:52 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (498, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:52 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (499, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:24:52 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (500, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:52 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (501, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:52 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (502, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:24:52 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (503, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:52 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (504, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:52 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (505, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:24:52 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (506, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:52 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (507, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:52 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (508, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:24:53 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (509, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:53 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (510, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:24:53 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
GO
print 'Processed 200 total records'
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (511, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:24:53 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (512, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:53 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (513, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:24:53 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (514, N'clsAPM5830S', N'Public Sub New', N'22/01/2014 12:25:42 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (515, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:25:42 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (516, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:26:09 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (517, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:09 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (518, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:09 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (519, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:26:10 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (520, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:10 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (521, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:10 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (522, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:26:11 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (523, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:11 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (524, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:11 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (525, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:26:11 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (526, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:11 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (527, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:11 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (528, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:26:11 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (529, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:11 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (530, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:11 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (531, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:26:12 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (532, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:12 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (533, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:12 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (534, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:26:12 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (535, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:12 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (536, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:26:12 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (537, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:20 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (538, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:20 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (539, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:20 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (540, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:31 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (541, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:31 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (542, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:31 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (543, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:32 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (544, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:32 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (545, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:32 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (546, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:32 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (547, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:32 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (548, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:32 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (549, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:33 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (550, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:33 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (551, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:33 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (552, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:33 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (553, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:33 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (554, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:33 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (555, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:33 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (556, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:33 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (557, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:33 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (558, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:34 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (559, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:34 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (560, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:34 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (561, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:34 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (562, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:34 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (563, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:34 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (564, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:35 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (565, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:35 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (566, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:35 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (567, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:35 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (568, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:35 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (569, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:35 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (570, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:29:35 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (571, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:35 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (572, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:29:35 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (573, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:04 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (574, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (575, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (576, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:05 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (577, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:05 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (578, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:05 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (579, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:05 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (580, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:05 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (581, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:05 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (582, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:06 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (583, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:06 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (584, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:06 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (585, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:06 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (586, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:06 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (587, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:06 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (588, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:06 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (589, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:06 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (590, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:06 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (591, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:06 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (592, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:06 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (593, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:06 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (594, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:07 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (595, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:07 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (596, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:07 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (597, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:07 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (598, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:07 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (599, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:07 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (600, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:07 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (601, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:07 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (602, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:07 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (603, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:08 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (604, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:08 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (605, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:08 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (606, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:09 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (607, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:09 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (608, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:09 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (609, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:30:09 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (610, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:09 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (611, N'clsAPM5800S', N'getMibValue', N'22/01/2014 12:30:09 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
GO
print 'Processed 300 total records'
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (612, N'clsAPM5830S', N'Public Sub New', N'22/01/2014 12:31:29 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (613, N'clsAPM5800S', N'Public Sub New', N'22/01/2014 12:31:29 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (614, N'clsSU5800M', N'Public Sub New', N'22/01/2014 12:31:29 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (615, N'clsSU5830M', N'Public Sub New', N'22/01/2014 12:31:29 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (616, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:31:29 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (617, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:31:29 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (618, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 12:31:29 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (619, N'clsATLAS_MU_Events', N'Public Sub New', N'22/01/2014 12:31:29 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (620, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:31:33 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (621, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:31:33 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (622, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:32:00 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (623, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:00 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (624, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:00 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (625, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:32:00 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (626, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:00 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (627, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:00 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (628, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:32:01 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (629, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:01 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (630, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:01 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (631, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:32:01 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (632, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:01 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (633, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:01 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (634, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:32:01 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (635, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:01 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (636, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:01 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (637, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:32:01 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (638, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:01 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (639, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:01 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (640, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:32:02 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (641, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (642, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (643, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:32:02 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (644, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (645, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (646, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:32:02 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (647, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (648, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (649, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:32:02 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (650, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (651, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (652, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:32:02 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (653, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (654, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (655, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:32:02 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (656, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (657, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:02 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (658, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:32:03 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (659, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:03 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (660, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:03 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (661, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:32:03 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (662, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:03 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (663, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:03 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (664, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:32:04 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (665, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (666, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (667, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:32:04 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (668, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (669, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (670, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:32:04 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (671, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (672, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:32:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (673, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:32:04 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (674, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (675, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:32:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (676, N'clsP5830S_MU_Events', N'Public Sub New', N'22/01/2014 12:48:04 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (677, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:48:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (678, N'clsP5830-MU_Events', N'getMibValue', N'22/01/2014 12:48:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (679, N'clsP5830S_RU_Events', N'Public Sub New', N'22/01/2014 12:48:04 p.m.', N'Intento de leer o escribir en la memoria protegida. A menudo, esto indica que hay otra memoria dañad')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (680, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:48:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[tbl_error] ([ID], [FORMA], [FUNCION], [FECHA], [ERROR]) VALUES (681, N'clsP5830S-RU_Events', N'getMibValue', N'22/01/2014 12:48:04 p.m.', N'Referencia a objeto no establecida como instancia de un objeto.')
SET IDENTITY_INSERT [dbo].[tbl_error] OFF
/****** Object:  Table [dbo].[tbl_atlas_ru]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_atlas_ru](
	[ID_ATLAS_RU] [int] IDENTITY(1,1) NOT NULL,
	[ID_ATLAS_MU] [int] NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[NAME_OBJECT] [varchar](255) NOT NULL,
	[IP_MU] [varchar](255) NOT NULL,
	[IP_RU] [varchar](255) NOT NULL,
	[DESC_] [varchar](255) NOT NULL,
	[MAP] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ATLAS_RU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_atlas_mu]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_atlas_mu](
	[ID_ATLAS_MU] [int] IDENTITY(1,1) NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[NAME_OBJECT] [varchar](255) NOT NULL,
	[IP] [varchar](255) NOT NULL,
	[DESC_] [varchar](255) NOT NULL,
	[MAP] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ATLAS_MU] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ap]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ap](
	[ID_AP] [int] IDENTITY(1,1) NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[NAME_OBJECT] [varchar](255) NOT NULL,
	[IP] [varchar](255) NOT NULL,
	[DESC_] [varchar](255) NOT NULL,
	[MAP] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_AP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_alarms_mu_ru]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_alarms_mu_ru](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[VARIABLE] [varchar](255) NOT NULL,
	[VALOR] [varchar](255) NOT NULL,
	[TIEMPO] [datetime] NOT NULL,
	[SEVERIDAD] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_alarms_atlas]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_alarms_atlas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[VARIABLE] [varchar](255) NOT NULL,
	[VALOR] [varchar](255) NOT NULL,
	[TIEMPO] [datetime] NOT NULL,
	[SEVERIDAD] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_alarms]    Script Date: 01/29/2014 10:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_alarms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MAC] [varchar](255) NOT NULL,
	[VARIABLE] [varchar](255) NOT NULL,
	[VALOR] [varchar](100) NOT NULL,
	[TIEMPO] [datetime] NOT NULL,
	[SEVERIDAD] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__tbl_user__TIPO_U__74AE54BC]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_user] ADD  DEFAULT ('') FOR [TIPO_USUARIO]
GO
/****** Object:  Default [DF__tbl_user__NOMBRE__75A278F5]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_user] ADD  DEFAULT ('') FOR [NOMBRE_COMPLETO]
GO
/****** Object:  Default [DF__tbl_user__USERNA__76969D2E]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_user] ADD  DEFAULT ('') FOR [USERNAME_SYSTEM]
GO
/****** Object:  Default [DF__tbl_user__PASSWO__778AC167]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_user] ADD  DEFAULT ('') FOR [PASSWORD_SYSTEM]
GO
/****** Object:  Default [DF__tbl_timer__TIMER__72C60C4A]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_timer] ADD  DEFAULT ('') FOR [TIMER_NAME]
GO
/****** Object:  Default [DF__tbl_timer__TIMER__73BA3083]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_timer] ADD  DEFAULT ('0') FOR [TIMER_VALUE]
GO
/****** Object:  Default [DF__tbl_su__ID_AP__6C190EBB]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_su] ADD  DEFAULT ('0') FOR [ID_AP]
GO
/****** Object:  Default [DF__tbl_su__MAC__6D0D32F4]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_su] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_su__NAME_OBJ__6E01572D]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_su] ADD  DEFAULT ('') FOR [NAME_OBJECT]
GO
/****** Object:  Default [DF__tbl_su__IP_AP__6EF57B66]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_su] ADD  DEFAULT ('') FOR [IP_AP]
GO
/****** Object:  Default [DF__tbl_su__IP_SU__6FE99F9F]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_su] ADD  DEFAULT ('') FOR [IP_SU]
GO
/****** Object:  Default [DF__tbl_su__DESC___70DDC3D8]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_su] ADD  DEFAULT ('') FOR [DESC_]
GO
/****** Object:  Default [DF__tbl_su__MAP__71D1E811]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_su] ADD  DEFAULT ('DONT EXIST MAP') FOR [MAP]
GO
/****** Object:  Default [DF__tbl_ru__ID_MU__656C112C]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ru] ADD  DEFAULT ('0') FOR [ID_MU]
GO
/****** Object:  Default [DF__tbl_ru__MAC__66603565]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ru] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_ru__NAME_OBJ__6754599E]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ru] ADD  DEFAULT ('') FOR [NAME_OBJECT]
GO
/****** Object:  Default [DF__tbl_ru__IP_MU__68487DD7]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ru] ADD  DEFAULT ('') FOR [IP_MU]
GO
/****** Object:  Default [DF__tbl_ru__IP_RU__693CA210]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ru] ADD  DEFAULT ('') FOR [IP_RU]
GO
/****** Object:  Default [DF__tbl_ru__DESC___6A30C649]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ru] ADD  DEFAULT ('') FOR [DESC_]
GO
/****** Object:  Default [DF__tbl_ru__MAP__6B24EA82]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ru] ADD  DEFAULT ('DONT EXIST MAP') FOR [MAP]
GO
/****** Object:  Default [DF__tbl_mu__MAC__60A75C0F]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_mu] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_mu__NAME_OBJ__619B8048]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_mu] ADD  DEFAULT ('') FOR [NAME_OBJECT]
GO
/****** Object:  Default [DF__tbl_mu__IP__628FA481]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_mu] ADD  DEFAULT ('') FOR [IP]
GO
/****** Object:  Default [DF__tbl_mu__DESC___6383C8BA]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_mu] ADD  DEFAULT ('') FOR [DESC_]
GO
/****** Object:  Default [DF__tbl_mu__MAP__6477ECF3]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_mu] ADD  DEFAULT ('DONT EXIST MAP') FOR [MAP]
GO
/****** Object:  Default [DF__tbl_ftiempo__MAC__5CD6CB2B]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo_mu_ru] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_ftiem__VARIA__5DCAEF64]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo_mu_ru] ADD  DEFAULT ('') FOR [VARIABLE]
GO
/****** Object:  Default [DF__tbl_ftiem__VALOR__5EBF139D]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo_mu_ru] ADD  DEFAULT ('') FOR [VALOR]
GO
/****** Object:  Default [DF__tbl_ftiem__TIEMP__5FB337D6]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo_mu_ru] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [TIEMPO]
GO
/****** Object:  Default [DF__tbl_ftiempo__MAC__59063A47]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo_atlas] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_ftiem__VARIA__59FA5E80]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo_atlas] ADD  DEFAULT ('') FOR [VARIABLE]
GO
/****** Object:  Default [DF__tbl_ftiem__VALOR__5AEE82B9]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo_atlas] ADD  DEFAULT ('') FOR [VALOR]
GO
/****** Object:  Default [DF__tbl_ftiem__TIEMP__5BE2A6F2]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo_atlas] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [TIEMPO]
GO
/****** Object:  Default [DF__tbl_ftiempo__MAC__5535A963]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_ftiem__VARIA__5629CD9C]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo] ADD  DEFAULT ('') FOR [VARIABLE]
GO
/****** Object:  Default [DF__tbl_ftiem__VALOR__571DF1D5]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo] ADD  DEFAULT ('') FOR [VALOR]
GO
/****** Object:  Default [DF__tbl_ftiem__TIEMP__5812160E]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ftiempo] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [TIEMPO]
GO
/****** Object:  Default [DF__tbl_atlas__ID_AT__4E88ABD4]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_ru] ADD  DEFAULT ('0') FOR [ID_ATLAS_MU]
GO
/****** Object:  Default [DF__tbl_atlas_r__MAC__4F7CD00D]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_ru] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_atlas__NAME___5070F446]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_ru] ADD  DEFAULT ('') FOR [NAME_OBJECT]
GO
/****** Object:  Default [DF__tbl_atlas__IP_MU__5165187F]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_ru] ADD  DEFAULT ('') FOR [IP_MU]
GO
/****** Object:  Default [DF__tbl_atlas__IP_RU__52593CB8]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_ru] ADD  DEFAULT ('') FOR [IP_RU]
GO
/****** Object:  Default [DF__tbl_atlas__DESC___534D60F1]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_ru] ADD  DEFAULT ('') FOR [DESC_]
GO
/****** Object:  Default [DF__tbl_atlas_r__MAP__5441852A]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_ru] ADD  DEFAULT ('DONT EXIST MAP') FOR [MAP]
GO
/****** Object:  Default [DF__tbl_atlas_m__MAC__49C3F6B7]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_mu] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_atlas__NAME___4AB81AF0]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_mu] ADD  DEFAULT ('') FOR [NAME_OBJECT]
GO
/****** Object:  Default [DF__tbl_atlas_mu__IP__4BAC3F29]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_mu] ADD  DEFAULT ('') FOR [IP]
GO
/****** Object:  Default [DF__tbl_atlas__DESC___4CA06362]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_mu] ADD  DEFAULT ('') FOR [DESC_]
GO
/****** Object:  Default [DF__tbl_atlas_m__MAP__4D94879B]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_atlas_mu] ADD  DEFAULT ('DONT EXIST MAP') FOR [MAP]
GO
/****** Object:  Default [DF__tbl_ap__MAC__44FF419A]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ap] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_ap__NAME_OBJ__45F365D3]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ap] ADD  DEFAULT ('') FOR [NAME_OBJECT]
GO
/****** Object:  Default [DF__tbl_ap__IP__46E78A0C]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ap] ADD  DEFAULT ('') FOR [IP]
GO
/****** Object:  Default [DF__tbl_ap__DESC___47DBAE45]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ap] ADD  DEFAULT ('') FOR [DESC_]
GO
/****** Object:  Default [DF__tbl_ap__MAP__48CFD27E]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_ap] ADD  DEFAULT ('DONT EXIST MAP') FOR [MAP]
GO
/****** Object:  Default [DF__tbl_alarms___MAC__403A8C7D]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms_mu_ru] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_alarm__VARIA__412EB0B6]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms_mu_ru] ADD  DEFAULT ('') FOR [VARIABLE]
GO
/****** Object:  Default [DF__tbl_alarm__VALOR__4222D4EF]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms_mu_ru] ADD  DEFAULT ('') FOR [VALOR]
GO
/****** Object:  Default [DF__tbl_alarm__TIEMP__4316F928]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms_mu_ru] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [TIEMPO]
GO
/****** Object:  Default [DF__tbl_alarm__SEVER__440B1D61]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms_mu_ru] ADD  DEFAULT ('') FOR [SEVERIDAD]
GO
/****** Object:  Default [DF__tbl_alarms___MAC__3B75D760]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms_atlas] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_alarm__VARIA__3C69FB99]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms_atlas] ADD  DEFAULT ('') FOR [VARIABLE]
GO
/****** Object:  Default [DF__tbl_alarm__VALOR__3D5E1FD2]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms_atlas] ADD  DEFAULT ('') FOR [VALOR]
GO
/****** Object:  Default [DF__tbl_alarm__TIEMP__3E52440B]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms_atlas] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [TIEMPO]
GO
/****** Object:  Default [DF__tbl_alarm__SEVER__3F466844]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms_atlas] ADD  DEFAULT ('') FOR [SEVERIDAD]
GO
/****** Object:  Default [DF__tbl_alarms__MAC__36B12243]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms] ADD  DEFAULT ('') FOR [MAC]
GO
/****** Object:  Default [DF__tbl_alarm__VARIA__37A5467C]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms] ADD  DEFAULT ('') FOR [VARIABLE]
GO
/****** Object:  Default [DF__tbl_alarm__VALOR__38996AB5]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms] ADD  DEFAULT ('') FOR [VALOR]
GO
/****** Object:  Default [DF__tbl_alarm__TIEMP__398D8EEE]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [TIEMPO]
GO
/****** Object:  Default [DF__tbl_alarm__SEVER__3A81B327]    Script Date: 01/29/2014 10:14:39 ******/
ALTER TABLE [dbo].[tbl_alarms] ADD  DEFAULT ('') FOR [SEVERIDAD]
GO
