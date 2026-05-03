# **Investigación: Liquibase y Control de Cambios en Base de Datos**

## *¿Qué es Liquibase?*
Es una herramienta de código abierto para la gestión y versionado de cambios en el esquema de bases de datos. Permite a los desarrolladores rastrear, automatizar y desplegar cambios (como crear tablas o añadir columnas) de forma segura y consistente entre entornos (desarrollo, pruebas, producción), reduciendo riesgos y facilitando la colaboración

## **Conceptos clave**

### Changelog
Archivo (`db.changelog-master.yaml`) lista que todos los archivos
de migración se encuentren en el orden en que deben ejecutarse. Liquibase lo lee de
arriba a abajo y aplica solo los changesets que aún no han sido ejecutados.

### Changeset
Es la unidad mínima de cambio dentro de un archivo de migración. Cada changeset
tiene un identificador único compuesto por `autor:id`. En lo cual, Liquibase registra
cada changeset ejecutado en la tabla interna `DATABASECHANGELOG`, evitando
que se repitan en ejecuciones futuras.

Ejemplo:
### DDL (Data Definition Language)
Las sentencias SQL que definen o modifican la estructura de la base de datos.
DDL es una sintaxis utilizada para crear, modificar y eliminar objetos. Se parece a un lenguaje de programación, pero su objetivo es definir específicamente las estructuras de datos dentro de una base de datos. Su propósito es crear y gestionar las estructuras de almacenamiento para los datos en las bases de datos. Una de las principales ventajas del DDL es su independencia de la plataforma. El modelo relacional es la base de las bases de datos SQL. Este modelo es independiente de la plataforma específica o la infraestructura utilizada y no depende del sistema.

La sintaxis se mantiene mayormente igual a través de diferentes proveedores de bases de datos como Oracle, MySQL y Microsoft SQL Server. Esta consistencia facilita a los desarrolladores trabajar con múltiples sistemas de bases de datos. La independencia de la sintaxis del DDL es una ventaja.

Entender qué es el DDL ayuda a los equipos a documentar, versionar y replicar las estructuras de bases de datos con confianza. También agiliza el desarrollo y el despliegue de aplicaciones escalables.

Incluye: `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`.
En este proyecto se ubican en `db/changelog/ddl/`.

### DML (Data Manipulation Language)
Las sentencias SQL que manipulan los datos dentro de las tablas. El DML desempeña un papel central en el trabajo con bases de datos relacionales. Permite a los usuarios realizar tareas esenciales como insertar, actualizar, seleccionar y eliminar registros—tareas que impulsan la lógica de la aplicación, los informes, los paneles de control y las interacciones con el usuario. El Lenguaje de Manipulación de Datos no es solo un conjunto de comandos SQL, es lo que da vida a tus datos. Dominarlo te permite construir aplicaciones responsivas, potenciar análisis en tiempo real y gestionar datos dinámicos con precisión. 
Incluye: `INSERT`, `UPDATE`, `DELETE`.
En este proyecto se ubican en `db/changelog/dml/`.

### Rollback
Es un mecanismo que permite deshacer un changeset previamente aplicado.
Liquibase ejecuta las instrucciones definidas después de `-- rollback`
en cada changeset. Es útil cuando una migración genera errores y
necesita revertirse. Las transacciones son secuencias de operaciones 
realizadas como una única unidad lógica de trabajo, y `COMMIT` se utiliza
 para hacer permanentes todos los cambios, mientras que `ROLLBACK` los deshace.

### Migraciones de base de datos
 Es el proceso de transferir datos, esquemas (tablas, índices, vistas) 
 y otros objetos desde un sistema de almacenamiento actual a uno nuevo o actualizado.
Se realiza para mejorar el rendimiento, reducir costos, adoptar nuevas 
tecnologías (como la nube) o reforzar la seguridad

## Docker Compose en este proyecto
Docker Compose orquesta dos servicios:
- **db**: contenedor PostgreSQL 15 que actúa como motor de base de datos.
- **liquibase**: contenedor oficial de Liquibase que se conecta al servicio
  `db` y ejecuta las migraciones definidas en el changelog.

El servicio `liquibase` depende de que `db` esté saludable antes de
iniciar, garantizando que PostgreSQL esté listo para recibir conexiones.

## Ventajas de usar Liquibase
- Evita inconsistencias entre entornos de desarrollo y producción.
- Permite trabajo en equipo sin conflictos de esquema.
- Facilita auditoría de cambios: quién hizo qué y cuándo.
- Soporta rollback automatizado ante errores.
- Compatible con múltiples motores: PostgreSQL, MySQL, Oracle, SQL Server.

## Referencias
- Documentación oficial: https://www.liquibase.com/how-liquibase-works, https://docs.liquibase.com/
- PostgreSQL 15: https://www.postgresql.org/docs/15/