SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ABRIL BEJARANO
-- Create date: 8/4/22
-- Description:	Leer los libros
-- =============================================
CREATE PROCEDURE leerLibros 
AS
BEGIN
	SET NOCOUNT ON;

	select -- the same syntaxis is used for a view.

		Libros.IdLibro,
		Libros.Nombre as Libro,
		Libros.IdAutor,
		Autores.Nombre as Autor

	from Libros

	inner join Autores on Libros.IdAutor = Autores.IdAutor 
END
GO