select -- this part is only for make a view of the table

-- parameters that we want to see in the view of the join
Libros.IdLibro, 
-- "" as "", is used to give an alias to a field to avoid repeating names when the inner table is showing
Libros.Nombre as Libros, 
Autores.Nombre as Autor, 
Editoriales.Nombre as Editorial, 
Categorias.TipoCategoria as Categoria

from Libros -- base table

-- [2nd table to be joined] on [where in the 1st table it goes] = [what part of the 2nd table is going to join]
left join Autores on Libros.IdAutor = Autores.IdAutor 
left join Editoriales on Libros.IdEditorial = Editoriales.IdEditorial
left join Categorias on Libros.IdCategoria = Categorias.IdCategoria