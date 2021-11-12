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
raza varchar (30),
);
Create table Ingresos(
Id_ingresos int primary key,
motivos varchar (50),
fecha_deingreso date,
Observaciones varchar (max),
);
Create table Veterinario(
Id_Vererinario int primary key,
Cod_deidentificacion_delveterinario int foreign key(Cod_deidentificacion_delveterinario) referenceS Cargo_Veterinario (Id_cargo),
);
Create table Cargo_Veternario(
Id_cargo int primary key,
Cargo varchar (30),
);
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

Insert into Tipo (Id_mascota, Tipo_mascota, raza)
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
