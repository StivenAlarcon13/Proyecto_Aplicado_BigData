USE [Icetex]
GO
/****** Object:  StoredProcedure [dbo].[Importa_Recaudo_Administrativo]    Script Date: 30/11/2023 7:01:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Importa_Recaudo_Administrativo]
AS
BEGIN
    -- Selecciona todos los datos de la tabla [dbo].[Retiros]
    SELECT *
    FROM [dbo].[Retiros];

    -- Trunca la tabla [dbo].[Retiros]
    TRUNCATE TABLE [dbo].[Retiros];

    -- Intenta cargar los datos desde el archivo CSV
    BULK INSERT [dbo].[Retiros]
    FROM 'C:\Input_dbo_Icetex\15\Recaudo_Administrativo.csv'
    WITH (
        FORMAT = 'CSV',
        FIRSTROW = 2,
        FIELDTERMINATOR = ';',
        ROWTERMINATOR = '\n'
    );
END;
