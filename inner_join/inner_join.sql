select 

Libros.IdLibro, 
Libros.Nombre as Libros, -- "" as "", sirve para ponerle un alias a un campo para que no se repitan nombres
Autores.Nombre as Autor, 
Editoriales.Nombre as Editorial, 
Categorias.TipoCategoria as Categoria

from Libros -- tabla base

-- [tabla que se va a unir] on [en que parte de la tabla base va] = [que parte de la tabla que se va a unir va ahí]
inner join Autores on Libros.IdAutor = Autores.IdAutor 
inner join Editoriales on Libros.IdEditorial = Editoriales.IdEditorial
inner join Categorias on Libros.IdCategoria = Categorias.IdCategoria

select * from Libros
select * from Editoriales
select * from Categorias