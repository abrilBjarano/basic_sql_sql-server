create view vw_librosAutores as -- views aren't tables, but instead of the "join" statement, they're saved.

	select -- the same syntaxis is used for a view.

		Libros.IdLibro,
		Libros.Nombre as Libro,
		Libros.IdAutor,
		Autores.Nombre as Autor

	from Libros

	inner join Autores on Libros.IdAutor = Autores.IdAutor
	
	---------------------------------------------------------------------------------

	select * from vw_librosAutores -- to display the view, also yse the same statement