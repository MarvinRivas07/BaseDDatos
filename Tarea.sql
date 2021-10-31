Create database Hospital
Use Hospital
select *from Pacientes
Create table Pacientes
(
Numero_Seguridad_Social int primary key,
Nombres_Paciente varchar(30),
Apellidos_Paciente varchar(30),
Domicilio varchar(30),
Sexo varchar(15),
Provincia varchar(30),
Codigo_Postal varchar(15),
Num_Historial_Clinico int,
observacione varchar(max)
)
insert into Pacientes(Numero_Seguridad_Social,Nombres_Paciente, Apellidos_Paciente, Domicilio,Sexo , observacione)
values(1,'Manuel','Ramirez', 'Usulutan', 'Masculino', 'Fiebre y dolor de garganta');
insert into Pacientes(Numero_Seguridad_Social,Nombres_Paciente, Apellidos_Paciente, Domicilio,Sexo , observacione)
values('Ariel','Alas', 'Guarjila',  'Sintomas de depresion');
insert into Pacientes(Numero_Seguridad_Social,Nombres_Paciente, Apellidos_Paciente, Domicilio,Sexo , observacione)
values('Miguel','Quijada', 'Apopa', 76565, 'Dolor de estomago');
insert into Pacientes(Numero_Seguridad_Social,Nombres_Paciente, Apellidos_Paciente, Domicilio,Sexo , observacione)
values('Dolores','Reina', 'San Miguel', 646464, 'Dolor en la apendice');
insert into Pacientes(Numero_Seguridad_Social,Nombres_Paciente, Apellidos_Paciente, Domicilio,Sexo , observacione)
values('Karen','Rubio', 'Concepcion', 654211, 'Fractura de brazo');
insert into Pacientes(Numero_Seguridad_Social,Nombres_Paciente, Apellidos_Paciente, Domicilio,Sexo , observacione)
values('Miguel','Guardado', 'El cobano', 7654545, 'Necesita sangre tipo O-');
insert into Pacientes(Numero_Seguridad_Social,Nombres_Paciente, Apellidos_Paciente, Domicilio,Sexo , observacione)
values('Karla','Mejia', 'Reubicacion', 986566, 'estado normal');
insert into Pacientes(Numero_Seguridad_Social,Nombres_Paciente, Apellidos_Paciente, Domicilio,Sexo , observacione)
values('Marito','Alarcon', 'San Rafael', 7645553, 'intervencion quirurjica');
insert into Pacientes(Numero_Seguridad_Social,Nombres_Paciente, Apellidos_Paciente, Domicilio,Sexo , observacione)
values('Joel','Molina', 'Santa Rita', 98757574 , 'Estado normal');
insert into Pacientes(Numero_Seguridad_Social,Nombres_Paciente, Apellidos_Paciente, Domicilio,Sexo , observacione)
values('Aracely','Gutierrez', 'Dulce Nombre de Maria', 87765456, 'Hipertension');
Create table Medicos
(
Cod_Medico int primary key identity(1,1),
Nombres_Medico varchar(30),
Apellidos_Medico varchar(30),
Numero_Colegiado Varchar(50) unique,
Observaciones varchar(30)
)

Create table Ingresos
(
Id_Ingresos int primary key identity(1,1),
Procedencia varchar(30),
Fecha_Ingreso date,
Numero_Planta  int,
Numero_Cama int,
Observaciones varchar(max),
Numero_Seguridad_Social int foreign key(Numero_Seguridad_Social) references Pacientes(Numero_Seguridad_Social),
Cod_Medico int foreign key(Cod_Medico) references Medicos(Cod_Medico)
)



Create table Contacto 
(
Id_Contacto int primary key identity(1,1),
Num_Telefonico int
)

Create Table Contacto_Paciente
(
Id_C_P int primary key identity(1,1), 
Id_Contacto int foreign key(Id_Contacto) references Contacto(Id_Contacto),
Numero_Seguridad_Social int foreign key(Numero_Seguridad_Social) references Pacientes(Numero_Seguridad_Social)
)

Create table Especialidades 
(
Id_Especialidad int primary key identity(1,1),
Nombre varchar(50)
)

Create table Especiales_Medicos 
(
Id_E_M int primary key identity(1,1),
Id_Especialidad int foreign key(Id_Especialidad) references Especialidades(Id_Especialidad),
Cod_Medico int foreign key(Cod_Medico) references Medicos(Cod_Medico)
)

Create table Cargos 
(
Id_Cargo int primary key identity(1,1),
Nombre varchar(30),
Descripción varchar(max)
)

Create table Medicos_Cargos 
(
Id_M_C int primary key identity(1,1), 
Cod_Medico int foreign key(Cod_Medico) references Medicos(Cod_Medico),
Id_Cargo int foreign key(Id_Cargo) references cargos(Id_Cargo)
)