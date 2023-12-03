USE [Icetex]
GO
/****** Object:  StoredProcedure [dbo].[Importa_Reparto_Administrativo]    Script Date: 22/11/2023 8:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Importa_Reparto_Administrativo]
as
begin
select *
from [dbo].[Tbl_Reparto_Administrativo]
truncate table [dbo].[Tbl_Reparto_Administrativo]
BULK INSERT [dbo].[Tbl_Reparto_Administrativo]
FROM 'C:\Input_dbo_Icetex\06_Reparto\IQ-ASDBase_Reparto_Administrativo.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n'
);
end;
