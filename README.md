# Gesti�n de Usuarios con Base de Datos No Relacional

## Descripci�n

Una base de datos no relacional (NoSQL) es ideal para la gesti�n de usuarios debido a su flexibilidad y escalabilidad. Este tipo de base de datos permite almacenar datos en formatos como documentos, clave-valor, o grafos, lo que facilita la adaptaci�n a diferentes estructuras de datos.

## Descripci�n de Campos Clave

- **id**: Identificador �nico del usuario.
- **nombre**: Nombre completo del usuario.
- **email**: Direcci�n de correo electr�nico.
- **celular**: N�mero de tel�fono del usuario.
- **rol**: Especifica el rol del usuario en el sistema (administrador, empleado de almac�n, gerente de ventas).
- **permisos**: Lista de permisos espec�ficos asociados con el usuario, lo que permite controlar su acceso a las funcionalidades.
- **fecha_creacion**: Fecha de creaci�n del usuario.
- **estado**: Estado actual de la cuenta del usuario (ej. activo, inactivo, suspendido).

# Gesti�n de Empresas con Base de Datos Relacional

## Descripci�n

Este modelo de base de datos est� dise�ado para gestionar informaci�n sobre **empresas** y sus **sucursales**. La relaci�n entre estas dos entidades permite organizar y administrar los datos de cada empresa y sus distintas ubicaciones o puntos de operaci�n.

## Modelo Entidad Relaci�n 

A continuaci�n se agrega el modelo entidad relaci�n para la presente base de datos 
![Entidad Relaci�n - empresas](Empresas.png)

## Tablas

### Tabla `Empresa`

La tabla `Empresa` almacena informaci�n general de cada empresa registrada en el sistema. Los campos de esta tabla son:

- **empresa_id**: Identificador �nico de la empresa, definido como clave primaria (`PRIMARY KEY`) y con autoincremento (`AUTO_INCREMENT`).
- **nombre**: Nombre de la empresa. Es un campo obligatorio (`NOT NULL`) con un l�mite de 100 caracteres.
- **direccion**: Direcci�n de la empresa, con un l�mite de 200 caracteres.
- **telefono**: N�mero de tel�fono de la empresa, con un l�mite de 20 caracteres.
- **email**: Correo electr�nico de contacto de la empresa, con un l�mite de 100 caracteres.
- **fecha_creacion**: Fecha en la que se cre� la empresa en el sistema.
- **estado**: Estado actual de la empresa, como "activo" o "inactivo", con un l�mite de 50 caracteres.

### Tabla `Sucursal`

La tabla `Sucursal` almacena informaci�n sobre las distintas sucursales de cada empresa. Est� relacionada con la tabla `Empresa` a trav�s de una clave for�nea (`FOREIGN KEY`). Los campos de esta tabla son:

- **sucursal_id**: Identificador �nico de la sucursal, definido como clave primaria (`PRIMARY KEY`) y con autoincremento (`AUTO_INCREMENT`).
- **empresa_id**: Identificador de la empresa a la que pertenece la sucursal, definido como clave for�nea (`FOREIGN KEY`) que referencia a `empresa_id` en la tabla `Empresa`. La relaci�n se configura para eliminar (`ON DELETE CASCADE`) y actualizar (`ON UPDATE CASCADE`) en cascada, de modo que los cambios o eliminaciones de una empresa se reflejen en las sucursales relacionadas.
- **nombre**: Nombre de la sucursal. Es un campo obligatorio (`NOT NULL`) con un l�mite de 100 caracteres.
- **direccion**: Direcci�n de la sucursal, con un l�mite de 200 caracteres.
- **telefono**: N�mero de tel�fono de la sucursal, con un l�mite de 20 caracteres.
- **email**: Correo electr�nico de contacto de la sucursal, con un l�mite de 100 caracteres.
- **fecha_creacion**: Fecha en la que se cre� la sucursal en el sistema.
- **estado**: Estado actual de la sucursal, como "activo" o "inactivo", con un l�mite de 50 caracteres.

## Relaciones entre Tablas

La relaci�n entre `Empresa` y `Sucursal` es de uno a muchos, donde una **empresa** puede tener m�ltiples **sucursales**, pero cada **sucursal** est� asociada a una �nica **empresa**. La configuraci�n en cascada para eliminar y actualizar en la relaci�n entre `Sucursal` y `Empresa` garantiza que cualquier cambio en la entidad `Empresa` afecte autom�ticamente a las sucursales correspondientes, manteniendo la integridad referencial.

Este modelo permite gestionar los datos de empresas y sus sucursales de forma estructurada, facilitando las operaciones de consulta y administraci�n en sistemas de bases de datos relacionales.

# Gesti�n de Productos Proveedores con Base de Datos Relacional

## Descripci�n

Este modelo de base de datos est� dise�ado para gestionar la informaci�n sobre **proveedores**, **marcas**, **productos** y sus **categor�as** en un sistema de inventario o gesti�n de productos. A continuaci�n, se detalla cada una de las tablas y sus relaciones.

## Modelo Entidad Relaci�n 

A continuaci�n se agrega el modelo entidad relaci�n para la presente base de datos 
![Entidad Relaci�n - productos/proveedor](proveedor_producto.png)

## Tablas

### Tabla `Proveedor`

La tabla `Proveedor` almacena la informaci�n de los proveedores de productos. Los campos de esta tabla son:

- **id_proveedor**: Identificador �nico del proveedor, definido como clave primaria (`PRIMARY KEY`) con autoincremento (`AUTO_INCREMENT`).
- **nombre**: Nombre del proveedor, campo obligatorio (`NOT NULL`) con un l�mite de 100 caracteres.
- **direccion**: Direcci�n del proveedor, con un l�mite de 255 caracteres.
- **telefono**: N�mero de tel�fono del proveedor, con un l�mite de 15 caracteres.
- **correo_electronico**: Correo electr�nico de contacto del proveedor, con un l�mite de 100 caracteres.
- **fecha_registro**: Fecha en la que el proveedor fue registrado, campo obligatorio.
- **estado**: Estado del proveedor, definido como un tipo enumerado (`ENUM`) que puede ser 'activo' o 'inactivo', con 'activo' como valor predeterminado.

### Tabla `Marca`

La tabla `Marca` almacena las marcas de los productos. Los campos de esta tabla son:

- **id_marca**: Identificador �nico de la marca, definido como clave primaria (`PRIMARY KEY`) con autoincremento (`AUTO_INCREMENT`).
- **nombre**: Nombre de la marca, campo obligatorio (`NOT NULL`) con un l�mite de 100 caracteres.
- **descripcion**: Descripci�n de la marca, campo opcional de tipo `TEXT`.

### Tabla `Producto`

La tabla `Producto` almacena informaci�n detallada de los productos ofrecidos. Est� relacionada con las tablas `Proveedor` y `Marca` a trav�s de claves for�neas (`FOREIGN KEY`). Los campos de esta tabla son:

- **id_producto**: Identificador �nico del producto, definido como clave primaria (`PRIMARY KEY`) con autoincremento (`AUTO_INCREMENT`).
- **id_proveedor**: Identificador del proveedor del producto, definido como clave for�nea que referencia `id_proveedor` en la tabla `Proveedor`. En caso de eliminaci�n del proveedor, este campo se establece en `NULL` (`ON DELETE SET NULL`).
- **id_marca**: Identificador de la marca del producto, definido como clave for�nea que referencia `id_marca` en la tabla `Marca`. En caso de eliminaci�n de la marca, este campo se establece en `NULL` (`ON DELETE SET NULL`).
- **nombre**: Nombre del producto, campo obligatorio (`NOT NULL`) con un l�mite de 100 caracteres.
- **descripcion**: Descripci�n del producto, campo opcional de tipo `TEXT`.
- **precio**: Precio del producto, campo obligatorio con dos decimales (`DECIMAL(10, 2)`).
- **unidad_medida**: Unidad de medida del producto (por ejemplo, piezas, litros), con un l�mite de 50 caracteres.
- **fecha_creacion**: Fecha en la que el producto fue creado en el sistema, campo obligatorio.
- **estado**: Estado del producto, definido como un tipo enumerado (`ENUM`) que puede ser 'disponible' o 'no disponible', con 'disponible' como valor predeterminado.

### Tabla `Categoria`

La tabla `Categoria` almacena las categor�as de productos. Los campos de esta tabla son:

- **id_categoria**: Identificador �nico de la categor�a, definido como clave primaria (`PRIMARY KEY`) con autoincremento (`AUTO_INCREMENT`).
- **nombre**: Nombre de la categor�a, campo obligatorio (`NOT NULL`) con un l�mite de 100 caracteres.
- **descripcion**: Descripci�n de la categor�a, campo opcional de tipo `TEXT`.

### Tabla `Producto_Categoria`

La tabla `Producto_Categoria` es una tabla de asociaci�n que permite una relaci�n de muchos a muchos entre `Producto` y `Categoria`. Los campos de esta tabla son:

- **id_producto**: Identificador del producto, definido como clave for�nea (`FOREIGN KEY`) que referencia `id_producto` en la tabla `Producto`.
- **id_categoria**: Identificador de la categor�a, definido como clave for�nea (`FOREIGN KEY`) que referencia `id_categoria` en la tabla `Categoria`.
- **PRIMARY KEY (id_producto, id_categoria)**: Clave primaria compuesta que asegura la unicidad de las combinaciones de productos y categor�as, evitando duplicados en la asociaci�n.

