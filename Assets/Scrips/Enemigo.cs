using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemigo : MonoBehaviour
{
    private Animator animator;
    public GameObject target;
    private CircleCollider2D Ataque;
    Rigidbody2D rb2d;

    float velocidad = 5f;
    bool atacando = false;
    float rango_ataque = 4f;
    float distancia = 15f;
    float diferencia;
    public ControladorUI Puntaje;


    public int vida = 3;
    void Start()
    {
        animator = GetComponent<Animator>();
        Ataque = GetComponent<CircleCollider2D>();
        rb2d = GetComponent<Rigidbody2D>();

        Ataque.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        diferencia = Mathf.Abs(transform.position.x - target.transform.position.x);
        if (diferencia > distancia)
        {
            //print("no se deberia mover");
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
    void RetrocesoAtaque(float potencia)
    {
        if (transform.localScale.x < 0)
            rb2d.AddForce(Vector2.right * potencia);
        else
            rb2d.AddForce(Vector2.left * potencia);
    }
    private void OnCollisionEnter2D(Collision2D collision)
    {
        if(collision.gameObject.CompareTag("Player") )
        {
            //RetrocesoAtaque(120f);
            //vida--;
            if (vida <= 0)
            {
                Destroy(gameObject);
            }
        }
    }
    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("Player") )
        {
            print("triger");
            RetrocesoAtaque(120f);
            vida--;
            if (vida <= 0)
            {
                Destroy(gameObject);
                Puntaje.AgregarPuntaje(300);
            }
        }
    }
    
}
