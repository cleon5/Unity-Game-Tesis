using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using Ink.Runtime;

public class Lector2 : MonoBehaviour
{
    [SerializeField]
    private TextAsset _InkJsonFile;

    private Story _StoryScript;

    public TMP_Text dialogueBox;
    public TMP_Text nameTag;

    public Image characterIcon;
    [SerializeField]
    private GridLayoutGroup choiceHolder;
    [SerializeField]
    private Button choiseBasePrefac;


    private int Porcentaje;
    public int contadorPorcentaje;
    private int Costo;
    private int PorcentajeNegocio;

    public GameObject Principal;
    public GameObject Secundario;

    private SpriteRenderer Psprite;
    private SpriteRenderer Ssprite;


    public Guardado guardar;
    public string Archivo;

    void Start()
    {
        Psprite =  Principal.GetComponent<SpriteRenderer>();
        Ssprite = Secundario.GetComponent<SpriteRenderer>();
        Psprite.sprite = Resources.Load<Sprite>("Personajes/Oriana");


        Archivo = PlayerPrefs.GetString("NombreEscena");
        print(Archivo);

        _InkJsonFile = Resources.Load<TextAsset>("Ink/Cafeteria");
        LoadStory();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButtonDown(0))
        {
            DisplayNextLine();
        }
    }
    void LoadStory()
    {
        _StoryScript = new Story(_InkJsonFile.text);

        //Controlador de variables de Ink
        _StoryScript.BindExternalFunction("Name", (string charName) => ChangeName(charName));
        _StoryScript.BindExternalFunction("CharacterIcon", (string charName) => ChangeCharacterIcon(charName));
        _StoryScript.BindExternalFunction("PorcentajeGanancia", (int porcentaje) => { Porcentaje = porcentaje; });
        _StoryScript.BindExternalFunction("CostoInvercion", (int costo) => { Costo = costo; print(Costo); });
        _StoryScript.BindExternalFunction("PorcentajeNegocio", (int PNegocio) => { PorcentajeNegocio = PNegocio; print(PorcentajeNegocio); });
        _StoryScript.BindExternalFunction("Aceptado", (bool aceptado) => CalculoFinal(aceptado));
        DisplayNextLine();

    }
    public void CalculoFinal(bool Aceptado)
    {
        if (Aceptado)
        {
            //int randon = Random.Range(0, 20);
            //int porcentajeFinal = Porcentaje + contadorPorcentaje + randon;
            int porcentajeFinal = Porcentaje;
            // print(porcentajeFinal + "  " + randon);
            /*
            switch (nombreNivel)
            {
                //Historia Cafeteria
                case "Cafeteria":
                    progreso.DestruirCafeteria = true;

                    progreso.CafeteriaPorcentaje = porcentajeFinal;
                    progreso.CafeteriaDineroInv = Costo;
                    progreso.CafeteriaPorcentajeNegocio = PorcentajeNegocio;
                    Guardar();
                    break;
                //Historia Restaurante
                case "Restaurante":
                    progreso.DestruirRestaurant = true;

                    progreso.RestaurantePorcentaje = porcentajeFinal;
                    progreso.RestauranteDineroInv = Costo;
                    progreso.RestaurantePorcentajeNegocio = PorcentajeNegocio;
                    break;
                //Historia Hotel
                case "Hotel":
                    progreso.DestruirHotel = true;

                    progreso.HotelPorcentaje = porcentajeFinal;
                    progreso.HotelDineroInv = Costo;
                    progreso.HotelPorcentajeNegocio = PorcentajeNegocio;
                    break;
            }*/
            //Guardar();
        }

    }
    public void DisplayNextLine()
    {
        if (_StoryScript.canContinue)
        {
            //Guardar
            //Guardar();

            string text = _StoryScript.Continue();
            text = text?.Trim();
            dialogueBox.text = text;
        }
        else if (_StoryScript.currentChoices.Count > 0)
        {
            DisplayChoices();
        }
        else
        {
           // Guardar();

            SceneManager.LoadScene("SampleScene");
        }
    }
    public void DisplayChoices()
    {
        if (choiceHolder.GetComponentsInChildren<Button>().Length > 0)
            return;
        for (int i = 0; i < _StoryScript.currentChoices.Count; i++)
        {
            var choise = _StoryScript.currentChoices[i];
            var button = CreateChoisenButton(choise.text);

            button.onClick.AddListener(() => OnclickChoiseButton(choise));
        }
    }
    Button CreateChoisenButton(string text)
    {
        var choiseButton = Instantiate(choiseBasePrefac);
        choiseButton.transform.SetParent(choiceHolder.transform, false);

        var buttonText = choiseButton.GetComponentInChildren<TMP_Text>();
        buttonText.text = text;
        return choiseButton;
    }
    void OnclickChoiseButton(Choice choise)
    {
        _StoryScript.ChooseChoiceIndex(choise.index);
        RefreshChoiseView();
        DisplayNextLine();
    }
    void RefreshChoiseView()
    {
        if (choiceHolder != null)
        {
            foreach (var button in choiceHolder.GetComponentsInChildren<Button>())
            {
                Destroy(button.gameObject);
            }
        }
    }
    public void ChangeName(string name)
    {
        string SpeakerName = name;
        nameTag.text = SpeakerName;
    }

    public void NumeroPrueba(int num)
    {
        int SpeakerName = num;
        print(num);
    }

    public void ChangeCharacterIcon(string charName)
    {
        //var characterIconSprite = Resources.Load("CharacterIcons/" + charName) as Sprite;
        characterIcon.sprite = Resources.Load<Sprite>("CharacterIcons/" + charName);
    }
    void Guardar()
    {
        //Archivo = ;
        //PlayerPrefs.SetString("00", JsonUtility.ToJson(progreso));
    }
}
