using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class ControladorScenas : MonoBehaviour
{
    public string Archivo;
    public string nombre;

    private void Start()
    {
        
    }
    public void CambiarEscena(string nombre)
    {
        string nameScena = gameObject.name;
        Debug.Log(nameScena);
        if (nameScena == "Restaurante")
            SceneManager.LoadScene("SampleScene");
        else
        {
            SceneManager.LoadScene(nombre);
            PlayerPrefs.SetString("NombreEscena", nameScena);
        }
        SceneManager.LoadScene(nombre);
    }
    private void OnTriggerEnter2D(Collider2D other)
    {
        if(other.gameObject.CompareTag("Player"))
            CambiarEscena("Restaurante");
    }

}
