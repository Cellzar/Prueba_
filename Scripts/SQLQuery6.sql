USE [Proyectos]
GO

/****** Object:  Table [dbo].[Productos]    Script Date: 3/01/2021 10:51:34 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](15) NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
	[Costo] [decimal](18, 2) NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Estado] [char](3) NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[Inventario] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_Estado]  DEFAULT ('ACT') FOR [Estado]
GO

ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_FechaIngreso]  DEFAULT (getdate()) FOR [FechaIngreso]
GO


