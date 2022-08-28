using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Teletransporte : MonoBehaviour
{
    public GameObject Player;
    public GameObject Portal2;
    void Start()
    {
        
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
        yield return new WaitForSeconds(0.05f);
        Player.transform.position = new Vector2(Portal2.transform.position.x + 3, Portal2.transform.position.y);
    }
}
