
/* 2 - Crear una tabla (create table - sp_tables - sp_columns - drop table)  */

if object_id('agenda') is not null
drop table agenda;

-- Error al colocarle / al nombre agenda.
Create table /agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

Create table agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

-- Error al crear la tabla dos veces.
Create table agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

exec sp_tables @table_owner='dbo';

xec sp_columns agenda;

drop table agenda;

drop table agenda;


/* 3 - Insertar y recuperar registros de una tabla (insert into - select) */

if object_id('agenda') is not null
drop table agenda;

Create table agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

exec sp_tables @table_owner='dbo';

exec sp_columns agenda;

insert into agenda (apellido, nombre, domicilio, telefono)
	values ('Moreno','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre, domicilio, telefono)
	values ('Torres','Juan','Avellaneda 135','4458787');

SELECT * FROM agenda;

drop table agenda;

drop table agenda; -- Error al eliminar la tabla de nuevo.


/* 4 - Tipos de datos básicos */

if object_id('peliculas')is not null
drop table peliculas;

Create table peliculas(
	nombre varchar(20),
	actor varchar(20),
	duracion integer,
	cantidad integer
);

exec sp_columns peliculas;

insert into peliculas (nombre, actor, duracion, cantidad)
	values ('Mision imposible','Tom Cruise',128,3);
insert into peliculas (nombre, actor, duracion, cantidad)
	values ('Mision imposible 2','Tom Cruise',130,2);
insert into peliculas (nombre, actor, duracion, cantidad)
	values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (nombre, actor, duracion, cantidad)
	values ('Elsa y Fred','China Zorrilla',110,2);

SELECT * FROM peliculas;


/* 5 - Recuperar algunos campos (SELECT) */

if object_id('peliculas') is not null
drop table peliculas;

Create table peliculas(
	titulo varchar(20),
	actor varchar(20),
	duracion integer,
	cantidad integer
);

exec sp_columns peliculas;

insert into peliculas (titulo, actor, duracion, cantidad)
	values ('Mision imposible','Tom Cruise',180,3);
insert into peliculas (titulo, actor, duracion, cantidad)
	values ('Mision imposible 2','Tom Cruise',190,2);
insert into peliculas (titulo, actor, duracion, cantidad)
	values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (titulo, actor, duracion, cantidad)
	values ('Elsa y Fred','China Zorrilla',110,2);

SELECT titulo,actor FROM peliculas;

SELECT titulo,duracion FROM peliculas;

SELECT titulo,cantidad FROM peliculas;


/* 6 - Recuperar algunos registros (where) */

if object_id('agenda') is not null
drop table agenda;

Create table agenda (
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

exec sp_columns agenda;

insert into agenda(apellido,nombre,domicilio,telefono)
	values ('Acosta', 'Ana', 'Colon 123', '4234567');
insert into agenda(apellido,nombre,domicilio,telefono)
	values ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');
insert into agenda(apellido,nombre,domicilio,telefono)
	values ('Lopez', 'Hector', 'Salta 545', '4887788'); 
insert into agenda(apellido,nombre,domicilio,telefono)
	values ('Lopez', 'Luis', 'Urquiza 333', '4545454');
insert into agenda(apellido,nombre,domicilio,telefono)
	values ('Lopez', 'Marisa', 'Urquiza 333', '4545454');

SELECT * FROM agenda;

SELECT * FROM agenda
	where nombre='Marisa';

SELECT nombre,domicilio FROM agenda
where apellido='Lopez';

SELECT nombre FROM agenda
where telefono='4545454';


/* 7 - Operadores relacionales */

if object_id('articulos') is not null
drop table articulos;

Create table articulos(
	codigo integer,
	nombre varchar(20),
	descripcion varchar(30),
	precio float,
	cantidad integer
);

exec sp_columns articulos;

insert into articulos (codigo, nombre, descripcion, precio,cantidad)
	values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
	values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
	values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
	values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
	values (5,'teclado','español Biswal',90,50);

SELECT * FROM articulos
where nombre='impresora';

SELECT * FROM articulos
where precio>=400;

SELECT codigo,nombre FROM articulos
where cantidad<30;

SELECT nombre, descripcion FROM articulos
where precio<>100;


/* 8 - Borrar registros (delete) */

if object_id('agenda') is not null
drop table agenda;

Create table agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

insert into agenda (apellido,nombre,domicilio,telefono)
	values('Alvarez','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono)
	values('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono)
	values('Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
	values('Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
	values('Salas','Susana','Gral. Paz 1234','4123456');

delete FROM agenda
where nombre='Juan';

delete FROM agenda
where telefono='4545454';

SELECT * FROM agenda;

delete FROM agenda;

SELECT * FROM agenda;


/* 9 - Actualizar registros (update) */


if object_id('agenda') is not null
drop table agenda;

Create table agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

insert into agenda (apellido,nombre,domicilio,telefono)
	values ('Acosta','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono)
	values ('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono)
	values ('Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
	values ('Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
	values ('Suarez','Susana','Gral. Paz 1234','4123456');

SELECT * FROM agenda;

update agenda set nombre='Juan Jose'
where nombre='Juan';

SELECT * FROM agenda;

update agenda set telefono='4445566'
where telefono='4545454';

SELECT * FROM agenda;

update agenda set nombre='Juan Jose'
where nombre='Juan';

SELECT * FROM agenda;


/* 11 - Valores null (is null) */

if object_id('medicamentos') is not null
drop table medicamentos;

Create table medicamentos(
	codigo integer not null,
	nombre varchar(20) not null,
	laboratorio varchar(20),
	precio float,
	cantidad integer not null
);

exec sp_columns medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
	values(1,'Sertal gotas',null,null,100); 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
	values(2,'Sertal compuesto',null,8.90,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
	values(3,'Buscapina','Roche',null,200);

SELECT * FROM medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
	values(4,'Bayaspirina','',0,150);

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
	values(0,'','Bayer',15.60,0);

SELECT * FROM medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(null,'Amoxidal jarabe','Bayer',25,120);

SELECT * FROM medicamentos
where laboratorio is null;

SELECT * FROM medicamentos
where laboratorio='';

SELECT * FROM medicamentos
where precio is null;

SELECT * FROM medicamentos
where precio=0;

SELECT * FROM medicamentos
where laboratorio<>'';

SELECT * FROM medicamentos
	where laboratorio is not null;

SELECT * FROM medicamentos
	where precio<>0;

SELECT * FROM medicamentos
	where precio is not null;


/* 12 - Clave primaria */

if object_id('libros') is not null
drop table libros;

Create table libros(
	codigo int not null,
	titulo varchar(40) not null,
	autor varchar(20),
	editorial varchar(15),
	primary key(codigo)
);

insert into libros (codigo,titulo,autor,editorial)
	values (1,'El aleph','Borges','Emece');
insert into libros (codigo,titulo,autor,editorial)
	values (2,'Martin Fierro','Jose Hernandez','Planeta');
insert into libros (codigo,titulo,autor,editorial)
	values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');
insert into libros (codigo,titulo,autor,editorial)
	values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');
insert into libros (codigo,titulo,autor,editorial)
	values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

update libros set codigo=1
where titulo='Martin Fierro';


/* 13 - Campo con atributo Identity */

if object_id('medicamentos') is not null
drop table medicamentos;

Create table medicamentos(
	codigo int identity,
	nombre varchar(20) not null,
	laboratorio varchar(20),
	precio float,
	cantidad integer
);

exec sp_columns medicamentos;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Amoxidal 500','Bayer',15.60,100);

SELECT * FROM medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
	values(4,'Amoxilina 500','Bayer',15.60,100);

update medicamentos set codigo=5
where nombre='Bayaspirina';

delete FROM medicamentos
where codigo=3;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Amoxilina 500','Bayer',15.60,100);

SELECT * FROM medicamentos;


/* 14 - Otras características del atributo Identity */

if object_id('medicamentos') is not null
 drop table medicamentos;

Create table medicamentos(
	codigo integer identity(10,1),
	nombre varchar(20) not null,
	laboratorio varchar(20),
	precio float,
	cantidad integer
);

insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Amoxidal 500','Bayer',15.60,100);

SELECT * FROM medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
	values(4,'Amoxilina 500','Bayer',15.60,100);
set identity_insert medicamentos on;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
	values('Amoxilina 500','Bayer',15.60,100);
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
	values(10,'Amoxilina 500','Bayer',15.60,100);

SELECT ident_seed('medicamentos');

SELECT ident_incr('medicamentos');


/* 15 - Truncate table */

if object_id('alumnos') is not null
drop table alumnos;

Create table alumnos(
	legajo int identity,
	documento varchar(8),
	nombre varchar(30),
	domicilio varchar(30)
);

insert into alumnos (documento,nombre,domicilio)
	values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
	values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
	values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
	values('25666777','Torres Ramiro','Dinamarca 209');

delete FROM alumnos;

insert into alumnos (documento,nombre,domicilio)
	values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
	values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
	values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
	values('25666777','Torres Ramiro','Dinamarca 209');

SELECT * FROM alumnos;

truncate table alumnos;

insert into alumnos (documento,nombre,domicilio)
	values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
	values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
	values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
	values('25666777','Torres Ramiro','Dinamarca 209');

SELECT * FROM alumnos;


/* 17 - Tipo de dato (texto) */

if object_id('autos') is not null
drop table autos;

Create table autos(
	patente char(6),
	marca varchar(20),
	modelo char(4),
	precio float,
	primary key (patente)
);

insert into autos
	values('ACD123','Fiat 128','1970',15000);
insert into autos
	values('ACG234','Renault 11','1990',40000);
insert into autos
	values('BCD333','Peugeot 505','1990',80000);
insert into autos
	values('GCD123','Renault Clio','1990',70000);
insert into autos
	values('BCC333','Renault Megane','1998',95000);
insert into autos
	values('BVF543','Fiat 128','1975',20000);

SELECT * FROM autos
where modelo='1990';


/* 18 - Tipo de dato (numérico) */

if object_id('cuentas') is not null
drop table cuentas;

Create table cuentas(
	numero int not null,
	documento char(8),
	nombre varchar(30),
	saldo money,
	primary key (numero)
);

insert into cuentas(numero,documento,nombre,saldo)
	values('1234','25666777','Pedro Perez',500000.60);
insert into cuentas(numero,documento,nombre,saldo)
	values('2234','27888999','Juan Lopez',-250000);
insert into cuentas(numero,documento,nombre,saldo)
	values('3344','27888999','Juan Lopez',4000.50);
insert into cuentas(numero,documento,nombre,saldo)
	values('3346','32111222','Susana Molina',1000);

SELECT * FROM cuentas
where saldo<4000;

SELECT numero,saldo FROM cuentas
where nombre='Juan Lopez';

SELECT * FROM cuentas
where saldo<0;

SELECT * FROM cuentas
where numero>=3000;


/* 19 - Tipo de dato (fecha y hora) */

if object_id('alumnos') is not null
drop table alumnos;

Create table alumnos(
	apellido varchar(30),
	nombre varchar(30),
	documento char(8),
	domicilio varchar(30),
	fechaingreso datetime,
	fechanacimiento datetime
);

set dateformat 'dmy';

insert into alumnos
	values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');
insert into alumnos
	values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');
insert into alumnos
	values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);
insert into alumnos
	values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

SELECT * FROM alumnos
where fechaingreso<'1-1-91';

SELECT * FROM alumnos
where fechanacimiento is null;

insert into alumnos
	values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

set dateformat 'mdy';

insert into alumnos
	values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);


/* 20 - 	Ingresar algunos campos (insert into) */

if object_id('cuentas') is not null
drop table cuentas;

Create table cuentas(
	numero int identity,
	documento char(8) not null,
	nombre varchar(30),
	saldo money
);

insert into cuentas
	values (1,'25666777','Juan Perez',2500.50);
insert into cuentas
	values ('25666777','Juan Perez',2500.50);
insert into cuentas (documento,saldo)
	values ('28999777',-5500);
insert into cuentas (numero,documento,nombre,saldo)
	values (5,'28999777','Luis Lopez',34000);
insert into cuentas (numero,documento,nombre)
	values (3344,'28999777','Luis Lopez',34000);
insert into cuentas (nombre, saldo)
	values ('Luis Lopez',34000);

SELECT * FROM libros;


/* 21 - Valores por defecto (default) */

if object_id('visitantes') is not null
drop table visitantes;

Create table visitantes(
	nombre varchar(30),
	edad tinyint,
	sexo char(1) default 'f',
	domicilio varchar(30),
	ciudad varchar(20) default 'Cordoba',
	telefono varchar(11),
	mail varchar(30) default 'no tiene',
	montocompra decimal (6,2)
);

exec sp_columns visitantes;

insert into visitantes (nombre, domicilio, montocompra)
	values ('Susana Molina','Colon 123',59.80);
insert into visitantes (nombre, edad, ciudad, mail)
	values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');

SELECT * FROM visitantes;

insert into visitantes
	values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

insert into visitantes default values;

SELECT * FROM visitantes;


/* 22 - Columnas calculadas (operadores aritméticos y de concatenación) */

if object_id ('articulos') is not null
drop table articulos;

Create table articulos(
	codigo int identity,
	nombre varchar(20),
	descripcion varchar(30),
	precio smallmoney,
	cantidad tinyint default 0,
	primary key (codigo)
);

insert into articulos (nombre, descripcion, precio,cantidad)
	values ('impresora','Epson Stylus C45',400.80,20);
insert into articulos (nombre, descripcion, precio)
	values ('impresora','Epson Stylus C85',500);
insert into articulos (nombre, descripcion, precio)
	values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio,cantidad)
	values ('teclado','ingles Biswal',100,50);

update articulos set precio=precio+(precio*0.15);

SELECT * FROM articulos;

SELECT nombre+','+descripcion FROM articulos;

update articulos set cantidad=cantidad-5
where nombre='teclado';

SELECT * FROM articulos;


/* 23 - Alias */

if object_id ('libros') is not null
drop table libros;

Create table libros(
	codigo int identity,
	titulo varchar(40) not null,
	autor varchar(20) default 'Desconocido',
	editorial varchar(20),
	precio decimal(6,2),
	cantidad tinyint default 0,
	primary key (codigo)
);

insert into libros (titulo,autor,editorial,precio)
	values('El aleph','Borges','Emece',25);
insert into libros
	values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
	values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

SELECT titulo, autor,editorial,precio,cantidad, precio*cantidad as 'monto total' FROM libros;

SELECT titulo,autor,precio, precio*0.1 as descuento, precio-(precio*0.1) as 'precio final' FROM libros
where editorial='Emece';

SELECT titulo+'-'+autor as "Título y autor" FROM libros;


/* 27 - Funciones para el uso de fechas y horas */

if object_id ('empleados') is not null
drop table empleados;

Create table empleados(
	nombre varchar(30) not null,
	apellido varchar(20) not null,
	documento char(8),
	fechanacimiento datetime,
	fechaingreso datetime,
	sueldo decimal(6,2),
	primary key(documento)
);

insert into empleados
	values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
insert into empleados
	values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
insert into empleados
	values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
insert into empleados
	values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
insert into empleados
	values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

SELECT nombre+space(1)+upper(apellido) as nombre,
stuff(documento,1,0,'DNI Nº ') as documento,
stuff(sueldo,1,0,'$ ') as sueldo FROM empleados;

SELECT documento, stuff(ceiling(sueldo),1,0,'$ ') FROM empleados;

SELECT nombre,apellido FROM empleados
where datename(month,fechanacimiento)='october';

SELECT nombre,apellido FROM empleados
where datepart(year,fechaingreso)=2000;


/* 28 - Ordenar registros (order by) */

if object_id('visitas') is not null
drop table visitas;

Create table visitas (
	numero int identity,
	nombre varchar(30) default 'Anonimo',
	mail varchar(50),
	pais varchar (20),
	fecha datetime,
	primary key(numero)
);

insert into visitas (nombre,mail,pais,fecha)
	values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into visitas (nombre,mail,pais,fecha)
	values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
insert into visitas (nombre,mail,pais,fecha)
	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into visitas (nombre,mail,pais,fecha)
	values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into visitas (nombre,mail,pais,fecha)
	values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into visitas (nombre,mail,pais,fecha)
	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
insert into visitas (nombre,mail,pais,fecha)
	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

SELECT * FROM visitas
order by fecha desc;

SELECT nombre,pais,datename(month,fecha) FROM visitas
order by pais,datename(month,fecha) desc;

SELECT nombre,mail, datename(month,fecha) mes, datename(day,fecha) dia, datename(hour,fecha) hora FROM visitas
order by 3,4,5;

SELECT mail, pais FROM visitas
where datename(month,fecha)='October' order by 2;


/* 29 - Operadores lógicos ( and - or - not) */

if object_id('medicamentos') is not null
drop table medicamentos;

Create table medicamentos(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(5,2),
	cantidad tinyint,
	primary key(codigo)
);

insert into medicamentos
	values('Sertal','Roche',5.2,100);
insert into medicamentos
	values('Buscapina','Roche',4.10,200);
insert into medicamentos
	values('Amoxidal 500','Bayer',15.60,100);
insert into medicamentos
	values('Paracetamol 500','Bago',1.90,200);
insert into medicamentos
	values('Bayaspirina','Bayer',2.10,150); 
insert into medicamentos
	values('Amoxidal jarabe','Bayer',5.10,250); 

SELECT codigo,nombre FROM medicamentos
where laboratorio='Roche' and precio<5;

SELECT * FROM medicamentos
where laboratorio='Roche' or precio<5;

SELECT * FROM medicamentos
where not laboratorio='Bayer' and cantidad=100;

SELECT * FROM medicamentos
where laboratorio='Bayer' and not cantidad=100;

delete FROM medicamentos
where laboratorio='Bayer' and precio>10;

update medicamentos set cantidad=200
where laboratorio='Roche' and precio>5;

delete FROM medicamentos
where laboratorio='Bayer' or precio<3;


/* 30 - Otros operadores relacionales (is null)	*/

if object_id('peliculas') is not null
drop table peliculas;

Create table peliculas(
	codigo int identity,
	titulo varchar(40) not null,
	actor varchar(20),
	duracion tinyint,
	primary key (codigo)
);

insert into peliculas
	values('Mision imposible','Tom Cruise',120);
insert into peliculas
	values('Harry Potter y la piedra filosofal','Daniel R.',null);
insert into peliculas
	values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas
	values('Mision imposible 2','Tom Cruise',120);
insert into peliculas
	values('Mujer bonita',null,120);
insert into peliculas
	values('Tootsie','D. Hoffman',90);
insert into peliculas (titulo)
	values('Un oso rojo');

SELECT * FROM peliculas
where actor is null;

update peliculas set duracion=0
where duracion is null;

delete FROM peliculas
where actor is null and duracion=0;

SELECT * FROM peliculas;


/* 31 - Otros operadores relacionales (between) */

if object_id('visitas') is not null
drop table visitas;

Create table visitas (
	numero int identity,
	nombre varchar(30) default 'Anonimo',
	mail varchar(50),
	pais varchar (20),
	fechayhora datetime,
	primary key(numero)
);

insert into visitas (nombre,mail,pais,fechayhora)
	values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into visitas (nombre,mail,pais,fechayhora)
	values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
insert into visitas (nombre,mail,pais,fechayhora)
	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into visitas (nombre,mail,pais,fechayhora)
	values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into visitas (nombre,mail,pais,fechayhora)
	values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into visitas (nombre,mail,pais,fechayhora)
	values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
insert into visitas (nombre,mail,pais,fechayhora)
	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
insert into visitas (nombre,mail,pais)
	values ('Federico1','federicogarcia@xaxamail.com','Argentina');

SELECT * FROM visitas
where fechayhora between '2006-09-12' and '2006-10-11';

SELECT * FROM visitas
where numero between 2 and 5;


/* 32 - Otros operadores relacionales (in) */

if object_id('medicamentos') is not null
drop table medicamentos;

Create table medicamentos(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	primary key(codigo)
);

insert into medicamentos
	values('Sertal','Roche',5.2,1,'2015-02-01');
insert into medicamentos 
	values('Buscapina','Roche',4.10,3,'2016-03-01');
insert into medicamentos 
	values('Amoxidal 500','Bayer',15.60,100,'2017-05-01');
insert into medicamentos
	values('Paracetamol 500','Bago',1.90,20,'2018-02-01');
insert into medicamentos 
	values('Bayaspirina','Bayer',2.10,150,'2019-12-01'); 
insert into medicamentos 
	values('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01'); 

SELECT nombre,precio FROM medicamentos
where laboratorio in ('Bayer','Bago');

SELECT * FROM medicamentos
where cantidad between 1 and 5;

SELECT * FROM medicamentos
where cantidad in (1,2,3,4,5);


/* 33 - Búsqueda de patrones (like - not like) */

if object_id('empleados') is not null
drop table empleados;

Create table empleados(
	nombre varchar(30),
	documento char(8),
	domicilio varchar(30),
	fechaingreso datetime,
	seccion varchar(20),
	sueldo decimal(6,2),
	primary key(documento)
);

insert into empleados
	values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
insert into empleados
	values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
insert into empleados
	values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
insert into empleados
	values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
insert into empleados
	values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
insert into empleados
	values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
insert into empleados
	values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

SELECT * FROM empleados
where nombre like '%Perez%';

SELECT * FROM empleados
where domicilio like 'Co%8%';

SELECT * FROM empleados
where documento like '%[02468]';

SELECT * FROM empleados
where documento like '[^13]%' and nombre like '%ez';

SELECT nombre FROM empleados
where nombre like '%[yj]%';

SELECT nombre,seccion FROM empleados
where seccion like '[SG]_______';

SELECT nombre,seccion FROM empleados
where seccion not like '[SG]%';

SELECT nombre,sueldo FROM empleados
where sueldo not like '%.00';

SELECT * FROM empleados
where fechaingreso like '%1990%';


/* 34 - Contar registros (count) */

if object_id('medicamentos') is not null
drop table medicamentos;

Create table medicamentos(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	numerolote int default null,
	primary key(codigo)
);

insert into medicamentos
	values('Sertal','Roche',5.2,1,'2015-02-01',null);
insert into medicamentos 
	values('Buscapina','Roche',4.10,3,'2016-03-01',null);
insert into medicamentos 
	values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
insert into medicamentos
	values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
insert into medicamentos 
	values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
insert into medicamentos 
	values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

SELECT count(*) FROM medicamentos;

SELECT count(laboratorio) FROM medicamentos;

SELECT count(precio) as 'Con precio', count(cantidad) as 'Con cantidad' FROM medicamentos;

SELECT count(precio) FROM medicamentos
where laboratorio like 'B%';

SELECT count(numerolote) FROM medicamentos;


/* 35 - Contar registros (count_big) */

if object_id('medicamentos') is not null
drop table medicamentos;

Create table medicamentos(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	numerolote int default null,
	primary key(codigo)
);

insert into medicamentos
	values('Sertal','Roche',5.2,1,'2015-02-01',null);
insert into medicamentos 
	values('Buscapina','Roche',4.10,3,'2016-03-01',null);
insert into medicamentos 
	values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
insert into medicamentos
	values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
insert into medicamentos 
	values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
insert into medicamentos 
	values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

SELECT count_big(*) FROM medicamentos;

SELECT count_big(distinct laboratorio) FROM medicamentos;

SELECT count_big(precio) as 'Con precio', count_big(cantidad) as 'Con cantidad' FROM medicamentos;


/* 36 - Funciones de agrupamiento (count - sum - min - max - avg) */

if object_id('empleados') is not null
drop table empleados;

Create table empleados(
	nombre varchar(30),
	documento char(8),
	domicilio varchar(30),
	seccion varchar(20),
	sueldo decimal(6,2),
	cantidadhijos tinyint,
	primary key(documento)
);

insert into empleados
	values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
insert into empleados
	values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
insert into empleados
	values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
insert into empleados
	values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
insert into empleados
	values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
insert into empleados
	values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
insert into empleados
	values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
insert into empleados
	values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
insert into empleados
	values('Andres Costa','28444555',default,'Secretaria',null,null);

SELECT count(*) FROM empleados;

SELECT count(sueldo) FROM empleados
where seccion='Secretaria';

SELECT max(sueldo) as 'Mayor sueldo', min(sueldo) as 'Menor sueldo' FROM empleados;

SELECT max(cantidadhijos) FROM empleados
where nombre like '%Perez%';

SELECT avg(sueldo) FROM empleados;

SELECT avg(sueldo) FROM empleados
where seccion='Secretaria';

SELECT avg(cantidadhijos) FROM empleados
where seccion='Sistemas';


/* 37 - Agrupar registros (group by) */

if object_id('visitantes') is not null
drop table visitantes;

Create table visitantes(
	nombre varchar(30),
	edad tinyint,
	sexo char(1) default 'f',
	domicilio varchar(30),
	ciudad varchar(20) default 'Cordoba',
	telefono varchar(11),
	mail varchar(30) default 'no tiene',
	montocompra decimal (6,2)
);

insert into visitantes
	values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
insert into visitantes
	values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
insert into visitantes
	values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
insert into visitantes (nombre, edad,sexo,telefono, mail)
	values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
insert into visitantes (nombre, ciudad, montocompra)
	values ('Alejandra Gonzalez','La Falda',280.50);
insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra)
	values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
insert into visitantes
	values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
insert into visitantes
	values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

SELECT ciudad, count(*) FROM visitantes
group by ciudad;

SELECT ciudad, count(telefono) FROM visitantes
group by ciudad;

SELECT sexo, sum(montocompra) FROM visitantes
group by sexo;

SELECT sexo,ciudad, max(montocompra) as mayor, min(montocompra) as menor FROM visitantes
group by sexo,ciudad;

SELECT ciudad, avg(montocompra) as 'promedio de compras' FROM visitantes
group by ciudad;

SELECT ciudad, count(*) as 'cantidad con mail' FROM visitantes
where mail is not null and mail<>'no tiene'
group by ciudad;

SELECT ciudad, count(*) as 'cantidad con mail' FROM visitantes
where mail is not null and mail<>'no tiene'
group by all ciudad;


/* 38 - Seleccionar grupos (having) */

if object_id('clientes') is not null
drop table clientes;

Create table clientes (
	codigo int identity,
	nombre varchar(30) not null,
	domicilio varchar(30),
	ciudad varchar(20),
	provincia varchar (20),
	telefono varchar(11),
	primary key(codigo)
);

insert into clientes
	values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
insert into clientes
	values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
insert into clientes
	values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
insert into clientes
	values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
insert into clientes
	values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
insert into clientes
	values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
insert into clientes
	values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
insert into clientes
	values ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
insert into clientes
	values ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
insert into clientes
	values ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');

SELECT ciudad, provincia, count(*) as cantidad FROM clientes
group by ciudad,provincia;

SELECT ciudad, provincia, count(*) as cantidad FROM clientes
group by ciudad,provincia
having count(*)>1;

SELECT ciudad, count(*) FROM clientes
where domicilio like '%San Martin%'
group by all ciudad
having count(*)<2 and ciudad <> 'Cordoba';


/* 39 - Modificador del group by (with rollup) */

if object_id('clientes') is not null
drop table clientes;

Create table clientes (
codigo int identity,
	nombre varchar(30) not null,
	domicilio varchar(30),
	ciudad varchar(20),
	estado varchar (20),
	pais varchar(20),
	primary key(codigo)
);

insert into clientes
	values ('Lopez Marcos','Colon 111', 'Cordoba','Cordoba','Argentina');
insert into clientes
	values ('Perez Ana','San Martin 222', 'Carlos Paz','Cordoba','Argentina');
insert into clientes
	values ('Garcia Juan','Rivadavia 333', 'Carlos Paz','Cordoba','Argentina');
insert into clientes
	values ('Perez Luis','Sarmiento 444', 'Rosario','Santa Fe','Argentina');
insert into clientes
	values ('Gomez Ines','San Martin 987', 'Santa Fe','Santa Fe','Argentina');
insert into clientes
	values ('Gomez Ines','San Martin 666', 'Santa Fe','Santa Fe','Argentina');
insert into clientes
	values ('Lopez Carlos','Irigoyen 888', 'Cordoba','Cordoba','Argentina');
insert into clientes
	values ('Ramos Betina','San Martin 999', 'Cordoba','Cordoba','Argentina');
insert into clientes
	values ('Fernando Salas','Mariano Osorio 1234', 'Santiago','Region metropolitana','Chile');
insert into clientes
	values ('German Rojas','Allende 345', 'Valparaiso','Region V','Chile');
insert into clientes
	values ('Ricardo Jara','Pablo Neruda 146', 'Santiago','Region metropolitana','Chile');
insert into clientes
	values ('Joaquin Robles','Diego Rivera 147', 'Guadalajara','Jalisco','Mexico');

SELECT pais,count(*) as cantidad FROM clientes
group by pais with rollup;

SELECT pais,estado, count(*) as cantidad FROM clientes
group by pais,estado with rollup;

SELECT pais,estado,ciudad, count(*) as cantidad FROM clientes
group by pais,estado,ciudad
with rollup;


/* 40 - Modificador del group by (with cube) */

if object_id('ventas') is not null
drop table ventas;

Create table ventas(
	numero int identity,
	montocompra decimal(6,2),
	tipopago char(1),
	vendedor varchar(30),
	primary key (numero)
);

insert into ventas
	values(100.50,'c','Marisa Perez');
insert into ventas
	values(200,'c','Marisa Perez');
insert into ventas
	values(50,'t','Juan Lopez');
insert into ventas
	values(220,'c','Juan Lopez');
insert into ventas
	values(150,'t','Marisa Perez');
insert into ventas
	values(550.80,'c','Marisa Perez');
insert into ventas
	values(300,'t','Juan Lopez');
insert into ventas
	values(25,'c','Marisa Perez');

SELECT vendedor,tipopago, count(*) as cantidad FROM ventas
group by vendedor,tipopago
with rollup;

SELECT vendedor,tipopago, count(*) as cantidad FROM ventas
group by vendedor,tipopago
with cube;


/* 41 - Función grouping */

if object_id('empleados') is not null
drop table empleados;

Create table empleados (
	documento varchar(8) not null,
	nombre varchar(30),
	sexo char(1),
	estadocivil char(1),
	seccion varchar(20),
	primary key (documento)
);

insert into empleados
	values ('22222222','Alberto Lopez','m','c','Sistemas');
insert into empleados
	values ('23333333','Beatriz Garcia','f','c','Administracion');
insert into empleados
	values ('24444444','Carlos Fuentes','m','s','Administracion');
insert into empleados
	values ('25555555','Daniel Garcia','m','s','Sistemas');
insert into empleados
	values ('26666666','Ester Juarez',null,'c','Sistemas');
insert into empleados
	values ('27777777','Fabian Torres',null,'s','Sistemas');
insert into empleados
	values ('28888888','Gabriela Lopez','f',null,'Sistemas');
insert into empleados
	values ('29999999','Hector Garcia','m',null,'Administracion');

SELECT sexo,estadocivil, count(*) as cantidad FROM empleados
group by sexo,estadocivil
with rollup;

SELECT sexo,estadocivil, count(*) as cantidad, grouping(sexo) as 'resumen sexo',
	grouping(estadocivil) as 'resumen estado civil' FROM empleados
group by sexo,estadocivil
with rollup;

SELECT sexo,estadocivil, count(*) as cantidad, grouping(sexo) as 'resumen sexo',
	grouping(estadocivil) as 'resumen estado civil' FROM empleados
group by sexo,estadocivil
with cube;


/* 42 - Cláusulas compute y compute by */

if object_id('inmuebles') is not null
drop table inmuebles;

Create table inmuebles (
	documento varchar(8) not null,
	nombre varchar(30),
	domicilio varchar(20),
	barrio varchar(20),
	ciudad varchar(20),
	tipo char(1),
	superficie decimal (8,2),
	monto decimal (8,2)
);

insert into inmuebles
	values ('11111111','Alberto Acosta','Avellaneda 800','Centro','Cordoba','e',100,1200);
insert into inmuebles
	values ('11111111','Alberto Acosta','Sarmiento 245','Gral. Paz','Cordoba','e',200,2500);
insert into inmuebles
	values ('22222222','Beatriz Barrios','San Martin 202','Centro','Cordoba','e',250,1900);
insert into inmuebles
	values ('33333333','Carlos Caseres','Paso 1234','Alberdi','Cordoba','b',200,1000);
insert into inmuebles
	values ('33333333','Carlos Caseres','Guemes 876','Alberdi','Cordoba','b',300,1500);
insert into inmuebles
	values ('44444444','Diana Dominguez','Calderon 456','Matienzo','Cordoba','b',200,800);
insert into inmuebles
	values ('55555555','Estela Fuentes','San Martin 321','Flores','Carlos Paz','e',500,4500);
insert into inmuebles
	values ('55555555','Estela Fuentes','Lopez y Planes 853','Alberdi','Cordoba','e',350,2200);

SELECT * FROM inmuebles
compute avg(monto);

SELECT * FROM inmuebles
compute avg(superficie),sum(monto);

SELECT * FROM inmuebles
order by documento,barrio,ciudad
compute avg(superficie),sum(monto)
by documento,barrio,ciudad;

SELECT * FROM inmuebles
order by documento,barrio,ciudad
compute avg(superficie),sum(monto)
by documento,barrio;

SELECT * FROM inmuebles
order by documento,barrio,ciudad
compute avg(superficie),sum(monto)
by documento;

SELECT * FROM inmuebles
order by documento,barrio,ciudad
compute avg(superficie),sum(monto)
by documento,ciudad;

SELECT * FROM inmuebles
order by documento
compute sum(monto)
compute avg(monto)
by documento;


/* 43 - Registros duplicados (distinct)	*/

if object_id('clientes') is not null
drop table clientes;

Create table clientes (
	codigo int identity,
	nombre varchar(30) not null,
	domicilio varchar(30),
	ciudad varchar(20),
	provincia varchar (20),
	primary key(codigo)
);

insert into clientes
	values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
insert into clientes
	values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
insert into clientes
	values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
insert into clientes
	values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
insert into clientes
	values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
insert into clientes
	values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
insert into clientes
	values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
insert into clientes
	values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
insert into clientes
	values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
insert into clientes
	values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

SELECT distinct provincia FROM clientes;

SELECT count(distinct provincia) as cantidad FROM clientes;

SELECT distinct ciudad FROM clientes;

SELECT count(distinct ciudad) FROM clientes;

SELECT distinct ciudad FROM clientes
where provincia='Cordoba';

SELECT provincia,count(distinct ciudad) FROM clientes
group by provincia;


/* 44 - Cláusula top */

if object_id('consultas') is not null
drop table consultas;

Create table consultas(
	fechayhora datetime not null,
	medico varchar(30) not null,
	documento char(8) not null,
	paciente varchar(30),
	obrasocial varchar(30),
	primary key(fechayhora, medico)
);

insert into consultas
	values ('2006/11/05 8:00','Lopez','12222222','Acosta Betina','PAMI');
insert into consultas
	values ('2006/11/05 8:30','Lopez','23333333','Fuentes Carlos','PAMI');
insert into consultas
	values ('2006/11/05 8:00','Perez','34444444','Garcia Marisa','IPAM');
insert into consultas
	values ('2006/11/05 8:00','Duarte','45555555','Pereyra Luis','PAMI');
insert into consultas
	values ('2006/11/05 8:00','Perez','23333333','Fuentes Carlos','PAMI');

SELECT top 5 * FROM empleados;

SELECT top 4 nombre,seccion FROM empleados
order by seccion;

SELECT top 4 with ties nombre,seccion FROM empleados
order by seccion;

SELECT top 4 nombre,estadocivil,seccion FROM empleados
order by estadocivil,seccion;

SELECT top 4 with ties nombre,estadocivil,seccion FROM empleados
order by estadocivil,seccion;


/* 45 - Clave primaria compuesta */

if object_id('consultas') is not null
drop table consultas;

Create table consultas(
	fechayhora datetime not null,
	medico varchar(30) not null,
	documento char(8) not null,
	paciente varchar(30),
	obrasocial varchar(30),
	primary key(fechayhora, medico)
);

insert into consultas
	values ('2006/11/05 8:00','Lopez','12222222','Acosta Betina','PAMI');
insert into consultas
	values ('2006/11/05 8:30','Lopez','23333333','Fuentes Carlos','PAMI');
insert into consultas
	values ('2006/11/05 8:00','Perez','34444444','Garcia Marisa','IPAM');
insert into consultas
	values ('2006/11/05 8:00','Duarte','45555555','Pereyra Luis','PAMI');
insert into consultas
	values ('2006/11/05 8:00','Perez','23333333','Fuentes Carlos','PAMI');

SELECT top 5 * FROM empleados;

SELECT top 4 nombre, seccion FROM empleados
order by seccion;

SELECT top 4 with ties nombre, seccion FROM empleados
order by seccion;

SELECT top 4 nombre, estadocivil ,seccion FROM empleados
order by estadocivil, seccion;

SELECT top 4 with ties nombre, estadocivil, seccion FROM empleados
order by estadocivil, seccion;


/* 53 - Eliminar restricciones (alter table - drop) */

if object_id('vehiculos') is not null
drop table vehiculos;

Create table vehiculos(
	patente char(6) not null,
	tipo char(1),
	horallegada datetime not null,
	horasalida datetime
);

alter table vehiculos
add constraint CK_vehiculos_tipo
check (tipo in ('a','m'));

alter table vehiculos
add constraint DF_vehiculos_tipo
default 'a'
for tipo;

alter table vehiculos
add constraint CK_vehiculos_patente_patron
check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

alter table vehiculos
add constraint PK_vehiculos_patentellegada
primary key(patente,horallegada);

insert into vehiculos
	values('SDR456','a','2005/10/10 10:10',null);
insert into vehiculos
	values('SDR456','m','2005/10/10 10:10',null);
insert into vehiculos
	values('SDR456','m','2005/10/10 12:10',null);
insert into vehiculos
	values('SDR111','m','2005/10/10 10:10',null);

exec sp_helpconstraint vehiculos;

alter table vehiculos
drop DF_vehiculos_tipo;

exec sp_helpconstraint vehiculos;

alter table vehiculos
drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;

exec sp_helpconstraint vehiculos;


/* 66 - Combinación interna (inner join) */

if (object_id('clientes')) is not null
drop table clientes;

if (object_id('provincias')) is not null
drop table provincias;

Create table clientes (
	codigo int identity,
	nombre varchar(30),
	domicilio varchar(30),
	ciudad varchar(20),
	codigoprovincia tinyint not null,
	primary key(codigo)
);

Create table provincias(
	codigo tinyint identity,
	nombre varchar(20),
	primary key (codigo)
);

insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');

insert into clientes
	values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes
	values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes
	values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes
	values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes
	values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
insert into clientes
	values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes
	values ('Torres Fabiola','Alem 777','Ibera',3);

select c.nombre,domicilio,ciudad,p.nombre from clientes as c join provincias as p
on c.codigoprovincia=p.codigo;

select c.nombre,domicilio,ciudad,p.nombre from clientes as c join provincias as p
on c.codigoprovincia=p.codigo
order by p.nombre;

select c.nombre,domicilio,ciudad from clientes as c join provincias as p
on c.codigoprovincia=p.codigo
where p.nombre='Santa Fe';


/* 67 - Combinación externa izquierda (left join) */

if (object_id('clientes')) is not null
drop table clientes;

if (object_id('provincias')) is not null
drop table provincias;

Create table clientes (
	codigo int identity,
	nombre varchar(30),
	domicilio varchar(30),
	ciudad varchar(20),
	codigoprovincia tinyint not null,
	primary key(codigo)
);

Create table provincias(
	codigo tinyint identity,
	nombre varchar(20),
	primary key (codigo)
);

insert into provincias (nombre)
	values('Cordoba');
insert into provincias (nombre)
	values('Santa Fe');
insert into provincias (nombre)
	values('Corrientes');

insert into clientes
	values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes
	values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes
	values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes
	values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes
	values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes
	values ('Torres Fabiola','Alem 777','La Plata',4);
insert into clientes
	values ('Garcia Luis','Sucre 475','Santa Rosa',5);

select c.nombre,domicilio,ciudad, p.nombre from clientes as c left join provincias as p
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre from provincias as p left join clientes as c
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre from clientes as c left join provincias as p
on codigoprovincia = p.codigo
where p.codigo is not null;

select c.nombre,domicilio,ciudad, p.nombre from clientes as c left join provincias as p
on codigoprovincia = p.codigo
where p.codigo is null
order by c.nombre;

select c.nombre,domicilio,ciudad, p.nombre from clientes as c left join provincias as p
on codigoprovincia = p.codigo
where p.nombre='Cordoba';


/* 68 - Combinación externa derecha (right join) */

if (object_id('clientes')) is not null
drop table clientes;

if (object_id('provincias')) is not null
drop table provincias;

Create table clientes (
	codigo int identity,
	nombre varchar(30),
	domicilio varchar(30),
	ciudad varchar(20),
	codigoprovincia tinyint not null,
	primary key(codigo)
);

Create table provincias(
	codigo tinyint identity,
	nombre varchar(20),
	primary key (codigo)
);

insert into provincias (nombre)
	values('Cordoba');
insert into provincias (nombre)
	values('Santa Fe');
insert into provincias (nombre)
	values('Corrientes');

insert into clientes
	values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes
	values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes
	values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes
	values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes
	values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes
	values ('Torres Fabiola','Alem 777','La Plata',4);
insert into clientes
	values ('Garcia Luis','Sucre 475','Santa Rosa',5);

select c.nombre,domicilio,ciudad, p.nombre from provincias as p right join clientes as c
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre from clientes as c left join provincias as p
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre from provincias as p right join clientes as c
on codigoprovincia = p.codigo
where p.codigo is not null;

select c.nombre,domicilio,ciudad, p.nombre from provincias as p right join clientes as c
on codigoprovincia = p.codigo
where p.codigo is null
order by ciudad;


/* 69 - Combinación externa completa (full join) */

if (object_id('deportes')) is not null
drop table deportes;

if (object_id('inscriptos')) is not null
drop table inscriptos;

Create table deportes(
	codigo tinyint identity,
	nombre varchar(30),
	profesor varchar(30),
	primary key (codigo)
);

Create table inscriptos(
	documento char(8),
	codigodeporte tinyint not null,
	matricula char(1)
);

insert into deportes
	values('tenis','Marcelo Roca');
insert into deportes
	values('natacion','Marta Torres');
insert into deportes
	values('basquet','Luis Garcia');
insert into deportes
	values('futbol','Marcelo Roca');
 
insert into inscriptos
	values('22222222',3,'s');
insert into inscriptos
	values('23333333',3,'s');
insert into inscriptos
	values('24444444',3,'n');
insert into inscriptos
	values('22222222',2,'s');
insert into inscriptos
	values('23333333',2,'s');
insert into inscriptos
	values('22222222',4,'n'); 
insert into inscriptos
	values('22222222',5,'n'); 

select documento,d.nombre,matricula from inscriptos as i join deportes as d
on codigodeporte=codigo;

select documento,d.nombre,matricula from inscriptos as i left join deportes as d
on codigodeporte=codigo;

select documento,d.nombre,matricula from deportes as d right join inscriptos as i
on codigodeporte=codigo;

select nombre from deportes as d left join inscriptos as i
on codigodeporte=codigo
where codigodeporte is null;

select documento from inscriptos as i left join deportes as d
on codigodeporte=codigo
where codigo is null;

select documento,nombre,profesor,matricula from inscriptos as i full join deportes as d
on codigodeporte=codigo; 


/* 70 - Combinaciones cruzadas (cross join) */

if object_id('mujeres') is not null
drop table mujeres;

if object_id('varones') is not null
drop table varones;

Create table mujeres(
	nombre varchar(30),
	domicilio varchar(30),
	edad int
);

Create table varones(
	nombre varchar(30),
	domicilio varchar(30),
	edad int
);

insert into mujeres
	values('Maria Lopez','Colon 123',45);
insert into mujeres
	values('Liliana Garcia','Sucre 456',35);
insert into mujeres
	values('Susana Lopez','Avellaneda 98',41);

insert into varones
	values('Juan Torres','Sarmiento 755',44);
insert into varones
	values('Marcelo Oliva','San Martin 874',56);
insert into varones
	values('Federico Pereyra','Colon 234',38);
insert into varones
	values('Juan Garcia','Peru 333',50);

select m.nombre,m.edad,v.nombre,v.edad from mujeres as m cross join varones as v;

select m.nombre,m.edad,v.nombre,v.edad from mujeres as m cross join varones as v
where m.edad>40 and v.edad>40;

select m.nombre,m.edad,v.nombre,v.edad from mujeres as m cross join varones as v
where m.edad-v.edad between -10 and 10;


/* 73 - Combinación de más de dos tablas */

 if object_id('socios') is not null
drop table socios;

if object_id('deportes') is not null
drop table deportes;

if object_id('inscriptos') is not null
drop table inscriptos;

Create table socios(
	documento char(8) not null, 
	nombre varchar(30),
	domicilio varchar(30),
	primary key(documento)
);

Create table deportes(
	codigo tinyint identity,
	nombre varchar(20),
	profesor varchar(15),
	primary key(codigo)
);
 
Create table inscriptos(
	documento char(8) not null, 
	codigodeporte tinyint not null,
	anio char(4),
	matricula char(1),
	primary key(documento,codigodeporte,anio)
);

insert into socios
	values('22222222','Ana Acosta','Avellaneda 111');
insert into socios
	values('23333333','Betina Bustos','Bulnes 222');
insert into socios
	values('24444444','Carlos Castro','Caseros 333');
insert into socios
	values('25555555','Daniel Duarte','Dinamarca 44');

insert into deportes
values('basquet','Juan Juarez');
insert into deportes
values('futbol','Pedro Perez');
insert into deportes
values('natacion','Marina Morales');
insert into deportes
values('tenis','Marina Morales');

insert into inscriptos
	values ('22222222',3,'2006','s');
insert into inscriptos
	values ('23333333',3,'2006','s');
insert into inscriptos
	values ('24444444',3,'2006','n');
insert into inscriptos
	values ('22222222',3,'2005','s');
insert into inscriptos
	values ('22222222',3,'2007','n');
insert into inscriptos
	values ('24444444',1,'2006','s');
insert into inscriptos
	values ('24444444',2,'2006','s');
insert into inscriptos
	values ('26666666',0,'2006','s');

select s.nombre,d.nombre,anio from deportes as d right join inscriptos as i
on codigodeporte=d.codigo left join socios as s
on i.documento=s.documento;

select s.nombre,d.nombre,anio,matricula from deportes as d full join inscriptos as i
on codigodeporte=d.codigo
full join socios as s
on s.documento=i.documento;

select s.nombre,d.nombre,anio,matricula from deportes as d join inscriptos as i
on codigodeporte=d.codigo join socios as s
on s.documento=i.documento
where s.documento='22222222';


/* 82 - */




/* 83 - */




/* 84 - */




/* 86 - */




/* 91 - */




/* 92 - */




/* 93 - */




/* 94 - */




/* 95 - */




/* 96 - */




/* 97 - */




/* 98 - */




/* 99 - */




/* 100 - */




/* 101 - */




/* 102 - */




/* 103 - */




/* 104 - */




/* 110 - */




/* 111 - */




/* 119 - */




/* 120 - */




/* 132 - */




/* 133 - */




/* 135 - */




/* 136 - */




/* 137 - */




