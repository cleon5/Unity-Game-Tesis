using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ControladorUI : MonoBehaviour
{

    public Text Puntaje;
    public Text Vida;
    public int monedas= 0 ;
    public int vida = 10;
    void Start()
    {
        monedas = PlayerPrefs.GetInt("Monedas");
        Puntaje.text= "Monedas: "+monedas;
        Vida.text = "Vida: " + vida;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void AgregarPuntaje(int Monedas)
    {
        monedas += Monedas;
        Puntaje.text = "Monedas: " + monedas;
        PlayerPrefs.SetInt("Monedas", monedas);
    }
    public void QuitarPuntaje(int Monedas)
    {
        monedas -= Monedas;
        Puntaje.text = "Monedas: " + monedas;
    }

    public void AgregarVida(int Monedas)
    {
        vida += Monedas;
        Vida.text = "Vida: " + vida;
    }
    public void QuitarVida(int Monedas)
    {
        vida -= Monedas;
        Vida.text = "Vida: " + vida;
    }

}
