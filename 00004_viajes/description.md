Una agencia de viajes lleva un registro con todos los vuelos que maneja de la siguiente manera:

```prolog
vuelo(Codigo de vuelo, capacidad en toneladas, [lista de destinos] ).
```

Esta lista de destinos está compuesta de la siguiente manera:

```prolog
escala(ciudad, tiempo de espera)
tramo(tiempo en vuelo)
````

Siempre se comienza de una ciudad (escala) y se termina en otra (no puede terminar en el aire al vuelo),
con tiempo de vuelo entre medio de las ciudades. Considerar que los viajes son de ida y de vuelta por la
misma ruta.

```prolog
vuelo(arg845, 30, [escala(rosario,0), tramo(2), escala(buenosAires,0)]).
vuelo(mh101, 95, [escala(kualaLumpur,0), tramo(9), escala(capeTown,2), tramo(15), escala(buenosAires,0)]).
vuelo(dlh470, 60, [escala(berlin,0), tramo(9), escala(washington,2), tramo(2), escala(nuevaYork,0)]).
vuelo(aal1803, 250, [escala(nuevaYork,0), tramo(1), escala(washington,2),tramo(3), escala(ottawa,3), tramo(15), escala(londres,4), tramo(1), escala(paris,0)]).
vuelo(ble849, 175, [escala(paris,0), tramo(2), escala(berlin,1), tramo(3), escala(kiev,2), tramo(2), escala(moscu,4), tramo(5), escala(seul,2), tramo(3), escala(tokyo,0)]).
vuelo(npo556, 150, [escala(kiev,0), tramo(1), escala(moscu,3), tramo(5), escala(nuevaDelhi,6), tramo(2), escala(hongKong,4), tramo(2),escala(shanghai,5), tramo(3), escala(tokyo,0)]).
vuelo(dsm3450, 75, [escala(santiagoDeChile,0), tramo(1), escala(buenosAires,2), tramo(7), escala(washington,4), tramo(15), escala(berlin,3), tramo(15), escala(tokyo,0)]).
```

Definir los siguientes predicados; en todos vamos a identificar cada vuelo por su código:

* `tiempoTotalVuelo/2`: que  relaciona un vuelo con el tiempo que lleva en total, contando las esperas en
las escalas (y eventualmente en el origen y/o destino) más el tiempo de vuelo.
* `escalaAburrida/2`: Relaciona un vuelo con cada una de sus escalas aburridas; una escala es
aburrida si hay que esperar mas de 3 horas.
* `vueloLargo/1`: Si un vuelo pasa 10 o más horas en el aire, entonces es un vuelo largo. OJO que dice "en el aire", en este punto no hay que contar las esperas en tierra.
* `conectados/2`: Relaciona 2 vuelos si tienen al menos una ciudad en común.
* `bandaDeTres/3`: relaciona 3 vuelos si están conectados, el primero con el segundo, y el segundo
con el tercero.
* `distanciaEnEscalas/3`: relaciona dos ciudades que son escalas del mismo vuelo y la cantidad de
escalas entre las mismas; si no hay escalas intermedias la distancia es 1. No importa de qué vuelo, lo que tiene que pasar es que haya algún vuelo que tenga como escalas a
ambas ciudades. Por ejemplo:
  * París y Berlín están a distancia 1 (por el vuelo BLE849)
  * Berlín y Seúl están a distancia 3 (por el mismo vuelo).
* `vueloLento/1`: Un vuelo es lento si no es largo, y además cada escala es aburrida.
