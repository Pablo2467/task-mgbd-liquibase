# **task-mgbd-liquibase**

👤 Juan Pablo Valverde Barreiro

📚Taller investigativo: construcción de base de datos con Liquibase, Docker y PostgreSQL.

🛢️☕︎Asignatura: Modelado y Gestión de Base de Datos — CORHUILA.

## Tecnologías utilizadas
- PostgreSQL 15
- Liquibase 4.27
- Docker y Docker Compose

## Modelo relacional
## Requisitos previos
- 🐳Docker Desktop instalado y en ejecución
- 🛠️Git instalado

## Pasos para ejecutar el proyecto

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

### 5. Ejecutar migraciones DDL y DML
```bash
docker compose run --rm liquibase update
```

### 6. Verificar estado de los changesets
```bash
docker compose run --rm liquibase status --verbose
```

## Validación en PostgreSQL

```bash
# Ver tablas creadas
docker compose exec db psql -U postgres -d mgbd_liquibase -c "\dt"

# Consultar personas
docker compose exec db psql -U postgres -d mgbd_liquibase -c "SELECT * FROM persona;"

# Consultar facturas
docker compose exec db psql -U postgres -d mgbd_liquibase -c "SELECT * FROM factura;"

# Consultar productos
docker compose exec db psql -U postgres -d mgbd_liquibase -c "SELECT * FROM producto;"
```

## Orden de ejecución de migraciones

| Orden | Archivo | Tipo | Descripción |
|---|---|---|---|
| 1 | 001-create-persona.sql | DDL | Tabla persona |
| 2 | 002-create-rol.sql | DDL | Tabla rol |
| 3 | 003-create-usuario.sql | DDL | Tabla usuario |
| 4 | 004-create-producto.sql | DDL | Tabla producto |
| 5 | 005-create-factura.sql | DDL | Tabla factura |
| 6 | 006-create-detalle-factura.sql | DDL | Tabla detalle_factura |
| 7 | 001-insert-data.sql | DML | Inserción de datos de prueba |
| 8 | 002-update-data.sql | DML | Actualización de registros |
| 9 | 003-delete-data.sql | DML | Desactivación de usuario |
