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
    float rango_ataque = 5f;
    void Start()
    {
        animator = GetComponent<Animator>();
        Ataque = GetComponent<CircleCollider2D>();
        Ataque.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (Mathf.Abs(transform.position.x - target.transform.position.x) > rango_ataque && !atacando)
        {
            if (transform.position.x < target.transform.position.x)
            {
                transform.Translate(Vector3.right * velocidad * Time.deltaTime);
                transform.rotation = Quaternion.Euler(0, 0, 0);
                animator.SetTrigger("Movimiento");
            }
            else
            {
                animator.SetTrigger("Movimiento");
                transform.Translate(Vector3.right * velocidad * Time.deltaTime);
                transform.rotation = Quaternion.Euler(0, 180, 0);
            }
        }
        else
        {
            if (!atacando)
            {
                animator.SetTrigger("Ataque");
                Ataque.enabled = true;
            }
        }
    }
}
