EXTERNAL Name(charName)
EXTERNAL CostoInvercion(int)
EXTERNAL PorcentajeNegocio(int)
EXTERNAL PorcentajeGanancia(int)
EXTERNAL Aceptado(bool)

{Name ("Sr. Enzo")}
Buenas tardes caballero, pase,
tome asiento porfavor

{Name ("Yo")}
Muy buenas tardes Sr. Enzo Me presento, soy Dante y como le comento por telefono mi secretaria Oriana estoy en busqueda de un nuevo negocio donde invertir el dinero de mi amigo Dimitry. 

{Name ("Sr Enzo")}
Por supuesto, Katy me comento que le ayudastes a invertir en su negocio el mes pasado, y sus ganancias aumentaron con tu ayuda.

{Name ("Yo")}
Si tuvimos un aumento aproximadamente del 50% en las ganancias el ultimo mes

{Name ("Sr Enzo")}
Nada mal...

Y digame, que piensas del restaurante?, donde estaria bien invertir?
Tienen alguna idea?

{Name ("Yo")}
    *[Crear una pagina web]
        -> PaginaWeb
    *[Crea nuevas promociones]
        -> Promociones
    *[Actualiza el menu]
        -> MenuNuevo
    
        ===PaginaWeb===
            Tengo la idea de la creacion de una pagina web del restaurante, lo que permitiria que mas personas conozcan el restaurante, ademas se podria comprar publicidad para que las personas puedan enterarse del restaurante.
            
            {Name ("Sr Enzo")}
            Me parece una buena idea, actualmente todos los negocios se estan mudando al mundo dijital
            
            {Name ("Yo")}
            Si, de hecho los negocios mas exitosos en internet son negocios que ya existian pero fueron trasladados al internet, como por 
            ejemplo netflix que esta sustituyendo a la television por cable, Uber que son taxis en una app, o incluso amazon y mercado
            libre que cambio la forma en que compramos
            
            {Name ("Sr Enzo")}
            Concuerdo contigo
            
            {Name ("Yo")}
            Actualmente es mas facil encontrar desarrolladores que puedan crear todo el software que necesitariamos para
            hechar a andar la pagina web
            
            {Name ("Sr Enzo")}
            Correcto, entonces hablemos de negocios
            
            {Name ("Yo")}
            Muy bien que le parece...
            
            
        ->Elecciones
        
        ===Promociones===
        Creo que lo mejor seria que agregaramos una gran variedad de ofertas y las repartieramos en bolantes y folletos, por lo que deberiamos contratar personas que se dediquen a repartir dichos bolantes
        
        {Name ("Sr Enzo")}
        ...ummm, creo que eso ocacionaria una gran cantidad de basura, hoy en dia las personas se guian por lo que ven en internet, ademas de lo que usan, tienen o hacen sus influencer favoritos.
        
        {Name ("Yo")}
        ...Pero asi daria a conocer el lugar a mas personas, ademas de aumentar el numero de clientes
        
        {Name ("Sr Enzo")}
        Eso se alejaria de lo que estamos tratando de hacer, ser una empresa mas limpia, incluso hace unos mese compramos equipo 100% electrico, para asi reducir al minimo las emiciones del CO2 al ambiente.
        
        {Name ("Yo")}
        Si creo que tiene razon.
        
        {Name ("Sr Enzo")}
        Lo siento pero creo que tenemos ideas diferentes Dante, si no estamso en la misma sintonia nuesta asociacion nunca funcionara.
        
        {Name ("Yo")}
        Tiene razon, le agradezco su tiempo.
        
        
        ->DONE
        
        ===MenuNuevo===
        Recomendaria crear un nuevo menu, algo que atraiga a nuevos clientes.
        Ademas podria hacer una remodelacion de este lugar, darle un aire mas moderno
        
        {Name ("Sr Enzo")}
        Con lo de la remodelacion tienes razon, el mobiliario es de la decada pasada, pero en cuento al menu, que pasara con los viejos clientes? Sus platillos favoritos ya no estarian.
        
        {Name ("Yo")}
        Se debera hacer un analisis completo sobre que tanto se venden los platillos del menu actual, y posteriormente dejar los que mas se vendan para el nuevo menu.
        
        {Name ("Sr Enzo")}
        No es de todo una mala idea, podria funcionar.
        
        {Name ("Sr Enzo")}
        Correcto, entonces hablemos de negocios
            
        {Name ("Yo")}
        Muy bien que le parece...
        
        ->Elecciones
        
        ===Elecciones===
        
        {Name ("Yo")}
        *[50,000 por el 30%]
            -> Eleccion1
        *[40,000 por el 45%]
            -> Eleccion2
        *[50,000 por el 25%]
            -> Eleccion3
        
        ===Eleccion1===
        Y en cuanto a negocios, yo te propongo darte 50,000 por el 30% de tu restaurante.
        
        {Name ("Sr Enzo")}
        Ok me parece una buena oferta
        
        {Name ("Yo")}
        Exelente, Mi secretaria Oriana se comunicara con usted
        
        {Name ("Sr Enzo")}
        Muy bien que pase buena tarde
        
        
        {PorcentajeGanancia(30)}
        {PorcentajeNegocio (30)}
        {CostoInvercion(50000)}
        {Aceptado(true)}
        
        -> DONE
        
        ===Eleccion2===
        Y en cuanto a negocios, yo te propongo darte 40,000 por el 45% de tu restaurante.
        
        {Name ("Sr Enzo")}
        No, me parece mucho porcentaje de negocio, pero que te parece el 65000, por el mismo porcentaje
        
        {Name ("Yo")}
        Si, esta en el presupuesto
        
        {Name ("Sr Enzo")}
        Entonces tenemos un trato
        
        {Name ("Yo")}
        Exelente, Mi secretaria Oriana se comunicara con usted
        
        {Name ("Sr Enzo")}
        Muy bien que pase buena tarde
        {PorcentajeGanancia(45)}
        {PorcentajeNegocio (45)}
        {CostoInvercion(65000)}
        {Aceptado(true)}
        
        -> DONE
        
        ===Eleccion3===
        Y en cuanto a negocios, yo te propongo darte 50,000 por el 25% de tu restaurante.
        
        {Name ("Sr Enzo")}
        Ok me parece una buena oferta
        
        {Name ("Yo")}
        Exelente, Mi secretaria Oriana se comunicara con usted
        
        {Name ("Sr Enzo")}
        Muy bien que pase buena tarde
        
    
        {PorcentajeGanancia(25)}
        {PorcentajeNegocio (25)}
        {CostoInvercion(50000)}
        {Aceptado(true)}
        
        -> DONE
        
        
        
    ->DONE
->END
