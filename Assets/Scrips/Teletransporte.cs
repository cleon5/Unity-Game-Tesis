using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Teletransporte : MonoBehaviour
{
    public GameObject Player;
    public GameObject Portal2;

    private float scale;
    void Start()
    {
        scale = Portal2.transform.localScale.x;
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if(collision.gameObject.tag == "Player")
        {
            StartCoroutine(transport());
        }
    }
    IEnumerator transport()
    {
        yield return new WaitForSeconds(1.0f);
        if(scale>0)
            Player.transform.position = new Vector2(Portal2.transform.position.x + 3, Portal2.transform.position.y);
        else
            Player.transform.position = new Vector2(Portal2.transform.position.x - 3, Portal2.transform.position.y);
    }
}
