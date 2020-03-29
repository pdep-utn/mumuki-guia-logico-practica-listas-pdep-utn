Ojo, cuando dice que tiene que tener más de _2 saltos diferentes_  de más de 8 puntos, pensá lo siguiente:

 * Por un lado, vas a necesitar diferenciar los saltos, porque si no, `ruben` clasifica (lo cual estaría mal, porque solo hizo un salto de mas de 8)		
 * Por otro lado, `roque` si clasifica (porque tiene más de dos saltos diferentes de más 8 puntos)		
 	
 ¡La complicación acá está en que lo que pide el enunciado es que sean saltos diferentes, pero no necesariamente que tengan valor diferente! Es decir, en la lista de roque: 		
 	
 ```prolog		
 [7,10,10]		
 ```		
 		
 Hay dos saltos diferentes, aunque los dos tengan el mismo puntaje. Entonces, ¿cómo podrías hacer para diferenciarlos aún cuando tienen el mismo valor? ¡Podrías comparar sus posiciones! Para eso, investigá los predicados `nth1/3` y `nth0/3`.