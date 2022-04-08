SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ABRIL BEJARANO
-- Create date: 8/4/22
-- Description:	Insert books
-- =============================================
CREATE PROCEDURE insertarLibros
	@Nombre as varchar(500), -- parameters always start with @. it's advisable to use the same names as the parameters of the tables
	@IdAutor as int,
	@IdEditorial as int,
	@IdCategoria as int,
	@Prestado as bit,
	@IdUsuario as int
AS
BEGIN
	SET NOCOUNT ON;

    insert into Libros -- the same syntaxis to insert data, but with the name of the parameters of the stored procedure as values
	(Nombre, IdAutor, IdEditorial, IdCategoria, Prestado, IdUsuario)
	values
	(@Nombre, @IdAutor, @IdEditorial, @IdCategoria, @Prestado, @IdUsuario)

END
GO