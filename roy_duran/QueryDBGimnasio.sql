create database GIMNASIO
drop database GIMNASIO

create table Usuario
(
	id int identity(1,1),
	cedula varchar(12)not null,
	usuario varchar(25)not null,
	clave varchar(50)not null,
	constraint pk_cedulausuario primary key(cedula),
	constraint uc_usuario unique(usuario)
)

insert into usuario values ('1001','rduran','123'),('1002','maureen','456')
select * from usuario
DELETE FROM USUARIO WHERE CEDULA='5'
UPDATE USUARIO SET direccion = 'Cartago' where cedula = '4'

create table Empleado
(
	id int identity(1,1),
	cedula varchar(12)not null,
	nombre varchar(50)not null,
	apellido1 varchar(50)not null,
	apellido2 varchar(50)not null,
	email varchar(50)not null,
	constraint uc_emailemp unique(email),
	constraint pk_cedulaempleado primary key(cedula)
)

insert into empleado (cedula,nombre,apellido1,apellido2,email) values ('3','Natasha','Aguero','Fallas','naguero@hotmail.com')
select * from empleado
SELECT CEDULA,NOMBRE,telefono FROM Usuario 

alter table Empleado
alter column email varchar(50)

create table Cliente
(
	id int identity(1,1),
	cedula varchar(12)not null,
	nombre varchar(50)not null,
	apellido1 varchar(50)not null,
	apellido2 varchar(50)not null,
	email varchar(50)not null,
	constraint uc_emailcli unique(email),
	constraint pk_cedulacliente primary key(cedula)
)

insert into cliente (cedula,nombre,apellido1,apellido2,email) values ('2','Maureen','Fallas','Robles','mfallasro@hotmail.com')
select * from cliente
delete from cliente where cedula = '1002'

alter table Cliente
alter column email varchar(50)

create table Telefono
(
	id int identity(1,1),
	cedula varchar(12)not null,
	tipo varchar(10)not null,
	telefono varchar(10)not null,
	constraint pk_idtelefono primary key(id),
	constraint fk_cedulatelcli foreign key(cedula) references Cliente(cedula)

)

alter table telefono 
drop fk_cedulatelemp

select * from telefono
insert into telefono values ('1001','casa','999')

create table Direccion
(
	id int identity(1,1),
	cedula varchar(12)not null,
	provincia varchar(50)not null,
	canton varchar(50)not null,
	distrito varchar(50)not null,
	comentarios varchar(50)not null,
	constraint pk_iddireccion primary key(id),
	constraint fk_ceduladircli foreign key(cedula) references Cliente(cedula)
)

insert into Direccion values ('1001','San Jose','Alajuelita','Concepcion','casa #25 color rojo')
select * from Direccion

alter table Direccion 
drop fk_ceduladiremp

create table Servicios
(
	id int identity(1,1),
	Descripcion varchar(50)not null,
	precio money not null default 0,
	constraint pk_idservicios primary key(id)
)

create table FacturaMaestro
(
	id int identity(1,1),
	Nfactura int,
	cedulaCliente varchar(12)not null,
	monto money default 0,
	IVA money default 0,
	feha datetime default Getdate(),
	constraint pk_idfactura primary key(id),
	constraint fk_cedulaclientefactu foreign key(cedulacliente) references cliente(cedula),
	constraint uc_nfactura unique(Nfactura)	
)

drop table FacturaDetalle

create table FacturaDetalle
(
	id int identity(1,1),
	idfactura int,
	idItem int,
	precio money not null default 0,
	cantidad money not null default 0,
	IVA money not null default 0,
	constraint pk_iddetalle primary key(id),
	constraint fk_iditem foreign key(idItem) references Servicios(id),
	constraint fk_iddetallefactura foreign key(idfactura) references FacturaMaestro(id)
)
