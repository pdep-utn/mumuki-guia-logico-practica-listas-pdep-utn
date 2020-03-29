test(pruebasPerformance_tiene_mucho_testing):-
	muchoTesting(pruebasPerformance).

test(login_no_tiene_horas_de_testing, fail):-
	muchoTesting(login).

test(tuning_tiene_horas_de_testing_insuficientes, fail):-
	muchoTesting(tuning).