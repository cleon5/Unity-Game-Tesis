EXTERNAL Name(charName)
EXTERNAL CostoInversion(int)
EXTERNAL PorcentajeGanancia(int)

{Name ("Dimitry")}
Hola de nuevo, Como vas?

->Main

===Main===
{Name ("Yo")}

*[Preguntar]
    -> Preguntas
    
    
    ===Preguntas===
    *[Dinero]
        ->Dinero
    *[Invertir]
        ->Invertir
    *[Informacion]
        ->Informacion
    
    ===Dinero===
        {Name ("Dimitry")}
        Si quieres mas dinero deberas jugar contra mi
        
        {Name ("Yo")}
        Porque no solo me das el dinero?
        
        {Name ("Dimitry")}
        Por que eso no seria divertido, y ademas esto es un juego
        
        ->Main  
    ->DONE
    ===Invertir===
        {Name ("Dimitry")}
        Camina por la calle, encuentra algun lugar donde creas que seria facil invertir, y que a su vez nos de un buen retorno de inversion.
        
        {Name ("Yo")}
        ok parece sencillo
        
        
    ->DONE
    ===Informacion===
    
    
    ->DONE