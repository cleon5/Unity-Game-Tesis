using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovimientoPersonaje : MonoBehaviour
{
    float velocidad = 18f;
    bool saltando = false;
    float saltoPotencia = 500f;
    float vida = 10;

    Animator animator;
    Rigidbody2D rb2d;
    Guardado guardado = new Guardado();
    
    CircleCollider2D circleColider;

    Vector3 escalaPositiva;
    Vector3 escalaNegativa;

    public ControladorUI Vida;

    private float posX;
    private float posY;

    bool espera;
    void Start()
    {
        posX = PlayerPrefs.GetFloat("PosX");
        posY = PlayerPrefs.GetFloat("PosY");

        print(posX);
        if(posX == 0)
        {
            //-193.6584, -2.4789
            transform.position = new Vector2(-193.6584f, -2.4789f);
        }
        else
        {
            transform.position = new Vector2(posX, posY);
        }
        animator = GetComponent<Animator>();
        rb2d = GetComponent<Rigidbody2D>();
        circleColider = GetComponent<CircleCollider2D>();

        //guardado.load();
        escalaPositiva = transform.localScale;
        escalaNegativa = escalaPositiva;
        escalaNegativa.x *= -1;
        circleColider.enabled = false;   
    }

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
            RetrocesoAtaque(250f);
            StartCoroutine(TiempoEspera(.7f));
        }
        if (Input.GetKey(KeyCode.N) && !espera)
        {
            animator.SetTrigger("Ataque2");
            RetrocesoAtaque(250f);
            StartCoroutine(TiempoEspera(1f));
        }
        if (Input.GetKey(KeyCode.J) && !espera)
        {
            animator.SetTrigger("Ataque3");
            RetrocesoAtaque(255f);
            StartCoroutine(TiempoEspera(1f));
        }
        if (Input.GetKey(KeyCode.K) && !espera)
        {
            animator.SetTrigger("AtaqueR");
            RetrocesoAtaque(-250f);
            StartCoroutine(TiempoEspera(1f));
        }
    }
    IEnumerator TiempoEspera(float Tiempo)
    {
        espera = true;
        circleColider.enabled = true;
        yield return new WaitForSeconds(Tiempo);
        espera = false;
        circleColider.enabled = false;
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
        if (other.gameObject.CompareTag("Enemigo")){
            Vida.QuitarVida(1);
            vida = PlayerPrefs.GetInt("Vida");
            RetrocesoAtaque(20f);
            if (vida <= 0)
            {
                animator.SetBool("Muerte", true);
                Destroy(gameObject);
            }
        }
    }
    private void OnTriggerEnter2D(Collider2D collision)
    {
        /*
        if (collision.gameObject.CompareTag("Player"))
        {
            RetrocesoAtaque(20f);
            vida--;
            if (vida <= 0)
            {
                animator.SetBool("Muerte", true);
                Destroy(gameObject);
            }
        }*/
    }
}
