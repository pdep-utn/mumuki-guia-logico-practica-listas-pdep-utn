test(peru_esta_en_la_a, [nondet]) :-
  estaEn(peru, a).
test(lacroze_esta_en_la_b, [nondet]) :-
  estaEn(lacroze, b).
test(retiro_esta_en_la_c, [nondet]) :-
  estaEn(retiro, c).
test(retiro_no_esta_en_la_b, fail):-
  estaEn(retiro, b).

test(distancia_entre_peru_y_primeraJunta_es_5, [nondet]) :-
  distancia(peru, primeraJunta, Distancia),
  assertion(Distancia == 5).
test(distancia_entre_pellegrini_y_alem_es_1, [nondet]) :-
  distancia(pellegrini, alem, Distancia),
  assertion(Distancia == 1).


test(pellegrini_diagNorte_misma_altura, [nondet]) :-
  mismaAltura(pellegrini, diagNorte).
test(alem_catedral_misma_altura, [nondet]) :-
  mismaAltura(alem, catedral).
test(peru_medrano_no_misma_altura, fail):-
  mismaAltura(peru, medrano).


test(bolivar_pichincha_viaje_facil,[nondet]) :-
  viajeFacil(bolivar, pichincha).
test(lima_independenciaC_viaje_facil, [nondet]) :-
  viajeFacil(lima, independenciaC).
test(humberto1ro_lacroze_no_viaje_facil, fail) :-
  viajeFacil(humberto1ro, lacroze).
