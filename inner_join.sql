select -- this part is only for make a view of the table
Libros.IdLibro, 
Libros.Nombre as Libros, -- "" as "", is used to give an alias to a field to avoid repeating names when the inner table is showing
Autores.Nombre as Autor, 
Editoriales.Nombre as Editorial, 
Categorias.TipoCategoria as Categoria

from Libros -- base table

-- [2nd table to be joined] on [where in the 1st table it goes] = [what part of the 2nd table is going to join]
inner join Autores on Libros.IdAutor = Autores.IdAutor 
inner join Editoriales on Libros.IdEditorial = Editoriales.IdEditorial
inner join Categorias on Libros.IdCategoria = Categorias.IdCategoria

select * from Libros 
select * from Editoriales
select * from Categorias