USE [Proyectos]
GO

/****** Object:  Table [dbo].[Ventas_Detalle]    Script Date: 3/01/2021 10:51:41 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ventas_Detalle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdVenta] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [decimal](18, 2) NOT NULL,
	[Estado] [char](3) NULL,
	[PrecioUnitario] [decimal](18, 2) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_Ventas_Detalle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Ventas_Detalle] ADD  CONSTRAINT [DF_Ventas_Detalle_Estado]  DEFAULT ('ACT') FOR [Estado]
GO

ALTER TABLE [dbo].[Ventas_Detalle] ADD  CONSTRAINT [DF_Ventas_Detalle_FechaIngreso]  DEFAULT (getdate()) FOR [FechaIngreso]
GO

ALTER TABLE [dbo].[Ventas_Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Detalle_Productos] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([Id])
GO

ALTER TABLE [dbo].[Ventas_Detalle] CHECK CONSTRAINT [FK_Ventas_Detalle_Productos]
GO

ALTER TABLE [dbo].[Ventas_Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Detalle_Ventas] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Ventas] ([Id])
GO

ALTER TABLE [dbo].[Ventas_Detalle] CHECK CONSTRAINT [FK_Ventas_Detalle_Ventas]
GO


