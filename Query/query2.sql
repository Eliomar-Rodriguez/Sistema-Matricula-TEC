USE PrologLenguajes;
--truncate table Profesores
--truncate table Aulas
--truncate table dbo.Asignaturas
--truncate table Disponibilidad
--truncate table Asig_Prof

--insertar asignaturas (incluye mates y sociales)
INSERT INTO dbo.Asignaturas VALUES --id, nom, tipo(N o L), cred, sem
--1
('ci1311','ingles_1','n',3,1),
('ic1802','introduccion_programacion','l',3,1),
('ic1803','taller_programacion','l',3,1),
('ma0101','matematica_general','n',4,1),
--2
('ci1312','ingles_2','n',3,2),
('ic2101','programacion_orientada_objetos','l',3,2),
('ic2001','estructuras_datos','l',4,2),
('ma1404','calculo','n',4,2),
--3
('ci1313','ingles_3','n',3,3),
('ic3002','analisis_algoritmos','l',4,3),
('ic4301','bases_datos_1','l',4,3),
('ma2405','algebra_lineal','n',4,3),
--4
('ci1314','ingles_4','n',3,4),
('ic4700','lenguajes_programacion','l',4,4),
('ic4302','bases_datos_2','l',4,4),
('ic5821','requerimientos_software','l',4,4),
--5
('ic5701','compiladores_interpretes','l',4,5),
('ic6821','diseno_software','l',4,5),
('ma3405','estadistica','n',4,5),
--6
('ic6600','sistemas_operativos','l',4,6),
('ic6831','aseguramiento_calidad','l',3,6),
('ic6400','investigacion_operaciones','n',4,6),
--7
('ic7602','redes','l',4,7),
('ic6200','inteligencia_artificial','l',4,7),
('ic7841','proyecto_software','l',3,7),
('ae4208','emprendedores','l',4,7);

--insertar profesores
INSERT INTO dbo.Profesores VALUES --CARRERA
('212340001','vera_gamboa'),
('212340004','lorena_valerio'),
('212340005','rogelio_gonzales'),
('212340006','leonardo_viquez'),
('212340007','oscar_viquez'),
('212340008','efren_jimenez'),
('212340010','dennis_valverde'),
--MATEMATICAS
('212340012','esteban_ballestero'),
('212340013','karina_gonzales'),
('212340015','carlos_guillen'),
--INGLES
('212340019','danilo_alpizar'),
('212340018','patricia_lopez'),
('212340020','marlon_perez');

--insertar aulas
INSERT INTO dbo.Aulas VALUES 
(1,'a1',25),
(2,'a2',30),
(3,'a3',20),
(4,'a4',35),
(5,'lab1',26),
(6,'lab2',26),
(5,'a5',20),
(6,'a6',25);

--insertar asig-prof
insert into dbo.Asig_Prof values --idprof, idasig
--1
('ci1311','212340019'), --danilo
('ic1802','212340001'),('IC1802','2-1234-0010'),--vera,dennis
('ic1803','212340001'),('IC1803','2-1234-0010'),--vera,dennis
('ma0101','212340013'),--karina_gonzales
--2
('ci1312','212340020'),--marlon_perez
('ic2001','212340007'),--oscar_viquez
('ma1404','212340014'),--rodolfo_jimenez
--3
('ci1313','212340019'), --danilo
('ci1313','212340018'), --patricia
('ic3002','212340004'),--lorena_valerio
('ic4301','212340006'),--leonardo_viquez
('ma2405','212340015'),--carlos_guillen
--4
('ci1314','212340019'),--danilo
('ic4700','212340007'), --oscar_viquez
('ic4302','212340008'), --efren_jimenez
('ma2405','212340012'),--esteban_ballestero
--5
('ic4810','212340010'),--dennis_valverde
('ic5701','212340007'), --oscar_viquez
('ic6821','212340006'), --leonardo_viquez
('ma3405','212340015'),--carlos_guillen
--6
('ic6831','212340004'),--lorena_valerio
('ic7900','212340010'),--dennis_valverde
--7
('ic7602','212340005'),--rogelio
('ic6200','212340007'),--oscar_viquez
('ic5001','212340005'),--rogelio
('ic7841','212340010');--dennis_valverde

--insertar horarios disponibles para profesor
insert into dbo.Disponibilidad values --idprof, dia, --hora_inicio, hora_final
--vera_gamboa
('212340001','k'),
('212340001','m'),
('212340001','v'),
--diego_rojas
('212340002','k'),
('212340002','m'),
('212340002','j'),
--rocio_quiros
('212340003','l'),
('212340003','m'),
('212340003','j'),
--lorena_valerio
('212340004','k'),
('212340004','j'),
('212340004','v'),
--rogelio_gonzales
('212340005','l'),
('212340005','m'),
('212340005','j'),
('212340005','v'),
--leonardo_viquez
('212340006','k'),
('212340006','j'),
('212340006','v'),
--oscar_viquez
('212340007','l'),
('212340007','k'),
('212340007','m'),
('212340007','v'),
--oscar_lopez
('212340009','m'), 
('212340009','j'),
--dennis_valverde
('212340010','l'),
('212340010','k'),
('212340010','m'),
--efren_jimenez
('212340008','l'),
('212340008','j'),
--marlen_treviño
('212340011','k'),
('212340011','m'),
--esteban_ballestero
('212340012','m'),
('212340012','j'),
('212340012','v'),
--karina_gonzales
('212340013','k'),
('212340013','v'),
--rodolfo_jimenez
('212340014','l'),
('212340014','m'),
('212340014','v'),
--carlos_guillen
('212340015','j'),
('212340015','v'),
--danilo_alpizar
('212340019','k'),
('212340019','j'),
--marlon_perez
('212340020','m'),
('212340020','v');