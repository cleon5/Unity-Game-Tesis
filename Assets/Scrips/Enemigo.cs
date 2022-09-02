using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemigo : MonoBehaviour
{
    private Animator animator;
    public GameObject target;
    private CircleCollider2D Ataque;

    float velocidad = 5f;
    bool atacando = false;
    float rango_ataque = 4f;
    float distancia = 15f;
    float diferencia;
    void Start()
    {
        animator = GetComponent<Animator>();
        Ataque = GetComponent<CircleCollider2D>();
        Ataque.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        diferencia = Mathf.Abs(transform.position.x - target.transform.position.x);
        if (diferencia > distancia)
        {
            print("no se deberia mover");
        }

        else if (diferencia > rango_ataque && !atacando)
        {
            animator.SetBool("Movimiento", true);
            if (transform.position.x < target.transform.position.x)
            {
                transform.Translate(Vector3.right * velocidad * Time.deltaTime);
                transform.rotation = Quaternion.Euler(0, 0, 0);
            }
            else
            {

                transform.Translate(Vector3.right * velocidad * Time.deltaTime);
                transform.rotation = Quaternion.Euler(0, 180, 0);
            }
        }
        else
        {
            animator.SetBool("Movimiento", false);
            if (!atacando)
            {
                animator.SetTrigger("Ataque");
                Ataque.enabled = true;
            }
        }
    }
}
