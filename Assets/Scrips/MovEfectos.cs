using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovEfectos : MonoBehaviour
{
    Animator animator;
    public GameObject jugador;
    Vector3 posicion;
    void Start()
    {
        animator = GetComponent<Animator>();
        
    }

    // Update is called once per frame
    void Update()
    {
        posicion = jugador.transform.position;
        posicion.z = 1;
        transform.position = posicion;
        if (Input.GetKey(KeyCode.M))
        {

            animator.SetTrigger("Ataque");

        }

        if (Input.GetKey(KeyCode.L))
        {

            animator.SetTrigger("Ataque5");

        }
        if (Input.GetKey(KeyCode.K))
        {

            animator.SetTrigger("Ataque4");

        }
    }
}
