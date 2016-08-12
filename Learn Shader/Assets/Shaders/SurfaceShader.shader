// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "Custom/SurfaceShader" {

	/*Properties{
		_MainTex("Main Tex", Color) = (1, 1, 1, 1)
	}*/

	SubShader {
		pass{
			CGPROGRAM

#pragma vertex vert
#pragma fragment frag

				//#include "Custom/Custom.cginc"
#include "UnityCG.cginc"


			struct v2f{
				float4 pos : POSITION;
				fixed4 color : COLOR;
			};

			v2f vert(appdata_base v)
			{
				v2f o;
				o.pos = mul(UNITY_MATRIX_MVP, v.vertex);

				float x = o.pos.x / o.pos.w;
				if (x <= -1 || x >= 1)
				{
					o.color = fixed4(1, 0, 0, 1);
				}
				else
				{
					o.color = fixed4(x / 2 + 0.5, x / 2 + 0.5, x / 2 + 0.5, 1);
				}

								
				return o;
			}

			float4 frag(v2f IN):COLOR
			{
				return IN.color;
			}



			ENDCG
		}
	}

}
