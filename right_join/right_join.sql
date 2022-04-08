select 

Libros.IdLibro,
Libros.Nombre as Libro,
Autores.Nombre as Autor,
Editoriales.Nombre as Editorial,
Categorias.TipoCategoria as Categoría

from Libros

right join Autores on Libros.IdAutor = Autores.IdAutor
right join Editoriales on Libros.IdEditorial = Editoriales.IdEditorial
right join Categorias on Libros.IdCategoria = Categorias.IdCategoria