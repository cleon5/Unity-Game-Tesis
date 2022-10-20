using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovCamara : MonoBehaviour
{
    private Vector3 posicion;
    private Vector3 pos2;
    public GameObject personaje;
    private float desplazamientoY = .5f;
    
    // Start is called before the first frame update
    void Start()
    {
        transform.position = new Vector3(personaje.transform.position.x, personaje.transform.position.y, -10);
        
        posicion = transform.position - personaje.transform.position;
        pos2 = transform.position - personaje.transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        pos2.x = personaje.transform.position.x + posicion.x;
        pos2.y = personaje.transform.position.y + posicion.y - desplazamientoY;
        transform.position = pos2;
    }
}
