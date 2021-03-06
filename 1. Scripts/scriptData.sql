Create database  PruebaNet
go
USE [PruebaNet]
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bancos](
	[iBancoId] [int] IDENTITY(1,1) NOT NULL,
	[vNombreBanco] [varchar](100) NULL,
	[vDireccion] [varchar](250) NULL,
	[iActivo] [int] NULL,
	[dFechaRegistro] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[iEstadoId] [int] NULL,
	[vDescripcionEstado] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monedas]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monedas](
	[iMonedaId] [int] NULL,
	[vNombreMoneda] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenesPago]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenesPago](
	[iOrdenId] [int] IDENTITY(1,1) NOT NULL,
	[iSucursalId] [int] NULL,
	[fMonto] [float] NULL,
	[iTipoMoneda] [int] NULL,
	[iEstadoId] [int] NULL,
	[dFechaPago] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[iRolesId] [int] IDENTITY(1,1) NOT NULL,
	[vNombre] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursales](
	[iSucursalId] [int] IDENTITY(1,1) NOT NULL,
	[iBancoId] [int] NULL,
	[vNombre] [varchar](100) NULL,
	[vDireccion] [varchar](250) NULL,
	[iActivo] [int] NULL,
	[dFechaRegistro] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bancos] ON 

INSERT [dbo].[Bancos] ([iBancoId], [vNombreBanco], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (1, N'BANBIF', N'AV. LA MARINA 777', 1, CAST(N'2017-08-15T15:44:24.240' AS DateTime))
INSERT [dbo].[Bancos] ([iBancoId], [vNombreBanco], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (2, N'CONTINENTAL', N'AV. ARENALES 345', NULL, CAST(N'2017-08-16T13:00:23.050' AS DateTime))
INSERT [dbo].[Bancos] ([iBancoId], [vNombreBanco], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (3, N'CONTINENTAL', N'AV. ARENALES 345', NULL, CAST(N'2017-08-16T13:04:03.583' AS DateTime))
INSERT [dbo].[Bancos] ([iBancoId], [vNombreBanco], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (4, N'CONTINENTAL SUR', N'AV. ARENALES 555', 0, CAST(N'2017-08-16T13:07:39.587' AS DateTime))
INSERT [dbo].[Bancos] ([iBancoId], [vNombreBanco], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (5, N'BCP NORTE', N'PRO 12434', 1, CAST(N'2017-08-16T13:28:42.567' AS DateTime))
INSERT [dbo].[Bancos] ([iBancoId], [vNombreBanco], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (6, N'CONTINENTAL NORTE', N'AV. ARENALES 367', 0, CAST(N'2017-08-16T20:35:56.353' AS DateTime))
INSERT [dbo].[Bancos] ([iBancoId], [vNombreBanco], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (7, N'CONTINENTAL ESTE', N'AV. LA MARINA 777', 0, CAST(N'2017-08-17T15:18:12.837' AS DateTime))
INSERT [dbo].[Bancos] ([iBancoId], [vNombreBanco], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (8, N'CONTINENTAL NORTE', N'AV. ARENALES 668', 0, CAST(N'2017-08-17T20:04:43.580' AS DateTime))
INSERT [dbo].[Bancos] ([iBancoId], [vNombreBanco], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (9, N'CONTINENTAL SUR', N'AV. JOSE PRIALE 444', 1, CAST(N'2017-08-17T20:05:05.490' AS DateTime))
INSERT [dbo].[Bancos] ([iBancoId], [vNombreBanco], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (10, N'BANCO TEST EDIT', N'AV. TEST 445', 0, CAST(N'2017-08-17T21:12:59.667' AS DateTime))
SET IDENTITY_INSERT [dbo].[Bancos] OFF
INSERT [dbo].[Estados] ([iEstadoId], [vDescripcionEstado]) VALUES (1, N'PAGADA')
INSERT [dbo].[Estados] ([iEstadoId], [vDescripcionEstado]) VALUES (2, N'DECLINADA')
INSERT [dbo].[Estados] ([iEstadoId], [vDescripcionEstado]) VALUES (3, N'FALLIDA')
INSERT [dbo].[Estados] ([iEstadoId], [vDescripcionEstado]) VALUES (4, N'ANULADA')
INSERT [dbo].[Monedas] ([iMonedaId], [vNombreMoneda]) VALUES (1, N'Soles')
INSERT [dbo].[Monedas] ([iMonedaId], [vNombreMoneda]) VALUES (2, N'Dólares')
SET IDENTITY_INSERT [dbo].[OrdenesPago] ON 

INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (5, 1, 48, 1, 0, CAST(N'2017-08-17T19:30:44.133' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (6, 1, 400, 2, 0, CAST(N'2017-08-17T19:36:09.230' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (7, 1, 600, 2, 0, CAST(N'2017-08-17T19:57:26.017' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (8, 1, 345, 1, 0, CAST(N'2017-08-17T19:57:32.630' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (21, 12, 689, 1, 1, CAST(N'2017-08-17T21:50:11.787' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (22, 12, 667, 2, 1, CAST(N'2017-08-17T21:50:20.310' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (23, 1, 688, 1, 1, CAST(N'2017-08-17T22:10:56.590' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (24, 1, 46, 1, 0, CAST(N'2017-08-17T22:12:17.640' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (25, 13, 3444, 1, 3, CAST(N'2017-08-17T22:18:45.153' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (9, 1, 334, 2, 0, CAST(N'2017-08-17T19:57:41.457' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (10, 8, 60, 1, 1, CAST(N'2017-08-17T20:02:48.417' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (11, 8, 80, 1, 0, CAST(N'2017-08-17T20:02:53.717' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (12, 8, 355, 2, 1, CAST(N'2017-08-17T20:02:59.917' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (13, 7, 50, 1, 1, CAST(N'2017-08-17T20:03:36.963' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (14, 9, 546, 2, 0, CAST(N'2017-08-17T20:07:46.213' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (15, 9, 498, 2, 3, CAST(N'2017-08-17T20:07:56.920' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (16, 9, 56, 1, 1, CAST(N'2017-08-17T20:08:17.343' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (17, 10, 60, 1, 1, CAST(N'2017-08-17T21:16:45.653' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (18, 10, 50, 1, 1, CAST(N'2017-08-17T21:17:02.813' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (19, 11, 30, 1, 1, CAST(N'2017-08-17T21:42:40.397' AS DateTime))
INSERT [dbo].[OrdenesPago] ([iOrdenId], [iSucursalId], [fMonto], [iTipoMoneda], [iEstadoId], [dFechaPago]) VALUES (20, 11, 60, 2, 1, CAST(N'2017-08-17T21:42:45.777' AS DateTime))
SET IDENTITY_INSERT [dbo].[OrdenesPago] OFF
SET IDENTITY_INSERT [dbo].[Sucursales] ON 

INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (1, 1, N'LA MARINA S01', N'AV. LA MARINA 596', 1, CAST(N'2017-08-15T15:44:24.273' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (3, 1, N' NORTE c5', N'AV. ARENALES 76788', 1, CAST(N'2017-08-17T17:03:06.177' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (4, 0, N' NORTE c88', N'AV. LA MARINA 788777', 1, CAST(N'2017-08-17T17:06:31.463' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (5, 0, N' NORTE c88', N'AV. ARENALES 555', 1, CAST(N'2017-08-17T17:33:26.193' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (6, 0, N'test', N'test', 1, CAST(N'2017-08-17T17:35:30.107' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (10, 10, N'CENTRO 1', N'AV. ABANCAY 420', 1, CAST(N'2017-08-17T21:15:28.397' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (11, 10, N'CENTRO 2', N'AV. PUNO 399', 0, CAST(N'2017-08-17T21:31:03.930' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (12, 10, N'CENTRO 3', N'AV. TINGO MARIA 399', 0, CAST(N'2017-08-17T21:50:01.517' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (13, 1, N'TESC2-7', N'AV. LA MARINA 732', 1, CAST(N'2017-08-17T22:12:38.347' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (14, 1, N'CFE-3674646', N'AV. JESUS MARIA', 0, CAST(N'2017-08-17T22:20:51.673' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (7, 1, N'tes2', N'tes2', 0, CAST(N'2017-08-17T17:36:49.950' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (8, 5, N'CENTRO 4', N'AV. ARENALES 999', 1, CAST(N'2017-08-17T20:02:38.180' AS DateTime))
INSERT [dbo].[Sucursales] ([iSucursalId], [iBancoId], [vNombre], [vDireccion], [iActivo], [dFechaRegistro]) VALUES (9, 9, N'CENTRO 1', N'AV. JOSE PRIALE 466', 1, CAST(N'2017-08-17T20:05:45.023' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sucursales] OFF
/****** Object:  StoredProcedure [dbo].[sp_deleteBanco]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_deleteBanco](
	@iBancoId			INT
)
AS
	UPDATE dbo.Bancos
			SET iActivo= 0
		WHERE iBancoId = @iBancoId
		SELECT @iBancoId
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteOrderPago]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_deleteOrderPago](
	@iOrdenId			INT
)
AS
	UPDATE dbo.OrdenesPago
			SET iEstadoId = 0
		WHERE iOrdenId = @iOrdenId
		SELECT @iOrdenId

GO
/****** Object:  StoredProcedure [dbo].[sp_deleteSucursal]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_deleteSucursal](
	@isucursalId			INT
)
AS
	UPDATE dbo.Sucursales
			SET iActivo = 0
		WHERE iSucursalId = @isucursalId
		SELECT @isucursalId

GO
/****** Object:  StoredProcedure [dbo].[sp_insertBanco]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_insertBanco](
	@vNombreBanco	VARCHAR(100),
	@vDireccion		VARCHAR(250)
)
AS
	INSERT INTO dbo.Bancos(vNombreBanco, vDireccion, iActivo, dFechaRegistro)
	VALUES (@vNombreBanco, @vDireccion, 1, GETDATE())
	SELECT @@IDENTITY

GO
/****** Object:  StoredProcedure [dbo].[sp_insertOrdenPago]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_insertOrdenPago](
	@iSucursalId		INT,
	@fMonto			FLOAT,
	@iTipoMoneda	INT
)AS
	INSERT INTO dbo.OrdenesPago(iSucursalId, fMonto, iTipoMoneda, iEstadoId, dFechaPago)
	VALUES (@iSucursalId, @fMonto, @iTipoMoneda, 1, GETDATE())
	SELECT @@IDENTITY

GO
/****** Object:  StoredProcedure [dbo].[sp_insertSucursal]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_insertSucursal](
	@iBancoId			INT,
	@vNombreSucursal	VARCHAR(250),
	@vDireccion			VARCHAR(250)
)
AS
	INSERT INTO dbo.Sucursales(iBancoId,vNombre, vDireccion, dFechaRegistro, iActivo)
	VALUES (@iBancoId, @vNombreSucursal, @vDireccion, GETDATE(), 1)
	SELECT @@IDENTITY

GO
/****** Object:  StoredProcedure [dbo].[sp_listarBancos]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sp_listarBancos]
AS
	SELECT iBancoId, vNombreBanco, vDireccion, CONVERT(VARCHAR, dFechaRegistro, 103) dFechaRegistro
	FROM dbo.Bancos
	WHERE iActivo = 1
	ORDER BY ibancoId desc

GO
/****** Object:  StoredProcedure [dbo].[sp_listarEstados]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_listarEstados]
AS
SELECT iEstadoId, vDescripcionEstado FROM dbo.Estados


GO
/****** Object:  StoredProcedure [dbo].[sp_listarMonedas]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_listarMonedas]
AS
SELECT iMonedaId, vNombreMoneda FROM dbo.Monedas


GO
/****** Object:  StoredProcedure [dbo].[sp_modificarOrdenPago]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_modificarOrdenPago](
	@iOrdenId		INT,
	@fMonto			FLOAT,
	@iTipoMoneda	INT,
	@iEstadoId		INT
)AS

	UPDATE dbo.OrdenesPago
		SET fMonto = @fMonto,
			iTipoMoneda = @iTipoMoneda,
			iEstadoId = @iEstadoId
	WHERE iOrdenId = @iOrdenId
	SELECT @iOrdenId

GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerBanco]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ObtenerBanco]
	@iBancoId	INT
AS
	SELECT iBancoId, vNombreBanco, vDireccion, CONVERT(VARCHAR, dFechaRegistro, 103) dFechaRegistro
	FROM dbo.Bancos
	WHERE iBancoId = @iBancoId

GO
/****** Object:  StoredProcedure [dbo].[sp_obtenerOrdenesPago]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------

CREATE PROCEDURE [dbo].[sp_obtenerOrdenesPago](
	@iSucursalId	int
)as
	SELECT o.iOrdenId, o.iSucursalId, o.fMonto, o.iTipoMoneda, 
		  (CASE o.iTipoMoneda WHEN 1 THEN 'Soles' ELSE 'Dólares' end) vNombreMoneda,
		   o.iEstadoId, CONVERT(VARCHAR, o.dFechaPago, 103)dFechaPago, isnull(e.vDescripcionEstado,'') vDescripcionEstado
    FROM dbo.OrdenesPago o
	inner JOIN dbo.Estados e ON o.iEstadoId = e.iEstadoId and o.iEstadoId <> 0
	WHERE o.iSucursalId = @iSucursalId
	ORDER BY 1 DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_obtenerOrdenesPagoPorSucursalTipoMoneda]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_obtenerOrdenesPagoPorSucursalTipoMoneda](
	@iSucursalId	INT,
	@iTipoMoneda	INT
)as
	SELECT o.iOrdenId, o.iSucursalId, s.vNombre, o.fMonto, o.iTipoMoneda, 
	      (CASE o.iTipoMoneda WHEN 1 THEN 'Soles' ELSE 'Dólares' end) vNombreMoneda,
	o.iEstadoId, CONVERT(VARCHAR, o.dFechaPago, 103) dFechaPago, e.vDescripcionEstado
    FROM dbo.OrdenesPago o
		INNER JOIN dbo.Estados e ON o.iEstadoId = e.iEstadoId	
		INNER JOIN dbo.Sucursales s ON s.iSucursalId = o.iSucursalId
	WHERE iTipoMoneda = @iTipoMoneda
	AND o.iSucursalId = @iSucursalId
	ORDER BY 1 DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_obtenerOrdenPagoPorId]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_obtenerOrdenPagoPorId](
	@iOrdenId	int
)as
	SELECT o.iOrdenId, o.iSucursalId, o.fMonto, o.iTipoMoneda, 
	      (CASE o.iTipoMoneda WHEN 1 THEN 'Soles' ELSE 'Dólares' end) vNombreMoneda,
		   o.iEstadoId, CONVERT(VARCHAR, o.dFechaPago, 103) dFechaPago, e.vDescripcionEstado
    FROM dbo.OrdenesPago o
	INNER JOIN dbo.Estados e ON o.iEstadoId = e.iEstadoId
	WHERE iOrdenId = @iOrdenId

GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerSucursalesPorBanco]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------

CREATE PROCEDURE [dbo].[sp_ObtenerSucursalesPorBanco](
	@iBancoId	INT
)as
	SELECT s.iSucursalId, b.iBancoId, b.vNombreBanco, s.vNombre, s.vDireccion, CONVERT(VARCHAR, s.dFechaRegistro, 103) dFechaRegistro
	FROM dbo.Sucursales s
	INNER JOIN dbo.Bancos b ON b.iBancoId = s.iBancoId
	WHERE s.iBancoId = @iBancoId
	AND s.iActivo = 1
	ORDER BY 1 desc
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerSucursalesPorId]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ObtenerSucursalesPorId](
	@iSucursalId	INT
)as
	SELECT s.iSucursalId, b.iBancoId, b.vNombreBanco, s.vNombre, s.vDireccion, CONVERT(VARCHAR, s.dFechaRegistro, 103) dFechaRegistro
	FROM dbo.Sucursales s
	INNER JOIN dbo.Bancos b ON b.iBancoId = s.iBancoId
	WHERE s.iSucursalId = @iSucursalId

GO
/****** Object:  StoredProcedure [dbo].[sp_updateBanco]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_updateBanco](
	@iBancoId			INT,
	@vNombreBanco	VARCHAR(250),
	@vDireccion		VARCHAR(250)
)
AS
	UPDATE dbo.Bancos
		SET vNombreBanco = @vNombreBanco,
			vDireccion = @vDireccion
	WHERE iBancoId = @iBancoId
	SELECT @iBancoId
GO
/****** Object:  StoredProcedure [dbo].[sp_updateSucursal]    Script Date: 17/08/2017 22:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_updateSucursal](
	@iSucursalId		INT,
	@vNombreSucursal	VARCHAR(250),
	@vDireccion			VARCHAR(250)
)
AS
	UPDATE dbo.Sucursales
	SET vNombre = @vNombreSucursal,
		vDireccion = @vDireccion
	WHERE iSucursalId = @iSucursalId
	SELECT @iSucursalId

GO
