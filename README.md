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

# Gesti�n de Empresas con Base de Datos  Relacional

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
