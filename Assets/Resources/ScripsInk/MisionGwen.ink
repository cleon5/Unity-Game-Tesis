EXTERNAL Name(charName)
EXTERNAL Ganancia(int)
EXTERNAL Aceptado(bool)

{Name("Yo")}
Hola que tal, soy Dante.

{Name("Gwen")}
Mucho gusto Sr. Dante, soy Maria, en que le puedo ayudar. 


{Name ("Yo")}
    Gracias. 
        * [Presentarse]
            -> Dpresentacion
        * [Preguntar sobre trabajo]
            -> Btrabajo
        * [Despedirse]
            -> Sdespedirse

===Dpresentacion===

{Name("Yo")}
Me dicen dante, anteriormente en mi ciudad ayudaba a mi padre con las finanzas, por lo cual tengo conocimiento financiero.

{Name("Yo")}
Acabo de llegar a la ciudad y estoy buscando trabajo.

{Name("Gwen")}
Nos alegra recibirte, espero que esta ciudad sea de tu agrado pero por el momento no contamos con trabajo.

->DONE

===Btrabajo===

{Name("Yo")}
Estoy en busqueda de potenciales negocios para invertir, y al ver esta tienda me parecio un excelene fuente de negocios.

{Name("Gwen")}
Nos alegra recibirte, espero que esta ciudad sea de tu agrado, eres bueno combatiendo?

{Name ("Yo")}
    Yo...
        * [Naci para luchar]
            -> Plucha
        * [Lo deje hace tiempo]
            -> Sdespedirse

->DONE

===Plucha===

{Name("Gwen")}
Cerca del pueblo, al este se encuentra una cantidad de monstruo que no permiten que los recursos lleguen al pueblo, si se encarga de esto podemos darle una recompensa.

{Name("Yo")}
Dejalo en mis manos.

    {Ganancia(15000)}
    {Aceptado(true)}
->DONE

===Sdespedirse===

{Name("Yo")}
Muchas gracias por todo nos vemos mas tarde.

    {Ganancia(0)}
    {Aceptado(false)}

-> END
