Create Database Clinica_Veterinaria

Create table Dueño_mascota(
Numero_deidentidad int primary key,
Nombre varchar (30),
Apellidos varchar (30),
Direccion varchar (50),
Departamento varchar (50),
Municipio varchar (30),
Cod_postal varchar (30),
);
Create table contacto(
Num_deidentidad int foreign key(Num_deidentidad) references Dueño_mascota (Numero_deidentidad),
Num_detelefono int,
);
Create table Mascota(
Id_mascota int primary key,
Nombre varchar (30),
peso varchar (10),
obsevaciones varchar (max),
);
Create table Tipo(
Id_mascota int foreign key(Id_mascota) references Dueño_mascota (Numero_deidentidad),
Tipo_mascota varchar (30),
Raza varchar (30),
);
Create table Ingresos(
Id_ingresos int primary key,
motivos varchar (50),
fecha_deingreso date,
Observaciones varchar (max),
);
create table veterinario(
codigo_deidentificacion_delveterinario int primary key,
nombre varchar (30),
apellido varchar (30),
)
create table tipo_veterinario(
codigo_deidentificacion_delveterinario int foreign key (codigo_deidentificacion_delveterinario) references veterinario (codigo_deidentificacion_delveterinario),
cargo varchar (30),
)
alter table ingreso 
add id_mascota int
alter table ingreso add constraint Fk_id_mascota foreign key (id_mascota) references mascota(id_mascota)

alter table ingreso
add Num_deidentidad int
alter table ingreso add constraint Fk_Num_deidentidad foreign key (Num_deidentidad) references Dueño_mascota(Num_deidentidad)

alter table ingreso
add codigo_deidentificacion_delveterinario int
alter table ingreso add constraint Fk_codigo_deidentificacion_delveterinario foreign key (codigo_deidentificacion_delveterinario) references veterinario (codigo_deidentificacion_delveterinario)

Insert into Dueño_mascota(Numero_deidentidad, Nombre, Apellidos, Direccion, Departamento, Municipio, Cod_postal)
Values (9304, 'Roberto', 'Lopez', 'El paraiso', 'Chalatengo', '8393300'),
(3299, 'Angel', 'Portillo', 'Nueva Concepcion', 'Chalatengo', '839378')

Insert into contacto(Num_deidentidad, Num_detelefono)
Values (0012, 62839291),
(8293, 89288264)

Insert into Mascota(Id_mascota, Nombre, peso, obsevaciones)
Values (0939, 'Doggi', '25 kg', 'presentaba una herida leve en su patita'),
(0939, 'Nala', '45 kg', 'Viene con sintomas de vomito'),
(8293, 'loba', '25 kg', 'indicios de ceguera'),
(9304, 'Nashi', '40 kg', 'presentaba heridas en todo su cuerpo'),
(9383, 'Pablo', '30 kg', 'venia con moquillo'),
(0289, 'Negro', '24 kg', 'enfermedad de riñon'),
(8292, 'copito', '22 kg', 'rabia'),
(2929, 'Terry', '37 kg', 'Sintomas de diarrea'),
(2892, 'Neron', '48 kg', 'presentaba una heridas en su patita'),
(0393, 'Dobi', '20 kg', 'Sintomas de vomito')

Insert into Tipo (Id_mascota, Tipo_mascota, Raza)
Values (0939, 'Perro', 'Maltes'),
(0939, 'Perro', 'Boxer'),
(8293, 'Perro', 'Pastor Aleman'),
(9304, 'Perro', 'Labrador'),
(9383, 'Perro', 'Bulldog'),
(0289, 'Gato', 'Saimes'),
(8292, 'Gato', 'Gato Persa'),
(2929, 'Perro', 'Maltes'),
(2892, 'Perro', 'Gran Danes'),
(0393, 'Gato', 'Chihuahua')

insert into ingreso(Id_Ingresos, motivos, fecha_deingreso, observaciones)
Values (0939, 'consulta','2021-09-1','presenta laserasiones'),
(0939,'consulta','2021-02-1','presenta falta de apetito'),
(8293, 'consulta','2021-11-1', 'Viene con sintomas de vomito'),
(9304, 'consulta','2021-11-18','presenta golpes y heridas en diferentes partes de su cuerpo'),
(9383, 'consulta','2021-11-19','presenta malestar estomacal'),
(0289, 'consulta','2021-11-1', 'Viene con sintomas de vomito'),
(8292, 'consulta','2021-02-1','presenta falta de apetito'),
(2929, 'consulta','2021-11-19','presenta malestar estomacal'),
(2892, 'consulta','2021-11-14','presenta una quebradura en la pata derecha'),
(0393, 'consulta','2021-11-16', 'Sintomas de vomito'),
(9383, 'consulta','2021-12-22','presenta sintomas de diarrea'),
(8293, 'consulta','2021-11-23', 'presenta sintomas de diarrea'),
(0939, 'consulta','2021-11-24','irritacion en la piel'),
(0289, 'consulta','2021-11-04', 'irritacion en la piel')

insert into veterinario(codigo_deidentificacion_delveterinario, nombre, apellido)
values (822,'Anderson','lopez'),
(929,'Edgar', 'Perez'),
(102,'Santiago','hernandez'),
(172,'Alexandra','Rodriguez')

insert into tipo_veterinario(codigo_deidentificacion_delveterinario,cargo)
values (822,'Doctor'),
(929,'Estilista'),
(102,'Enfermero'),
(172,'Doctor')
