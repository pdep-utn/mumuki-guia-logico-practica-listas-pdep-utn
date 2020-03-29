test(el_ingreso_total_de_roque_es_7000) :-
  ingresoTotal(roque, 7000).
test(el_ingreso_total_de_luisa_es_3350) :-
  ingresoTotal(luisa, 3350).

test('El ingreso total es inversible por el primer parámetro',Alguien == roque) :-
  ingresoTotal(Alguien,7000).