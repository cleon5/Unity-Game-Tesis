
EXTERNAL Name(charName)
EXTERNAL CostoInvercion(int)
EXTERNAL PorcentajeNegocio(int)
EXTERNAL PorcentajeGanancia(int)
EXTERNAL Aceptado(bool)

{Name ("Yo")}
Hola Katy, como estas?

{Name ("Katy")}
Hola, buenos dias, te sirvo lo de siempre?

Te sirvo lo de siempre, un cappuccino con una rebanada grande de pastel de chocolate?


{Name ("Yo")}
 mmm....
    * Si me bendria bien ese pastel ahora
        -> Si
        
    * No gracias estoy bien por ahora
        ->No
        
    ===Si===
    {Name ("Yo")}
    Si me bendria bien ese pastel ahora
    
    {Name ("Katy")}
    Muy bien en un momento sale.
    ->Main
    
    ===No===
    {Name ("Yo")}
    No gracias estoy bien por ahora, solo pase a saludar a mi vieja amiga
    ->Main

===Main===
{Name ("Yo")}
Y dime, como van las ventas desde que volvistes a abrir?

{Name ("Katy")}
Las ventas estan de maravilla, como el estado ya esta en semaforo verde las ventas estan en aumento, las personas ya tratan de vivir su vida con normalidad, ya se me permite tener mayor numero de clientes dentro.

{Name ("Yo")}
Que piensas de expandirte, asi podrias podrias aumentar tus ganancias y ademas de permitir un mayor numero de clientes.

{Name ("Katy")}
Si lo he pensado pero es mas facil decirlo que hacerlo, para ello necesito mas empleados un espacio mas grande, ademas de lo principal, efectivo para poder realizarlo.

Ya habia pensado en absorber el local de al lado para ampliarme, pero por desgracia el confinamiento no me permitio ahorrar para realizarlo

{Name ("Yo")}
Si tienes razon, se necesita dinero para llevarlo a cabo.

    * [Hacer propuesta].
        -> Propuesta
        
    * [Preguntar de sobre los planes que tenia]
        -> PreguntaPlanes
    
    ===Propuesta===
    {Name ("Yo")}
    ...Creo que podria ayudarte en la parte del dinero,
    veras, actualemte soy el Money-Manager de un Videjugador Profecional, y estoy en busca de negocios para invertir.
    
    {Name ("Katy")}
    Wow!! Si me gustaria tu ayuda.
    
    {Name ("Yo")}
    Uno de los pasos mas importantes en esto de las inversiones es conocer a los otros socios, pero en nuestro caso nos conocemos desde secundaria.
    
    
    -> PropuestaFinal
    
    ===PreguntaPlanes===
    {Name ("Yo")}
    .....
    * [Como van tus ganancias]
        -> Ganancias
    * [Como atrairias mas clientes?]
        -> Planes
    * [Hacer propuesta]
        -> PropuestaFinal
    
        ===Ganancias===
        {PorcentajeGanancia(20)}
        {Name ("Yo")}
        y... dime como van las ganancias en el ultimo mes.
        
        {Name ("Katy")}
        Las ganancias van en aumento, el ultimo mes tuve una ganancias de $8000 pesos libres
        
        {Name ("Yo")}
        No esta mal, es una buena ganancia
        

        ->PreguntaPlanes
        
        ===Planes===
         {Name ("Katy")}
         {PorcentajeGanancia(20)}
        Me gustaria agregar una caja mas, ademas de contratar 2 empleados mas, tambien habia pensado expandirme rentando el local de al lado y agregando mas mesas.
                
        {Name ("Yo")}
        me parece buena idea.
        
        ->PreguntaPlanes
    
        ===PropuestaFinal===
        {PorcentajeGanancia(30)}
        {Name ("Yo")}
        Y cuanto planeabas gastar?
        
        {Name ("Katy")}
        Segun mis calculos me costaria un total de 60,000 para rentar el local y comprar el moviliario faltante.
        
        {Name ("Yo")}
        Y a cuanto esperas que tus ganancias aumenten?
        
        {Name ("Katy")}
        Yo esperaria un aumento de entre un 50% y 70% en mis ganancias mensuales.
        
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
        
        {PorcentajeNegocio (40)}
        {CostoInvercion(60000)}
        {Aceptado(true)}
        
        ->DONE
        ===inversionNo===
        {Name ("Yo")}
        Revisare algunas cosas y vere si se me ocurre alguna idea.
            
        {Name ("Katy")}
        Muy bien, nos vemos luego.
        
        {Name ("Yo")}
        Si, adios
        
        ->DONE
    
    -> DONE





->END
