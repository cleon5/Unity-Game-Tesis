EXTERNAL Name(charName)
EXTERNAL CostoInvercion(int)
EXTERNAL PorcentajeNegocio(int)
EXTERNAL PorcentajeGanancia(int)
EXTERNAL Aceptado(bool)

{Name("Yo")}
Hola que tal, soy Dante

{Name("Jane")}
Mucho gusto Sr. Dante, soy Maria, en que le puedo ayudar. 

{Name("Yo")}
Estoy en busqueda de potenciales negocios para invertir, y al ver esta tienda me parecio un excelene fuente de negocios 

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
Bueno le contaré a lo largo de mi tavesia por los 9 reinos he reccorido y conocido cada rincon de estas tierras por lo que puedo saber que es lo que la gente demanda y necesita y esta localizacion es perfecta para poder hacer negocios.

{Name("Jane")}
Es buena idea ya que por aqui pasan muchos viajeros.

{Name("Yo")}
Muy bien, como puede ver, para ese camino puede llegar al reino principal por lo que la gente tiene la necesidad de cruzar por aqui, por lo tanto podemos vender pieles, comida y algunas artilujios 

{Name("Jane")}
Podriamos conseguir mucho oro

{Name("Yo")}
Entonces yo le propongo invertir para que acondicione parte del lugar compre ingredientes y consiga algunos empleados eficientes de mientras yo puedo conseguir los recursos.

Que le parecio mi propuesta?

{Name("Jane")}
Me has abierto los ojos, es muy cierto todo lo que dices, no se por que nunca me había ocurrido semejante idea.

->Propuesta1


===EIdea===

{Name("Yo")}
Muy bien, como puede ver, para ese camino puede llegar al reino principal por lo que la gente tiene la necesidad de cruzar por aqui, por lo tanto podemos vender pieles, comida y algunas artilujios 

{Name("Jane")}
Podriamos conseguir mucho oro

{Name("Yo")}
Entonces yo le propongo invertir para que acondicione parte del lugar compre ingredientes y consiga algunos empleados eficientes de mientras yo puedo conseguir los recursos.

Que le parecio mi propuesta?

{Name("Jane")}
Me has abierto los ojos, es muy cierto todo lo que dices, no se por que nunca me había ocurrido semejante idea.


->Propuesta2

===Propuesta1===

{Name("Jane")}
Comecemos con lo interesante, los negocios, la tienda gana en promedio 250,000 pesos mensuales, eso sin contar los gastos, y tenemos en promedio una ocupacion de 10% llegando al 30% debido a las pocas tiendas cercas

{Name("Yo")}
Con mi propuesta le aseguro que la cantidad de clientes aumentaran, por que esta tienda tendra productos variados, porque se ajustara a sus necesidades.

Y tomando en cuenta la ley de Oferta y demanda, mientras mas personas quieran comprar dichos articulos pueden subir de precio, aumentando asi las ganancias.

{Name("Jane")}
Es correcto, asi que escucho sus ofertas


->PropuestaA
===PropuestaA==

{Name ("Yo")}
*[100,000 por el 35%]
    -> Eleccion1A
*[75,000 por el 32%]
    -> Eleccion2A
*[50,000 por el 28%]
    -> Eleccion3A


===Eleccion1A===

{Name("Yo")}
Que te parece 100,000 por el 35% de la tienda?

{Name("Jane")}
.....

Creo que es una propuesta bastante justa, aceptare tu propuesta.

{Name("Yo")}
Muy bien, mi secretaria se encargara del las cuestiones legales

{Name("Jane")}
Muy bien le mandare los documentos a tu secretaria, estamos en contacto.

{Name("Yo")}
Etendido, nos vemos luego, que tenga buena tarde.


    {PorcentajeGanancia(35)}
    {PorcentajeNegocio (35)}
    {CostoInvercion(100000)}
    {Aceptado(true)}

->DONE
===Eleccion2A===

{Name("Yo")}
Que te parece 50,000 por el de las 28% de la tienda?...

{Name("Jane")}
No, el costo que quieres invertir no sera suficiente para poder hacer las remodelaciones necesarias.

->PropuestaA
===Eleccion3A===

{Name("Yo")}
Que te parece 75,000 por el de las 32% de la tienda?

{Name("Jane")}
.....

Creo que es una propuesta bastante justa, aceptare tu propuesta.

{Name("Yo")}
Muy bien, mi secretaria se encargara del las cuestiones legales

{Name("Jane")}
Muy bien le mandare los documentos a tu secretaria, estamos en contacto.

{Name("Yo")}
Etendido, nos vemos luego, que tenga buena tarde

    {PorcentajeGanancia(32)}
    {PorcentajeNegocio (32)}
    {CostoInvercion(75000)}
    {Aceptado(true)}
->DONE


===Propuesta2===

{Name("Jane")}
Comecemos con lo interesante, los negocios, la tienda gana en promedio 250,000 pesos mensuales, eso sin contar los gastos, y tenemos en promedio una ocupacion de 10% llegando al 30% debido a las pocas tiendas cercas

{Name("Yo")}
Con mi propuesta le aseguro que la cantidad de clientes aumentaran, por que esta tienda tendra productos variados, porque se ajustara a sus necesidades.

Y tomando en cuenta la ley de Oferta y demanda, mientras mas personas quieran comprar dichos articulos pueden subir de precio, aumentando asi las ganancias.

{Name("Jane")}
Es correcto, asi que escucho sus ofertas

->PropuestaB
===PropuestaB==
{Name ("Yo")}
*[100,000 por el 35%]
    -> Eleccion1B
*[50,000 por el 25%]
    -> Eleccion2B
*[70,000 por el 30%]
    -> Eleccion3B

===Eleccion1B===
{Name("Yo")}
Que te parece 100,000 por el de las 35% de la tienda?

{Name("Jane")}
No, el porcentaje que quieres la tienda es demaciado grande, no es posible hacer un trato asi.

->PropuestaB
===Eleccion2B===

{Name("Yo")}
Que te parece 50,000 por el de las 25% de la tienda?

{Name("Jane")}
.....

Creo que es una propuesta bastante justa, aceptare tu propuesta.

{Name("Yo")} 
Muy bien, mi secretaria se encargara del las cuestiones legales

{Name("Jane")}
Muy bien le mandare los documentos a tu secretaria, estamos en contacto.

{Name("Yo")}
Etendido, nos vemos luego, que tenga buena tarde

    {PorcentajeGanancia(25)}
    {PorcentajeNegocio (25)}
    {CostoInvercion(50000)}
    {Aceptado(true)}

->DONE
===Eleccion3B===
{Name("Yo")}
Que te parece 70,000 por el de las 30% de la tienda ?...

{Name("Jane")}
No, el porcentaje que quieres de la tienda es demaciado grande, no es posible hacer un trato asi.

->PropuestaB


->END
