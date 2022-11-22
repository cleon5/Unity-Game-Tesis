EXTERNAL Name(charName)
EXTERNAL CostoInvercion(int)
EXTERNAL PorcentajeNegocio(int)
EXTERNAL PorcentajeGanancia(int)
EXTERNAL Aceptado(bool)

{Name("Yo")}
Hola soy dante, mucho gusto.

{Name("Gerardo")}
Mucho gusto Sr. Dante, soy Gerardo, en que le puedo ayudar. 

{Name("Yo")}
Quisiera poner mi propio negocio. 

{Name("Gerardo")}
Usted cuenta con ingresos superiores a 30,000?.


 {Name ("Yo")}
    Yo ... 
        * [Cuento con los ingresos necesarios]
            -> Ningreso
        * [No cuento con los ingresos]
            -> Singreso

===Singreso===

{Name("Yo")}
Quisiera poner un gremio de aventureros.

{Name("Gerardo")}
El es un impuesto general, personal y directo que grava los ingresos de las personas físicas, morales, Pymes, y personas físicas con actividad comercial, comerciantes o extranjeros que obtienen ingresos por actividades comerciales o profesionales en nuestro país.

{Name("Gerardo")}
Entonces te parece si...
*[el 40% de los ingresos es para nuestro rey]
    -> Eleccion40
*[el 30% de los ingresos es para nuestro rey]
    -> Eleccion30
*[el 35% de los ingresos es para nuestro rey]
    -> Eleccion35

===Eleccion40===
{Name("Yo")}
El 40% del ingreso me parece bien.

{Name("Gerardo")}
Me parece excelente, espero poder trabajar mas con usted.

    {PorcentajeGanancia(60)}
    {PorcentajeNegocio (40)}
    {CostoInvercion(30000)}
    {Aceptado(true)}

->DONE

===Eleccion30===
{Name("Yo")}
El 30% del ingreso me parece bien.

{Name("Gerardo")}
Me parece excelente, espero poder trabajar mas con usted.

    {PorcentajeGanancia(70)}
    {PorcentajeNegocio (30)}
    {CostoInvercion(30000)}
    {Aceptado(true)}

->DONE

===Eleccion35===
{Name("Yo")}
El 35% del ingreso me parece bien.

{Name("Gerardo")}
Me parece excelente, espero poder trabajar mas con usted.

    {PorcentajeGanancia(65)}
    {PorcentajeNegocio (35)}
    {CostoInvercion(30000)}
    {Aceptado(true)}

->DONE

===Ningreso===

{Name("Gerardo")}
Es una lastima, recuerda volver cuando cuentes con mas dinero.


-> END
