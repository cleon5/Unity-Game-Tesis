using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class ControladorScenas : MonoBehaviour
{
    [SerializeField]
    //public Datos progreso;
    public string Archivo;

    private string[] meses = {"Enero","Febrero","Marzo", "Abril","Mayo","Junio","Julio","Agosto","Septiembre","Obtubre",
    "Noviembre","Diciembre"};
    public int total = 20;
    private string name;
    private void Start()
    {
        /*
        Archivo = PlayerPrefs.GetString("x");
        if (!string.IsNullOrEmpty(Archivo))
        {
            progreso = JsonUtility.FromJson<Datos>(Archivo);
        }
       
        name = gameObject.name;
        switch (name)
        {
            case "Cafeteria":
                if (progreso.DestruirCafeteria)
                    Destroy(gameObject);
                break;
            case "Restaurante":
                if (progreso.DestruirRestaurant)
                    Destroy(gameObject);
                break;
            case "Hotel":
                if (progreso.DestruirHotel)
                    Destroy(gameObject);
                break;
       
            
        }*/

    }
    public void CambiarEscena(string nombre)
    {
        SceneManager.LoadScene(nombre);
    }
    private void OnTriggerEnter2D(Collider2D other)
    {

        string nameScena = gameObject.name;
        Debug.Log(nameScena);
        SceneManager.LoadScene(nameScena);
    }

    public void Reiniciar()
    {/*
        progreso.IntroEstado = "";
        progreso.MesNumero = 0;
        progreso.Collecionables = 0;
        progreso.PuntoHistoria = "";

        progreso.Primero = false;
        progreso.Segundo = false;
        progreso.Tercero = false;
        progreso.Quinto = false;
        progreso.Cuarto = false;
        progreso.Final = false;
        
        progreso.ubicacionX = 0;

        progreso.DestruirHotel = false;
        progreso.DestruirCafeteria = false;
        progreso.DestruirRestaurant = false;

        progreso.HotelGanancia = 0;
        progreso.HotelDineroInv = 0;
        progreso.HotelPorcentaje = 0;
        progreso.HotelEstado = "";
        progreso.HotelPorcentajeNegocio = 0;

        progreso.CafeteriaGanancia = 0;
        progreso.CafeteriaDineroInv = 0;
        progreso.CafeteriaPorcentaje = 0;
        progreso.CafeteriaEstado = "";
        progreso.CafeteriaPorcentajeNegocio = 0;

        progreso.RestauranteGanancia = 0;
        progreso.RestauranteDineroInv = 0;
        progreso.RestaurantePorcentaje = 0;
        progreso.RestauranteEstado = "";
        progreso.RestaurantePorcentajeNegocio = 0;

        Guardar();*/
    }
    void Guardar()
    {
        
        //Archivo = JsonUtility.ToJson(progreso);
        PlayerPrefs.SetString("x", Archivo);
        
    }
}
