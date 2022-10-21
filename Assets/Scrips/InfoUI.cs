using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InfoUI : MonoBehaviour
{
    [SerializeField]
    public Datos progreso;
    public string Archivo;
    public GameObject Canvas; 

    public Text PorcentajeCafeteria;
    public Text PorcentajeRestaurante;
    public Text PorcentajeAlgo;

    public Text DineroInvCafeteria;
    public Text DineroInvRestaurante;
    public Text DineroInvAlgo;

    public Text GananciasCafeteria;
    public Text GananciasRestaurante;
    public Text GananciasAlgo;

    public Text DineroInvTotal;
    public Text GananciaTotales;
    public Text Mes;

    private bool estadoUI;
    //public Text FinalPuntaje;

    private string[] meses = {"Enero","Febrero","Marzo", "Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre",
    "Noviembre","Diciembre"};
    // Start is called before the first frame update
    void Start()
    {
        Canvas.SetActive(false);
        estadoUI = false;

        PorcentajeCafeteria.text = "priemro";
        DineroInvCafeteria.text = "segundo";
        GananciasCafeteria.text = "tercero";



        /*
        Archivo = PlayerPrefs.GetString("x");
        if (!string.IsNullOrEmpty(Archivo))
        {
            progreso = JsonUtility.FromJson<Datos>(Archivo);
        }
        PorcentajeCafeteria.text = progreso.CafeteriaPorcentaje.ToString() + " %";
        PorcentajeRestaurante.text = progreso.RestaurantePorcentaje.ToString() + " %";
        PorcentajeAlgo.text = progreso.HotelPorcentaje.ToString() + " %";

        DineroInvCafeteria.text = progreso.CafeteriaDineroInv.ToString();
        DineroInvRestaurante.text = progreso.RestauranteDineroInv.ToString();
        DineroInvAlgo.text = progreso.HotelDineroInv.ToString();

        float caf = progreso.MesNumero * ((progreso.CafeteriaPorcentaje * 15000)/100);
        float Res = progreso.MesNumero * ((progreso.RestaurantePorcentaje * 15000) / 100);
        float Hot = progreso.MesNumero * ((progreso.HotelPorcentaje * 15000) / 100);

        GananciasCafeteria.text = caf.ToString();
        GananciasRestaurante.text = Res.ToString();
        GananciasAlgo.text = Hot.ToString();

        int x = int.Parse(GananciasRestaurante.text);
        Debug.Log(x.ToString());
        DineroInvTotal.text = (progreso.CafeteriaDineroInv + progreso.HotelDineroInv + progreso.RestauranteDineroInv).ToString();
        GananciaTotales.text = ((Hot + Res + caf)).ToString();
        Mes.text = meses[progreso.MesNumero - 1];
        */
        // FinalPuntaje.text = ((Hot + Res + caf)).ToString();
    }
    private void Update()
    {
        if (Input.GetKey(KeyCode.U))
        {
            Ocultar();
        }
    }
    public void Ocultar()
    {
        estadoUI = !estadoUI;
        Canvas.SetActive(estadoUI);
    }
}
