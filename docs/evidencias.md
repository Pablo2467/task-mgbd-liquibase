# **Evidencias de Ejecución**

## Entorno de trabajo
- Sistema operativo: Windows
- Docker Desktop: instalado y activo
- Editor: Visual Studio Code

## Comandos ejecutados

### 1. Clonar el repositorio
```bash
git clone https://github.com/Pablo2467/task-mgbd-liquibase
cd task-mgbd-liquibase
```

### 2. Limpiar entorno previo
```bash
docker compose down -v
```

### 3. Levantar la base de datos
```bash
docker compose up -d db
```

### 4. Validar configuración de Liquibase
```bash
docker compose run --rm liquibase validate
```
Salida esperada: `Liquibase command 'validate' was executed successfully.`

### 5. Ejecutar migraciones
```bash
docker compose run --rm liquibase update
```
Salida esperada: `Liquibase command 'update' was executed successfully.`

### 6. Verificar estado de changesets
```bash
docker compose run --rm liquibase status --verbose
```

### 7. Validar tablas en PostgreSQL
```bash
docker compose exec db psql -U postgres -d mgbd_liquibase -c "\dt"
docker compose exec db psql -U postgres -d mgbd_liquibase -c "SELECT * FROM persona;"
docker compose exec db psql -U postgres -d mgbd_liquibase -c "SELECT * FROM factura;"
docker compose exec db psql -U postgres -d mgbd_liquibase -c "SELECT * FROM producto;"
```

## Tablas creadas
| Tabla | Descripción |
|---|---|
| persona | Datos personales de los usuarios del sistema |
| rol | Roles disponibles en el sistema |
| usuario | Credenciales y acceso al sistema |
| producto | Catálogo de productos disponibles |
| factura | Registro de ventas realizadas |
| detalle_factura | Líneas de producto por cada factura |

## Resultado de migraciones
- Total changesets DDL ejecutados: 6
- Total changesets DML ejecutados: 9
- Errores: ninguno