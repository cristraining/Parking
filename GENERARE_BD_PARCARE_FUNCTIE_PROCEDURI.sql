USE [master]
GO
/****** Object:  Database [Parcare]    Script Date: 12/8/2016 3:36:11 PM ******/
CREATE DATABASE [Parcare]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Parcare', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Parcare.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Parcare_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Parcare_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Parcare] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Parcare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Parcare] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Parcare] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Parcare] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Parcare] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Parcare] SET ARITHABORT OFF 
GO
ALTER DATABASE [Parcare] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Parcare] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Parcare] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Parcare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Parcare] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Parcare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Parcare] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Parcare] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Parcare] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Parcare] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Parcare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Parcare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Parcare] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Parcare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Parcare] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Parcare] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Parcare] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Parcare] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Parcare] SET  MULTI_USER 
GO
ALTER DATABASE [Parcare] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Parcare] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Parcare] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Parcare] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Parcare] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Parcare] SET QUERY_STORE = OFF
GO
USE [Parcare]
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
USE [Parcare]
GO
/****** Object:  UserDefinedFunction [dbo].[CodJudet]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  FUNCTION [dbo].[CodJudet]
(@judet VARCHAR(50))
RETURNS VARCHAR(2)
AS
BEGIN
DECLARE @codJudet VARCHAR(2);
IF @judet = 'Bucuresti'
 SET @codJudet = 'B';
 ELSE IF @judet = 'Ilfov'
 SET @codJudet = 'IF';
  ELSE IF @judet = 'Ialomita'
 SET @codJudet = 'IL';
  ELSE IF @judet = 'Braila'
 SET @codJudet = 'BR';
  ELSE IF @judet = 'Calarasi'
 SET @codJudet = 'CL';
  ELSE IF @judet = 'Constanta'
 SET @codJudet = 'CT';
  ELSE IF @judet = 'Tulcea'
 SET @codJudet = 'TL';
  ELSE IF @judet = 'Buzau'
 SET @codJudet = 'BZ';
  ELSE IF @judet = 'Galati'
 SET @codJudet = 'GL';
  ELSE IF @judet = 'Iasi'
 SET @codJudet = 'IS';
  ELSE IF @judet = 'Bistrita-Nasaud'
 SET @codJudet = 'BN';
  ELSE IF @judet = 'Neamt'
 SET @codJudet = 'NT';
  ELSE IF @judet = 'Vaslui'
 SET @codJudet = 'VS';
  ELSE IF @judet = 'Vrancea'
 SET @codJudet = 'VN';
  ELSE IF @judet = 'Covasna'
 SET @codJudet = 'CV';
  ELSE IF @judet = 'Prahova'
 SET @codJudet = 'PH';
  ELSE IF @judet = 'Giurgiu'
 SET @codJudet = 'GR';
  ELSE IF @judet = 'Teleorman'
 SET @codJudet = 'TR';
  ELSE IF @judet = 'Olt'
 SET @codJudet = 'OT';
  ELSE IF @judet = 'Dolj'
 SET @codJudet = 'DT';
  ELSE IF @judet = 'Mehedinti'
 SET @codJudet = 'MH';
  ELSE IF @judet = 'Caras-Severin'
 SET @codJudet = 'CS';
  ELSE IF @judet = 'Gorj'
 SET @codJudet = 'GJ';
  ELSE IF @judet = 'Timisoara'
 SET @codJudet = 'TM';
  ELSE IF @judet = 'Arad'
 SET @codJudet = 'AR';
  ELSE IF @judet = 'Bihor'
 SET @codJudet = 'BH';
  ELSE IF @judet = 'Satu Mare'
 SET @codJudet = 'SM';
  ELSE IF @judet = 'Maramures'
 SET @codJudet = 'MM';
  ELSE IF @judet = 'Suceava'
 SET @codJudet = 'SV';
  ELSE IF @judet = 'Botosani'
 SET @codJudet = 'BT';
  ELSE IF @judet = 'Bacau'
 SET @codJudet = 'BC';
  ELSE IF @judet = 'Harghita'
 SET @codJudet = 'HR';
  ELSE IF @judet = 'Brasov'
 SET @codJudet = 'BV';
  ELSE IF @judet = 'Sibiu'
 SET @codJudet = 'SB';
  ELSE IF @judet = 'Valcea'
 SET @codJudet = 'VL';
  ELSE IF @judet = 'Arges'
 SET @codJudet = 'AG';
  ELSE IF @judet = 'Dambovita'
 SET @codJudet = 'DB';
  ELSE IF @judet = 'Hunedoara'
 SET @codJudet = 'HD';
  ELSE IF @judet = 'Alba'
 SET @codJudet = 'AB';
  ELSE IF @judet = 'Cluj'
 SET @codJudet = 'CJ';
  ELSE IF @judet = 'Salaj'
 SET @codJudet = 'SJ';
   ELSE IF @judet = 'Mures'
 SET @codJudet = 'MS';
 
 RETURN @codJudet ;
 END;
GO
/****** Object:  Table [dbo].[Masina]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Masina](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModelId] [int] NOT NULL,
	[Numar] [varchar](8) NOT NULL,
	[Culoare] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Masina] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Model]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProducatorId] [int] NOT NULL,
	[Nume] [nvarchar](50) NOT NULL,
	[An] [int] NOT NULL,
	[Activ] [bit] NOT NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nivel]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nivel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nume] [nvarchar](4) NOT NULL,
	[CostIntretinere] [decimal](10, 2) NOT NULL,
	[Regiune] [char](1) NOT NULL,
 CONSTRAINT [PK_Nivel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producator]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nume] [nvarchar](50) NOT NULL,
	[Activ] [bit] NOT NULL,
 CONSTRAINT [PK_Producator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vizita]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vizita](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MasinaId] [int] NOT NULL,
	[NivelId] [int] NOT NULL,
	[DataSosire] [datetime] NOT NULL,
	[DataPlecare] [datetime] NULL,
 CONSTRAINT [PK_Vizita] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Masina]  WITH CHECK ADD  CONSTRAINT [FK_Masina_Model] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Model] ([Id])
GO
ALTER TABLE [dbo].[Masina] CHECK CONSTRAINT [FK_Masina_Model]
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_Producator] FOREIGN KEY([ProducatorId])
REFERENCES [dbo].[Producator] ([Id])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_Producator]
GO
ALTER TABLE [dbo].[Vizita]  WITH CHECK ADD  CONSTRAINT [FK_Vizita_Masina] FOREIGN KEY([MasinaId])
REFERENCES [dbo].[Masina] ([Id])
GO
ALTER TABLE [dbo].[Vizita] CHECK CONSTRAINT [FK_Vizita_Masina]
GO
ALTER TABLE [dbo].[Vizita]  WITH CHECK ADD  CONSTRAINT [FK_Vizita_Nivel] FOREIGN KEY([NivelId])
REFERENCES [dbo].[Nivel] ([Id])
GO
ALTER TABLE [dbo].[Vizita] CHECK CONSTRAINT [FK_Vizita_Nivel]
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [Constrangere_An_Model] CHECK  (([An]>(1900) AND [An]<datepart(year,getdate())))
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [Constrangere_An_Model]
GO
ALTER TABLE [dbo].[Nivel]  WITH CHECK ADD  CONSTRAINT [ConstrangereRegiuneParcare] CHECK  (([Regiune]='R' OR [Regiune]='L'))
GO
ALTER TABLE [dbo].[Nivel] CHECK CONSTRAINT [ConstrangereRegiuneParcare]
GO
/****** Object:  StoredProcedure [dbo].[InformatiiCuloareModelProducator]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC listaElemente '2014-11-08'
CREATE PROCEDURE [dbo].[InformatiiCuloareModelProducator]


@numar varchar(8) ,
@culoare nvarchar(50),
@model nvarchar(50) ,
@producator nvarchar(50),
@perioadaInceput datetime ,
@perioadaSfarsit datetime 
AS
SELECT  M.Numar, M.Culoare, MD.Nume , MD.An , P.Nume , V.DataSosire ,V.DataSosire 
FROM Masina M
INNER JOIN Vizita V ON M.Id = V.MasinaId
INNER JOIN Model MD ON MD.Id = M.ModelId
INNER JOIN Producator P ON P.Id = MD.ProducatorId
WHERE M.Numar = @numar AND M.Culoare = @culoare AND
 MD.Nume = @model AND P.Nume = @producator AND 
 ((V.DataPlecare < @perioadaSfarsit AND V.DataPlecare > @perioadaInceput )
 OR (V.DataSosire < @perioadaSfarsit AND V.DataSosire > @perioadaInceput ))

GO
/****** Object:  StoredProcedure [dbo].[LaSutaMasiniDeCuloare]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC listaElemente '2014-11-08'
CREATE PROCEDURE [dbo].[LaSutaMasiniDeCuloare]

@culoare nvarchar(50) ,
@perioadaInceput datetime,
@perioadaSfarsit datetime 

AS
SELECT CAST (( COUNT(M.Numar) * 100 / (SELECT COUNT(M.Numar) FROM Masina M 
JOIN Vizita V  ON V.MasinaId = M.Id
WHERE (V.DataPlecare > @perioadaInceput AND V.DataPlecare < @perioadaSfarsit) OR
 (V.DataSosire > @perioadaInceput AND V.DataSosire < @perioadaSfarsit))) as varchar) + '%' AS 'LaSutaProducatorActiv' FROM Masina M 
JOIN Vizita V  ON V.MasinaId = M.Id
WHERE ((V.DataPlecare > @perioadaInceput AND V.DataPlecare < @perioadaSfarsit) OR
 (V.DataSosire > @perioadaInceput AND V.DataSosire < @perioadaSfarsit)) AND M.Culoare = @culoare




--SELECT CAST (( COUNT(MN.Numar) * 100 / (SELECT COUNT(M.Numar) FROM Masina M 
--JOIN Vizita V  ON V.MasinaId = M.Id
--WHERE V.DataPlecare = NULL)) as varchar) + '%' AS 'LaSutaProducatorActiv'
--FROM Masina MN


--SELECT COUNT(M.Numar) FROM Masina M 
--JOIN Vizita V  ON V.MasinaId = M.Id
--WHERE V.DataPlecare = NULL
--GO


GO
/****** Object:  StoredProcedure [dbo].[LaSutaMasiniPrezente]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LaSutaMasiniPrezente]
@judet nvarchar(50)
--EXEC listaElemente '2014-11-08'
--CREATE PROCEDURE dbo.LaSutaMasiniPrezente
AS
DECLARE  @codJ varchar(2)  = null
SET @codJ = (SELECT dbo.CodJudet(@judet))


SELECT CAST (( COUNT(M.Numar) * 100 / (SELECT COUNT(M.Numar) FROM Masina M 
JOIN Vizita V  ON V.MasinaId = M.Id
WHERE V.DataPlecare IS NULL)) as varchar) + '%' AS 'LaSutaProducatorActiv' FROM Masina M 
JOIN Vizita V  ON V.MasinaId = M.Id
WHERE V.DataPlecare IS NULL AND 
((@codJ='B' AND LEFT(Numar,2) like @codJ+'[0-9]') OR (@codJ !='B' AND LEFT(Numar,2) = @codJ))






--SELECT CAST (( COUNT(MN.Numar) * 100 / (SELECT COUNT(M.Numar) FROM Masina M 
--JOIN Vizita V  ON V.MasinaId = M.Id
--WHERE V.DataPlecare = NULL)) as varchar) + '%' AS 'LaSutaProducatorActiv'
--FROM Masina MN


--SELECT COUNT(M.Numar) FROM Masina M 
--JOIN Vizita V  ON V.MasinaId = M.Id
--WHERE V.DataPlecare = NULL
--GO


GO
/****** Object:  StoredProcedure [dbo].[LaSutaModelActiv]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC listaElemente '2014-11-08'
CREATE PROCEDURE [dbo].[LaSutaModelActiv]
AS
SELECT CAST (( COUNT(MN.Numar) * 100 / (SELECT COUNT(MN.Numar) FROM Masina MN)) as varchar) + '%' AS 'LaSutaModelActiv'
FROM Masina MN
JOIN Model MDL ON MN.ModelId = MDL.Id
WHERE MDL.Activ = 1;

GO
/****** Object:  StoredProcedure [dbo].[LaSutaModelAnX]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC listaElemente '2014-11-08'
CREATE PROCEDURE [dbo].[LaSutaModelAnX]

@an int 
AS

SELECT CAST (( COUNT(M.Numar) * 100 / ( SELECT COUNT(Ma.Numar) FROM Masina Ma )) as varchar) + '%' AS 'LaSutaProducatorActiv'
 FROM Masina M 
JOIN Model MD  ON M.ModelId = MD.Id
WHERE MD.An = @an
SELECT * FROM MODEL



GO
/****** Object:  StoredProcedure [dbo].[LaSutaProducatorActiv]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC listaElemente '2014-11-08'
CREATE PROCEDURE [dbo].[LaSutaProducatorActiv]
AS
SELECT CAST (( COUNT(MN.Numar) * 100 / (SELECT COUNT(MN.Numar) FROM Masina MN)) as varchar) + '%' AS 'LaSutaProducatorActiv'
FROM Masina MN
JOIN Model MDL ON MN.ModelId = MDL.Id
JOIN Producator P ON MDL.ProducatorId = P.Id
WHERE P.Activ = 1;

GO
/****** Object:  StoredProcedure [dbo].[MasiniProducatorXdinJudetY]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC listaElemente '2014-11-08'
CREATE PROCEDURE [dbo].[MasiniProducatorXdinJudetY]

  @producator varchar(50)   ,
  @judet varchar(50) 
 
 AS
 DECLARE
  @codJ varchar(2) 	= null
SET @codJ = (SELECT dbo.CodJudet(@judet))

SELECT MN.Numar,MN.Culoare,MDL.Nume,PR.Nume 
FROM Masina MN
JOIN Model MDL ON MN.ModelId = MDL.Id
JOIN Producator PR ON PR.Id = MDL.ProducatorId
WHERE PR.Nume = @producator AND 
((@codJ='B' AND LEFT(Numar,2) like @codJ+'[0-9]') OR (@codJ !='B' AND LEFT(Numar,2) = @codJ))

GO
/****** Object:  StoredProcedure [dbo].[ProfitParcare]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 --EXEC listaElemente '2014-11-08'
 CREATE   PROCEDURE [dbo].[ProfitParcare]
 

  @perioadaInceput datetime ,
  @perioadaSfarsit datetime 	,
  @tarif decimal 
 AS

SELECT  SUM(DATEDIFF(HOUR,V.DataSosire,V.DataPlecare))*@tarif AS 'Castig',SUM(DATEDIFF(HOUR,V.DataSosire,V.DataPlecare))*@tarif - (SELECT SUM(N.CostIntretinere) FROM Nivel N) AS 'Profit' FROM Vizita V 
INNER JOIN 
(SELECT  V.Id
FROM Vizita V
WHERE V.DataSosire > @perioadaInceput AND V.DataPlecare < @perioadaSfarsit) AS Viz
ON Viz.Id = V.Id




GO
/****** Object:  StoredProcedure [dbo].[ProfitpeNivelRegiune]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC listaElemente '2014-11-08'
 CREATE PROCEDURE [dbo].[ProfitpeNivelRegiune]
--SELECT * FROM NIVEL SELECT * FROM Vizita
 
  @regiune char(1)  ,
  @nivel varchar(50) ,
  @perioadaInceput datetime  ,
  @perioadaSfarsit datetime  	,
  @tarif decimal  
 AS

SELECT N.Nume,N.Regiune, SUM(DATEDIFF(HOUR,V.DataSosire,V.DataPlecare))*@tarif  AS 'Castig' , SUM(DATEDIFF(HOUR,V.DataSosire,V.DataPlecare))*@tarif - N.CostIntretinere AS 'Profit' FROM Vizita V 
INNER JOIN 
(SELECT  V.Id
FROM Vizita V
WHERE V.DataSosire > @perioadaInceput AND V.DataPlecare < @perioadaSfarsit) AS Viz
ON Viz.Id = V.Id
INNER JOIN Nivel N ON N.Id = V.NivelId AND N.Nume = @nivel AND N.Regiune = @regiune
GROUP BY N.Nume , N.Regiune , N.CostIntretinere



GO
/****** Object:  StoredProcedure [dbo].[XOreLaRand]    Script Date: 12/8/2016 3:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC listaElemente '2014-11-08'
 CREATE PROCEDURE [dbo].[XOreLaRand]
 
@ore int 
 AS
SELECT DISTINCT M.Numar, M.Culoare, MD.Nume , P.Nume  FROM Vizita V
JOIN Masina M ON M.Id = V.MasinaId
JOIN Model MD ON MD.Id = M.ModelId
JOIN Producator P ON P.Id = MD.ProducatorId
WHERE DATEDIFF(HOUR,V.DataSosire,V.DataPlecare) >= @ore

--GO
GO
USE [master]
GO
ALTER DATABASE [Parcare] SET  READ_WRITE 
GO
