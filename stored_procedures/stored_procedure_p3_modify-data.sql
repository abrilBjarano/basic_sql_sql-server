SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ABRIL BEJARANO
-- Create date: 8/4/22
-- Description:	Modify books
-- =============================================
CREATE PROCEDURE modificarLibros
	@Nombre as varchar(500), -- parameters always start with @. it's advisable to use the same names as the parameters of the tables
	@IdLibro as int
AS
BEGIN
	SET NOCOUNT ON;

    update Libros
	set Nombre = @Nombre
	where IdLibro = @IdLibro

END
GO