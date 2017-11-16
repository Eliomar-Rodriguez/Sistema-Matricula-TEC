% Declaracion de reglas para evitar posibles errores al crear hechos
:-dynamic profesor/2.
:-dynamic profesorOcupado/3.
:-dynamic aula/4.
:-dynamic aulaOcupada/4.
:-dynamic profesorCurso/2.
:-dynamic leccion/7.

% Estos datos no siento que sea necesario cargarlos desde la base de
% datos.
dia(l).
dia(k).
dia(m).
dia(j).
dia(v).

hora(7:00).
hora(7:55).
hora(8:50).
hora(9:45).
hora(10:40).
hora(12:30).
hora(13:25).
hora(14:20).
hora(15:10).

% profesor(nombre,carne).
profesor(juanRa,1).
profesor(jafeth,2).
profesor(eliomar,3).

% profesorOcupado(carne,dia,hora).
profesorOcupado(1,l,7:00).
profesorOcupado(1,l,8:50).
profesorOcupado(1,m,7:00).
profesorOcupado(1,v,7:00).
profesorOcupado(2,l,7:00).
profesorOcupado(2,k,7:00).
profesorOcupado(2,k,10:40).
profesorOcupado(3,l,9:45).
profesorOcupado(3,k,13:25).
profesorOcupado(3,j,14:20).
profesorOcupado(3,l,15:10).

% profesorCurso(carne,nombreCurso).
profesorCurso(1,lenguajes).
profesorCurso(2,mate).
profesorCurso(3,calculo).

% Si es #semestre%2 es 1 entonces el semestre es 1, caso contrario (0)
% el semestre es 2.
% cursos(nombre,tipoAula,cantidadCreditos,semestre).
cursos(lenguajes,l,4,2).
cursos(comunicacion,n,2,1).
cursos(mate,n,3,1).
cursos(calculo,n,4,2).

% aula(numeroAula,nombre,capacidad,tipo) %tipo= n:normal o l:laboratorio
aula(1,aula1,30,n).
aula(2,aula2,25,n).
aula(3,lab1,25,l).

% aulaOcupada(aula,nombreAula,dia,hora).
aulaOcupada(1,aula1,l,7:00).
aulaOcupada(1,aula1,l,8:50).
aulaOcupada(2,aula2,v,7:00).
aulaOcupada(3,lab1,m,7:00).

% nombre aula
% numero aula
disponibleAula(TipoAula,Numero,Dia,Hora):-
    dia(Dia),
    hora(Hora),
    aula(Numero,Nombre,_,TipoAula),
    not(aulaOcupada(Numero,Nombre,Dia,Hora)).

%disponibleProfesor(Carnet,Curso,Dia,Hora)
disponibilidadProfesor(Carnet,Curso,Dia,Hora):-
    profesor(_,Carnet),
    not(profesorOcupado(Carnet,Dia,Hora)),
    profesorCurso(Carnet,Curso).

% cursos(nombre,tipoAula,cantidadCreditos,semestre).
% disponibleAula(TipoAula,NumeroAula,Dia,Hora).
% disponibleProfesor(Carnet,Curso,Dia,Hora).
% profesorCurso(carne,nombreCurso).
% aulaOcupada(#aula,nombreAula,dia,hora).
crearLeccion(NombreCurso,TipoAula,NumeroAula,Dia,Hora,Semestre,CarnetProfesor):-
    cursos(NombreCurso,TipoAula,_,Semestre),
    dia(Dia),
    hora(Hora),
    disponibleAula(TipoAula,NumeroAula,Dia,Hora),
    disponibilidadProfesor(CarnetProfesor,NombreCurso,Dia,Hora),
    assert(profesorCurso(CarnetProfesor,NombreCurso)),
    aula(NumeroAula,NombreAula,_,TipoAula),
    assert(aulaOcupada(NumeroAula,NombreAula,Dia,Hora)),
    assert(leccion(NombreCurso,NombreAula,NumeroAula,Dia,Hora,Semestre,CarnetProfesor)),
    !.

% cursos(nombre,tipoAula,cantidadCreditos,semestre).
% disponibleAula(TipoAula,NumeroAula,Dia,Hora)
% disponibleProfesor(Carnet,Curso,Dia,Hora)
% profesorCurso(carne,nombreCurso).
% aula(numeroAula,nombre,capacidad,tipo)
% aulaOcupada(#aula,nombreAula,dia,hora).
% leccion(NombreCurso,NombreAula,NumeroAula,Dia,Hora,Semestre,CarnetProfesor)
crearLeccion(NombreCurso):-
    cursos(NombreCurso,TipoAula,_,Semestre),
    dia(Dia),
    hora(Hora),
    disponibleAula(TipoAula,NumeroAula,Dia,Hora),
    disponibilidadProfesor(CarnetProfesor,NombreCurso,Dia,Hora),
    assert(profesorCurso(CarnetProfesor,NombreCurso)),
    aula(NumeroAula,NombreAula,_,TipoAula),
    assert(aulaOcupada(NumeroAula,NombreAula,Dia,Hora)),
    assert(leccion(NombreCurso,NombreAula,NumeroAula,Dia,Hora,Semestre,CarnetProfesor)),
    !.
