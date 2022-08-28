using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovimientoPersonaje : MonoBehaviour
{
    float velocidad = 8f;
    bool saltando = false;
    float saltoPotencia = 500f;
    Animator animator;
    Rigidbody2D rb2d;

    Vector3 escalaPositiva;
    Vector3 escalaNegativa;
    void Start()
    {
        animator = GetComponent<Animator>();
        rb2d = GetComponent<Rigidbody2D>();

        escalaPositiva = transform.localScale;
        escalaNegativa = escalaPositiva;
        escalaNegativa.x *= -1;


    }

    // Update is called once per frame
    void Update()
    {
        //Movimiento Horizontal 
        if (Input.GetKey(KeyCode.A))
        {
            animator.SetBool("Movimiento", true);
            transform.position += (Vector3.left * velocidad * Time.deltaTime);
            transform.localScale = escalaNegativa;

        }
        else if (Input.GetKey(KeyCode.D))
        {
            animator.SetBool("Movimiento", true);
            transform.position += (Vector3.right * velocidad * Time.deltaTime);
            transform.localScale = escalaPositiva;
        }
        else
        {
            animator.SetBool("Movimiento", false);
        }

        //Movimiento vertical
        if (Input.GetKey(KeyCode.Space)&& !saltando)
        {
            
            animator.SetTrigger("Salto");
            rb2d.AddForce(Vector2.up * saltoPotencia);
            saltando = true;
        }
        else
        {
            
        }
        //Ataques
        if (Input.GetKey(KeyCode.M))
        {

            animator.SetTrigger("Ataque");

        }
        if (Input.GetKey(KeyCode.N))
        {

            animator.SetTrigger("Ataque2");

        }
        if (Input.GetKey(KeyCode.J))
        {

            animator.SetTrigger("Ataque3");

        }
        if (Input.GetKey(KeyCode.K))
        {

            animator.SetTrigger("Ataque4");

        }
        if (Input.GetKey(KeyCode.L))
        {

            animator.SetTrigger("Ataque5");

        }
        

    }
    private void OnCollisionEnter2D(Collision2D other)
    {
        if (other.gameObject.CompareTag("Suelo"))
        {
            saltando = false;
            animator.SetBool("Salto", false);
        }
    }
}
