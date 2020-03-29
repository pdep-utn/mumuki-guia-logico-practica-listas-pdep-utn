test(julio_esta_descalificado) :-
  competidorDescalificado(julio).

test(hernan_no_esta_descalificado, fail) :-
  competidorDescalificado(hernan).

test(roque_no_esta_descalificado, fail) :-
  competidorDescalificado(roque).
