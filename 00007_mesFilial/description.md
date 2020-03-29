Se tiene la relación `padre/2` que indica `padre(Hijo, Padre)`, por ejemplo para decir que Luisa es la madre de Roque se agrega esta cláusula

```prolog
padre(roque,luisa).
```

(léase "uno de los padres de Roque es Luisa").

Ahora queremos saber si en un mes hay algún hijo de un individuo que haya ganado más que ése individuo. Ejemplo:

```prolog
?- mesFilial(luisa,febrero).
yes
```

> Escribí el predicado `mesFilial/2` que relaciona una persona con un mes.