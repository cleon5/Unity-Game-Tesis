
EXTERNAL Name(charName)
EXTERNAL CostoInvercion(int)
EXTERNAL PorcentajeNegocio(int)
EXTERNAL PorcentajeGanancia(int)
EXTERNAL Aceptado(bool)

{Name ("Katy")}
Hola de nuevo, ya lo pensastes mejor?

{Name ("Yo")}
Mmmm..
    * [Me gustaria invertir]
        -> inversionSi
    * [Creo que debo pensarlo un poco.]
        -> inversionNo
    
    ===inversionSi===
    {Name ("Yo")}
    Me gustaria invertir en tu negocio, que te parece si te doy los 60,000 por el 40% del negocio.
        
    {Name ("Katy")}
    Wow, me parece perfecto
    
    {PorcentajeGanancia(40)}
    {PorcentajeNegocio (40)}
    {CostoInvercion(60000)}
    {Aceptado(true)}
    
    ->DONE
    ===inversionNo===
    {Name ("Yo")}
    Solo vine por el Cafe
        
    {Name ("Katy")}
    Muy bien, nos vemos luego.
    
    {Name ("Yo")}
    Adios.
    
    -> DONE

