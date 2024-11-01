# Gestión de Usuarios con Base de Datos No Relacional

## Descripción

Una base de datos no relacional (NoSQL) es ideal para la gestión de usuarios debido a su flexibilidad y escalabilidad. Este tipo de base de datos permite almacenar datos en formatos como documentos, clave-valor, o grafos, lo que facilita la adaptación a diferentes estructuras de datos.

## Descripción de Campos Clave

- **id**: Identificador único del usuario.
- **nombre**: Nombre completo del usuario.
- **email**: Dirección de correo electrónico.
- **celular**: Número de teléfono del usuario.
- **rol**: Especifica el rol del usuario en el sistema (administrador, empleado de almacén, gerente de ventas).
- **permisos**: Lista de permisos específicos asociados con el usuario, lo que permite controlar su acceso a las funcionalidades.
- **fecha_creacion**: Fecha de creación del usuario.
- **estado**: Estado actual de la cuenta del usuario (ej. activo, inactivo, suspendido).

# Gestión de Empresas con Base de Datos  Relacional

## Descripción

Este modelo de base de datos está diseñado para gestionar información sobre **empresas** y sus **sucursales**. La relación entre estas dos entidades permite organizar y administrar los datos de cada empresa y sus distintas ubicaciones o puntos de operación.

## Modelo Entidad Relación 

A continuación se agrega el modelo entidad relación para la presente base de datos 
![Entidad Relación - empresas](Empresas.png)

## Tablas

### Tabla `Empresa`

La tabla `Empresa` almacena información general de cada empresa registrada en el sistema. Los campos de esta tabla son:

- **empresa_id**: Identificador único de la empresa, definido como clave primaria (`PRIMARY KEY`) y con autoincremento (`AUTO_INCREMENT`).
- **nombre**: Nombre de la empresa. Es un campo obligatorio (`NOT NULL`) con un límite de 100 caracteres.
- **direccion**: Dirección de la empresa, con un límite de 200 caracteres.
- **telefono**: Número de teléfono de la empresa, con un límite de 20 caracteres.
- **email**: Correo electrónico de contacto de la empresa, con un límite de 100 caracteres.
- **fecha_creacion**: Fecha en la que se creó la empresa en el sistema.
- **estado**: Estado actual de la empresa, como "activo" o "inactivo", con un límite de 50 caracteres.

### Tabla `Sucursal`

La tabla `Sucursal` almacena información sobre las distintas sucursales de cada empresa. Está relacionada con la tabla `Empresa` a través de una clave foránea (`FOREIGN KEY`). Los campos de esta tabla son:

- **sucursal_id**: Identificador único de la sucursal, definido como clave primaria (`PRIMARY KEY`) y con autoincremento (`AUTO_INCREMENT`).
- **empresa_id**: Identificador de la empresa a la que pertenece la sucursal, definido como clave foránea (`FOREIGN KEY`) que referencia a `empresa_id` en la tabla `Empresa`. La relación se configura para eliminar (`ON DELETE CASCADE`) y actualizar (`ON UPDATE CASCADE`) en cascada, de modo que los cambios o eliminaciones de una empresa se reflejen en las sucursales relacionadas.
- **nombre**: Nombre de la sucursal. Es un campo obligatorio (`NOT NULL`) con un límite de 100 caracteres.
- **direccion**: Dirección de la sucursal, con un límite de 200 caracteres.
- **telefono**: Número de teléfono de la sucursal, con un límite de 20 caracteres.
- **email**: Correo electrónico de contacto de la sucursal, con un límite de 100 caracteres.
- **fecha_creacion**: Fecha en la que se creó la sucursal en el sistema.
- **estado**: Estado actual de la sucursal, como "activo" o "inactivo", con un límite de 50 caracteres.

## Relaciones entre Tablas

La relación entre `Empresa` y `Sucursal` es de uno a muchos, donde una **empresa** puede tener múltiples **sucursales**, pero cada **sucursal** está asociada a una única **empresa**. La configuración en cascada para eliminar y actualizar en la relación entre `Sucursal` y `Empresa` garantiza que cualquier cambio en la entidad `Empresa` afecte automáticamente a las sucursales correspondientes, manteniendo la integridad referencial.

Este modelo permite gestionar los datos de empresas y sus sucursales de forma estructurada, facilitando las operaciones de consulta y administración en sistemas de bases de datos relacionales.
