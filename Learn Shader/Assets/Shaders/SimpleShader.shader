Shader "Unity Shaders Book/Chapter 5/SimpleShader" {
	Properties{
		_Color("Color Tint", Color) = (1.0,1.0,1.0,1.0)
	}

	SubShader{

		Pass {

			CGPROGRAM

#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"

			fixed4 _Color;

			struct v2f {
				float4 pos : SV_POSITION;
				fixed3 color : COLOR0;
			};

			v2f vert(appdata_full v){
				v2f o;

				//o.pos = v.vertex;
				o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
				float4 mvnormal = mul(UNITY_MATRIX_MV, v.normal);
				//o.color = mvnormal * 0.5 + fixed3(0.5, 0.5, 0.5);
				o.color = v.normal * 0.5 + fixed3(0.5, 0.5, 0.5);
				return o;
			}

			fixed4 frag(v2f i) : SV_Target{
				return fixed4(i.color, 1.0);
			}

			ENDCG
		}

	}

}