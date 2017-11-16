use SistemaHorarios;
--truncate table Profesores
--truncate table Aulas
--truncate table dbo.Asignaturas
--truncate table Disponibilidad
--truncate table Asig_Prof

--insertar asignaturas (incluye mates y sociales)
insert into dbo.Cursos values --nombre, tipoAula, creaditos, semestre
--1
('ingles_1','n',3,1),
('fundamentos_computadoras','l',3,1),
('introduccion_programacion','l',3,1),
('taller_programacion','l',3,1),
('matematica_discreta','n',4,1),
--2
('ingles_2','n',3,2),
('arquitectura_computadores','l',4,2),
('programacion_orientada_objetos','l',3,2),
('estructuras_datos','l',4,2),
('calculo','n',4,2),
--3
('ingles_3','n',3,3),
('analisis_algoritmos','l',4,3),
('bases_datos_1','l',4,3),
('algebra_lineal','n',4,3),
--4
('ingles_4','n',3,4),
('lenguajes_programacion','l',4,4),
('bases_datos_2','l',4,4),
('requerimientos_software','l',4,4),
('probabilidades','n',4,4),
--5
('administracion_proyectos','l',4,5),
('compiladores_interpretes','l',4,5),
('diseno_software','l',4,5),
('estadistica','n',4,5),
--6
('sistemas_operativos','l',4,6),
('aseguramiento_calidad','l',3,6),
('electiva_1','l',3,6),
('computacion_sociedad','l',2,6),
('investigacion_operaciones','n',4,6),
--7
('redes','l',4,7),
('inteligencia_artificial','l',4,7),
('electiva_2','l',3,7),
('proyecto_software','l',3,7),
('emprendedores','l',4,7);

--insertar profesores
insert into dbo.Profesores values -- carnet, nombre
('1','vera_gamboa'),
('2','diego_rojas'),
('3','rocio_quiros'),
('4','lorena_valerio'),
('5','rogelio_gonzales'),
('6','leonardo_viquez'),
('7','oscar_viquez'),
('8','efren_jimenez'),
('9','oscar_lopez'),
('10','dennis_valverde'),
('11','marlen_treviño'),
--MATEMATICAS
('12','esteban_ballestero'),
('13','karina_gonzales'),
('14','rodolfo_jimenez'),
('15','carlos_guillen'),
--INGLES
('16','danilo_alpizar'),
('17','marlon_perez');

--insertar aulas
insert into dbo.Aulas values 
(1,'a1',25,'n'),
(2,'a2',30,'n'),
(3,'a3',20,'n'),
(4,'a4',35,'n'),
(5,'a4',35,'n'),
(6,'a4',35,'n'),
(7,'a4',35,'n'),
(8,'a4',35,'n'),
(9,'lab1',26,'l'),
(10,'lab2',26,'l');

--insertar asig-prof
insert into dbo.Asig_Prof values --idprof, idasig
--1
('ci1311','16'), --danilo
('ic1400','3'),--rocio
('ic1802','1'),('IC1802','10'),--vera,dennis
('ic1803','1'),('IC1803','10'),--vera,dennis
('ma1403','13'),--karina_gonzales
--2
('ci1312','17'),--marlon_perez
('ic3101','2'),--diego
('ic2101','11'),--marlen_treviño
('ic2001','7'),--oscar_viquez
('ma1404','14'),--rodolfo_jimenez
--3
('ci1313','16'), --danilo
('ic3002','4'),--lorena_valerio
('ic4301','6'),--leonardo_viquez
('ma2405','15'),--carlos_guillen
--4
('ci1314','16'),--danilo
('ic4700','7'), --oscar_viquez
('ic4302','8'), --efren_jimenez
('ic5821','9'), --oscar_lopez
('ma2404','12'),--esteban_ballestero
--5
('ic4810','10'),--dennis_valverde
('ic5701','7'), --oscar_viquez
('ic6821','8'), --leonardo_viquez
('ma3405','15'),--carlos_guillen
--6
('ic6600','3'), --rocio
('ic6831','4'),--lorena_valerio
('ic4003','2'),--diego
('ic7900','10'),--dennis_valverde
('ic6400','14'),--rodolfo_jimenez
--7
('ic7602','5'),--rogelio
('ic6200','7'),--oscar_viquez
('ic5001','5'),--rogelio
('ic7841','10'),--dennis_valverde
('ae4208','11');--marlen_treviño

--insertar horarios disponibles para profesor
insert into dbo.Disponibilidad values --idprof, dia, --hora_inicio, hora_final
--vera_gamboa
('1','k'),
('1','m'),
('1','v'),
--diego_rojas
('2','k'),
('2','m'),
('2','j'),
--rocio_quiros
('3','l'),
('3','m'),
('3','j'),
--lorena_valerio
('4','k'),
('4','j'),
('4','v'),
--rogelio_gonzales
('5','l'),
('5','m'),
('5','j'),
('5','v'),
--leonardo_viquez
('6','k'),
('6','j'),
('6','v'),
--oscar_viquez
('7','l'),
('7','k'),
('7','m'),
('7','v'),
--oscar_lopez
('9','m'), 
('9','j'),
--dennis_valverde
('10','l'),
('10','k'),
('10','m'),
--efren_jimenez
('8','l'),
('8','j'),
--marlen_treviño
('11','k'),
('11','m'),
--esteban_ballestero
('12','m'),
('12','j'),
('12','v'),
--karina_gonzales
('13','k'),
('13','v'),
--rodolfo_jimenez
('14','l'),
('14','m'),
('14','v'),
--carlos_guillen
('15','j'),
('15','v'),
--danilo_alpizar
('16','k'),
('16','j'),
--marlon_perez
('17','m'),
('17','v');