test('la consulta tiempoTotalVuelo(arg845, 2) es verdadera') :-
  tiempoTotalVuelo(arg845, 2).

test('la consulta escalaAburrida(ble849, escala(moscu, 4)) es verdadera', [nondet]) :-
  escalaAburrida(ble849, escala(moscu, 4)).

test('la consulta escalaAburrida(npo556, escala(nuevaDelhi, 6)) es verdadera', [nondet]) :-
  escalaAburrida(npo556, escala(nuevaDelhi, 6)).


test('la consulta escalaAburrida(npo556, escala(kiev,0)) es falsa', [fail]) :-
  escalaAburrida(npo556, escala(kiev,0)).

test('la consulta vueloLargo(dsm3450) es verdadera') :-
  vueloLargo(dsm3450).

test('la consulta conectados(ble849, npo556) es verdadera (porque tienen a moscu en común)', [nondet]) :-
  conectados(ble849, npo556).

test('la consulta conectados(arg845, dsm3450) es verdadera (porque tienen a buenosAires en común)', [nondet]) :-
  conectados(arg845, dsm3450).

test('la consulta conectados(dlh470, ble849) es verdadera (porque tienen a berlin en común)', [nondet]) :-
  conectados(dlh470, ble849).
  
test('la consulta bandaDeTres(arg845, dsm3450, ble849) es verdadera', [nondet]) :-
  bandaDeTres(arg845, dsm3450, ble849).

test('la distancia en escalas paris-berlin es 1'):-
  distanciaEnEscalas(paris, berlin, X),
  assertion( X =:= 1).

test('la distancia en escalas rosario-buenosAires es 1'):-
  distanciaEnEscalas(rosario, buenosAires, X),
  assertion( X =:= 1 ).

test('la consulta vueloLento(arg845) es falsa', fail):-
  vueloLento(arg845).
test('la consulta vueloLento(npo556) es falsa', fail):-
  vueloLento(npo556).
test('la consulta vueloLento(aal1803) es falsa', fail):-
  vueloLento(aal1803).
