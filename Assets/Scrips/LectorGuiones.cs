 using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using Ink.Runtime;

public class LectorGuiones : MonoBehaviour
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

    public GameObject canva;

    void Start()
    {
        
        LoadStory();
    }


    void Update()
    {
        if (Input.GetKeyDown(KeyCode.P)||Input.GetMouseButtonDown(0))
        {
            DisplayNextLine();
        }
    }
    
    void LoadStory()
    {
        _StoryScript = new Story(_InkJsonFile.text);


        DisplayNextLine();

    
    }
    public void DisplayNextLine()
    {
        if (_StoryScript.canContinue)
        {

            string text = _StoryScript.Continue(); 
            text = text?.Trim(); 
            dialogueBox.text = text; 
        }
        else
        {
            dialogueBox.text = "Finalizado";
            canva.SetActive(false);
            //DisplayChoices();
        }
    }
    public void DisplayChoices()
    {
        if (choiceHolder.GetComponentsInChildren<Button>().Length > 0)
            return;
        for(int i =0; i<_StoryScript.currentChoices.Count; i++)
        {
            var choise = _StoryScript.currentChoices[i];
            var button = CreateChoisenButton(choise.text);
            
            button.onClick.AddListener(() => OnclickChoiseButton(choise));
        }
    }
    Button CreateChoisenButton (string text)
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
        if (choiceHolder!=null)
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

    public void ChangeCharacterIcon(string charName)
    {
        //var characterIconSprite = Resources.Load("CharacterIcons/" + charName) as Sprite;
        characterIcon.sprite = Resources.Load<Sprite>("CharacterIcons/" + charName);
    }
}

