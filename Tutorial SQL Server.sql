--2 - Crear una tabla (create table - sp_tables - sp_columns - drop table)
 if object_id('usuarios') is not null
  drop table usuarios;

 create table usuarios (
  nombre varchar(30),
  clave varchar(10)
 );

 sp_tables @table_owner='dbo';

 sp_columns usuarios;

 create table usuarios (
  nombre varchar(30),
  clave varchar(10)
 );

 drop table usuarios;

 sp_tables @table_owner='dbo';

--3 - Insertar y recuperar registros de una tabla (insert into - select)