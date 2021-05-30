USE [Proyectos]
GO

/****** Object:  Table [dbo].[Ventas]    Script Date: 3/01/2021 10:51:37 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ventas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[FechaVenta] [datetime] NOT NULL,
	[Estado] [char](3) NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Ventas] ADD  CONSTRAINT [DF_Ventas_Estado]  DEFAULT ('ACT') FOR [Estado]
GO

ALTER TABLE [dbo].[Ventas] ADD  CONSTRAINT [DF_Ventas_FechaIngreso]  DEFAULT (getdate()) FOR [FechaIngreso]
GO

ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([Id])
GO

ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes]
GO


