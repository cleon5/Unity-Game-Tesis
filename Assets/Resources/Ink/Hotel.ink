EXTERNAL Name(charName)
EXTERNAL CostoInvercion(int)
EXTERNAL PorcentajeNegocio(int)
EXTERNAL PorcentajeGanancia(int)
EXTERNAL Aceptado(bool)

{Name("Yo")}
Buenos dias, mi nombre es Dante

{Name("Jane")}
Muy buenos dias Sr. Dante, soy Jane, en que le puedo ayudar. 

{Name("Yo")}
Soy el Money Manager de Dimitry, actual Gamer profecional e influencer reconocido a nivel mundial, estoy recorriendo la ciudad en busca
 de potenciales negocios para invertir, y al ver este hotel surgio en mi una idea de negocio

{Name("Jane")}
Tiene mi atencion, cuenteme mas porfavor.


 {Name ("Yo")}
    Muy bien ... 
        * [Explicar mas]
            -> EMas
        * [Explicar idea]
            -> EIdea


===EMas===
{Name("Yo")}
En los ultimos años la industria de los videojuegos a tenido una expancion increiblemente grande y acelerada, lo que a traido como consecuencia que se creen restaurantes, peliculas, series e hoteles centrados en los videojuegos.

Por ejemplo hace unos pocos años Atari creo su primer hotel para Gamer, siendo un exito. Este hotel innova en una estetica moderna que atrae a los jovenes

{Name("Jane")}
Si he visto fotografias de sus instalaciones en internet y me agrada mucho esas luces Neon.

{Name("Yo")}
Muy bien, como puede ver, la arena de E-Sport esta cruzando la calle, por lo que siempre que se hacen los torneos nacionales, cientos de turistas vienen a disfrutar de los juegos.

{Name("Jane")}
Es correcto, es cuando mas lleno esta el hotel

{Name("Yo")}
Entonces yo le propongo invertir para que acondicione parte de las habitaciones al estilo "Gamer", Luces de neon, habitaciones equipadas con lo mas nuevo en consolas y videojuegos, ademas de crear publicadad al hotel y a su nueva remodelacion.

Dimitry podra ayudarla con la publicidad, en sus redes sociales lo siguen millones de personas, y algunos de estos seguidores vienen a ver los E-sports, por lo que le aseguro que su hotel estara al 100% de su ocupacion.

Que le parecio mi propuesta?

{Name("Jane")}
Me has abierto los ojos, es muy cierto todo lo que dices, nose por que nunca lo habia visto.

->Propuesta1


===EIdea===

{Name("Yo")}
Muy bien, como puede ver, la arena de E-Sport esta cruzando la calle, por lo que siempre que se hacen los torneos nacionales, cientos de turistas vienen a disfrutar de los juegos.

{Name("Jane")}
Es correcto, es cuando mas lleno esta el hotel

{Name("Yo")}
Entonces yo le propongo invertir para que acondicione parte de las habitaciones al estilo "Gamer", Luces de neon, habitaciones equipadas con lo mas nuevo en consolas y videojuegos, ademas de crear publicadad al hotel y a su nueva remodelacion.

Dimitry podra ayudarla con la publicidad, en sus redes sociales lo siguen millones de personas, y algunos de estos seguidores vienen a ver los E-sports, por lo que le aseguro que su hotel estara al 100% de su ocupacion.

Que le parecio mi propuesta?

{Name("Jane")}
Me agrado mucho, nose por que nunca lo habia pensado.

->Propuesta2

===Propuesta1===

{Name("Jane")}
Comecemos con lo interesante, los negocios, el hotel gana en promedio 450,000 pesos mensuales, eso sin contar los gastos, y tenemos en promedio una ocupacion de 50% llegando al 75% en la temporada de E-Sports puesto que competimos con otros hoteles 

{Name("Yo")}
Con mi propuesta le aseguro que la cantidad de clientes aumentaran, por que veran mas atractivo este hotel, porque se ajustara a sus gustos.

Y tomando en cuenta la ley de Oferta y demanda, mientras mas personas quieran hospedarse en su hotel las habitaciones pueden subir de precio, aumentando asi las ganancias del hotel.

{Name("Jane")}
Es correcto, asi que escucho sus ofertas


->PropuestaA
===PropuestaA==

{Name ("Yo")}
*[100,000 por el 20%]
    -> Eleccion1A
*[40,000 por el 12%]
    -> Eleccion2A
*[70,000 por el 18%]
    -> Eleccion3A


===Eleccion1A===

{Name("Yo")}
Que te parece 100,000 por el de las 20% del hotel?

{Name("Jane")}
.....

Creo que es una propuesta bastante justa, aceptare tu propuesta.

{Name("Yo")}
Muy bien, mi secretaria Oriana se encargara del las cuestiones legales

{Name("Jane")}
Muy bien le mandare los documentos a tu secretaria, estamos en contacto.

{Name("Yo")}
Etendido, nos vemos luego, que tenga buena tarde.


    {PorcentajeGanancia(20)}
    {PorcentajeNegocio (20)}
    {CostoInvercion(100000)}
    {Aceptado(true)}

->DONE
===Eleccion2A===

{Name("Yo")}
Que te parece 40,000 por el de las 12% del hotel?...

{Name("Jane")}
No, el costo que quieres invertir no sera suficiente para poder hacer las remodeaciones necesarias.

->PropuestaA
===Eleccion3A===

{Name("Yo")}
Que te parece 70,000 por el de las 18% del hotel?

{Name("Jane")}
.....

Creo que es una propuesta bastante justa, aceptare tu propuesta.

{Name("Yo")}
Muy bien, mi secretaria Oriana se encargara del las cuestiones legales

{Name("Jane")}
Muy bien le mandare los documentos a tu secretaria, estamos en contacto.

{Name("Yo")}
Etendido, nos vemos luego, que tenga buena tarde

    {PorcentajeGanancia(18)}
    {PorcentajeNegocio (18)}
    {CostoInvercion(70000)}
    {Aceptado(true)}
->DONE


===Propuesta2===

{Name("Jane")}
Comecemos con lo interesante, los negocios, el hotel gana en promedio 450,000 pesos mensuales, eso sin contar los gastos, y tenemos en promedio una ocupacion de 50% llegando al 75% en la temporada de E-Sports puesto que competimos con otros hoteles 

{Name("Yo")}
Con mi propuesta le aseguro que la cantidad de clientes aumentaran, por que veran mas atractivo este hotel, porque se ajustara a sus gustos.

Y tomando en cuenta la ley de Oferta y demanda, mientras mas personas quieran hospedarse en su hotel las habitaciones pueden subir de precio, aumentando asi las ganancias del hotel.

{Name("Jane")}
Es correcto, asi que escucho sus ofertas

->PropuestaB
===PropuestaB==
{Name ("Yo")}
*[100,000 por el 25%]
    -> Eleccion1B
*[50,000 por el 12%]
    -> Eleccion2B
*[70,000 por el 20%]
    -> Eleccion3B

===Eleccion1B===
{Name("Yo")}
Que te parece 100,000 por el de las 25% del hotel?

{Name("Jane")}
No, el porcentaje que quieres del hotel es demaciado grande, no es posible hacer un trato asi.

->PropuestaB
===Eleccion2B===

{Name("Yo")}
Que te parece 50,000 por el de las 12% del hotel?

{Name("Jane")}
.....

Creo que es una propuesta bastante justa, aceptare tu propuesta.

{Name("Yo")}
Muy bien, mi secretaria Oriana se encargara del las cuestiones legales

{Name("Jane")}
Muy bien le mandare los documentos a tu secretaria, estamos en contacto.

{Name("Yo")}
Etendido, nos vemos luego, que tenga buena tarde

    {PorcentajeGanancia(12)}
    {PorcentajeNegocio (12)}
    {CostoInvercion(50000)}
    {Aceptado(true)}

->DONE
===Eleccion3B===
{Name("Yo")}
Que te parece 70,000 por el de las 20% del hotel?...

{Name("Jane")}
No, el porcentaje que quieres del hotel es demaciado grande, no es posible hacer un trato asi.

->PropuestaB


->END
