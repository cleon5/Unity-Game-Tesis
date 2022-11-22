EXTERNAL Name(charName)
EXTERNAL CostoInvercion(int)
EXTERNAL PorcentajeNegocio(int)
EXTERNAL PorcentajeGanancia(int)
EXTERNAL Aceptado(bool)

{Name("Yo")}
Hola que tal, soy Dante

{Name("Menendez")}
Mucho gusto Sr. Dante, soy Menendez, veo que es un cazador de monstruos. 

{Name("Yo")}
Estoy en busqueda de enemigos para conseguir más oro y poder tener más recursos

{Name("Menendez")}
Veo que necesita un trabajo, yo puedo ofrecerle uno


 {Name ("Menendez")}
    Muy bien ... 
        * [Explicar mas]
            -> EMas
        * [Explicar idea]
            -> EIdea
            


===EMas===
{Name("Menendez")}
Como sabrá estas tierras están llenas de monstruos por lo que la gente ya no vive por aqui debido a la alta inseguirda que generan esas bestias, por lo que se necesita un veradero cazador que pueda erradicar las amenazas de este bello lugar a como solia ser antes.

{Name("Yo")}
Me interesa la mision.

{Name("Menendez")}
Muy bien, como puede ver, para ese camino puede llegar al reino principal por lo que la gente tiene la necesidad de cruzar por aqui, por lo tanto debe eliminar la mayor cantidad de enemigos

{Name("Yo")}
Eso me suponia.


->Propuesta1


===EIdea===

{Name("Menendez")}
Muy bien, como puede ver, para ese camino puede llegar al reino principal por lo que la gente tiene la necesidad de cruzar por aqui, por lo tanto debe eliminar la mayor cantidad de enemigos 

{Name("Yo")}
Eso me suponia.

{Name("Menendez")}
Entonces yo le propongo si usted está decidido en eliminar los enemigos yo podria darle a cambio algo de dinero.

Que le parecio mi propuesta?

{Name("Yo")}
Me parece razonable que a cambio de mi esfuerzo pueda llegar a obtener una recompensa


->DONE

===Propuesta1===

{Name("Menendez")}
Entonces está decidido si ud elimina a los enemigos yo le dare a cambio algo de dinero que tengo ahorrado de mi pension.

{Name("Yo")}
A si es yo me encargare de todas esas bestias.



->PropuestaA
===PropuestaA==

{Name ("Menendez")}
*[25,000 por el eliminar a 10 enemigos]
    -> Eleccion1A
*[40,000 por el eliminar a 15 enemigos]
    -> Eleccion2A
*[60,000 por el eliminar a 20 enemigos]
    -> Eleccion3A


===Eleccion1A===

{Name("Menendez")}
Que te parece 60,000 por el eliminar a 20 enemigos?

{Name("Yo")}
.....

Me vendria bien esa cantidad, yo me encargo de esos mal nacidos.

{Name("Menendez")}
Buena suerte


    {PorcentajeGanancia(60000)}
    {PorcentajeNegocio (0)}
    {CostoInvercion(0)}
    {Aceptado(true)}

->DONE
===Eleccion2A===

{Name("Menendez")}
Que te parece 40,000 por el eliminar a 15 enemigos?

    {Name("Yo")}
Me vendria bien esa cantidad, yo me encargo de esos mal nacidos.

{Name("Menendez")}
Buena suerte


    {PorcentajeGanancia(40000)}
    {PorcentajeNegocio (0)}
    {CostoInvercion(0)}
    {Aceptado(true)}


->PropuestaA
===Eleccion3A===

{Name("Yo")}
Que te parece 25,000 por el eliminar a 10 enemigos?

{Name("Menendez")}
.....

Nada mal, yo me encargo de esos mal nacidos.

{Name("Menendez")}
Buena suerte


    {PorcentajeGanancia(25000)}
    {PorcentajeNegocio (0)}
    {CostoInvercion(0)}
    {Aceptado(true)}




->END
