En una competencia de saltos, cada competidor puede hacer hasta 5 saltos; a cada salto se le asigna un puntaje de 0 a 10. Y se define el predicado `puntajes` que relaciona cada competidor con los puntajes de sus saltos:

```prolog
puntajes(hernan,[3,5,8,6,9]).
puntajes(julio,[9,7,3,9,10,2]).
puntajes(ruben,[3,5,3,8,3]).
puntajes(roque,[7,10,10]).
```

> Desarrollá el predicado `puntajeCompetidor/3`, que relaciona a un competidor con el puntaje que obtuvo en un cierto salto.
>
> ```prolog
> ? puntajeCompetidor(hernan, 4, Puntaje).
> Puntaje = 6
> ```

