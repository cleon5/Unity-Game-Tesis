using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class Guardado : MonoBehaviour
{
    private string name = "Player.data";
    [SerializeField]
    private Datos data = new Datos();

    [ContextMenu("save")]
    [ContextMenu("load")]
    public void save()
    {
        string dataJson = JsonUtility.ToJson(data);
        print(dataJson);
        string path = Path.Combine(Application.persistentDataPath, name);
        File.WriteAllText(path, dataJson);
        print(path);
    }
    public void load()
    {
        string path = Path.Combine(Application.persistentDataPath, name);
        string dataJson = File.ReadAllText(path);
        Datos DatosCargados = JsonUtility.FromJson<Datos>(dataJson);

        //File.WriteAllText(path, dataJson);
        print(DatosCargados);
    }
}
