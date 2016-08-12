using UnityEngine;
using System.Collections;

public class MVPTransform : MonoBehaviour {

	// Use this for initialization
    Renderer rend;
	void Start () {
        rend = GetComponent<Renderer>();
	}
	
	// Update is called once per frame
	void Update () {

        Matrix4x4 rm = new Matrix4x4();
        rm[0, 0] = Mathf.Cos(Time.realtimeSinceStartup);
        rm[0, 2] = Mathf.Sin(Time.realtimeSinceStartup);
        rm[1, 1] = 1;
        rm[2, 0] = -Mathf.Sin(Time.realtimeSinceStartup);
        rm[2, 2] = Mathf.Cos(Time.realtimeSinceStartup);
        rm[3, 3] = 1;

        Matrix4x4 mvp = Camera.main.projectionMatrix * Camera.main.worldToCameraMatrix * transform.localToWorldMatrix;
        mvp *= rm;
        rend.material.SetMatrix("mvp", mvp);
	}
}
