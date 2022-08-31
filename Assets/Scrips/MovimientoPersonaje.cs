using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovimientoPersonaje : MonoBehaviour
{
    float velocidad = 8f;
    bool saltando = false;
    float saltoPotencia = 550f;

    Animator animator;
    Rigidbody2D rb2d;
    
    CircleCollider2D circleColider;

    Vector3 escalaPositiva;
    Vector3 escalaNegativa;

    bool espera;
    void Start()
    {
        animator = GetComponent<Animator>();
        rb2d = GetComponent<Rigidbody2D>();
        circleColider = GetComponent<CircleCollider2D>();


       
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
            animator.SetBool("Salto", true);
            rb2d.AddForce(Vector2.up * saltoPotencia);
            saltando = true;
        }
        if(Input.GetKey(KeyCode.S) && saltando)
        {
            rb2d.AddForce(Vector2.down * 20);
        }

        //Ataques
        if (Input.GetKey(KeyCode.M) && !espera)
        {
            animator.SetTrigger("Ataque");
            RetrocesoAtaque(120f);
            StartCoroutine(TiempoEspera(.7f));
        }
        if (Input.GetKey(KeyCode.N) && !espera)
        {
            animator.SetTrigger("Ataque2");
            RetrocesoAtaque(130f);
            StartCoroutine(TiempoEspera(1f));
        }
        if (Input.GetKey(KeyCode.J) && !espera)
        {
            animator.SetTrigger("Ataque3");
            RetrocesoAtaque(155f);
            StartCoroutine(TiempoEspera(1f));
        }
        if (Input.GetKey(KeyCode.K) && !espera)
        {
            animator.SetTrigger("AtaqueR");
            RetrocesoAtaque(-150f);
            StartCoroutine(TiempoEspera(1f));
        }
    }
    IEnumerator TiempoEspera(float Tiempo)
    {
        espera = true;
        yield return new WaitForSeconds(Tiempo);
        espera = false;
    }
    void RetrocesoAtaque(float potencia) {
        if (transform.localScale.x < 0)
            rb2d.AddForce(Vector2.right * potencia);
        else
            rb2d.AddForce(Vector2.left * potencia);
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
