Shader "Custom/SurfaceShader" {

	SubShader {
		pass{
			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag

			void vert(in float2 objPos:POSITION, out float4 col : COLOR, out float4 pos : POSITION)
			{
				pos = float4(objPos, 0, 1);

				col = pos;
			}

			void frag(inout float4 col:COLOR)
			{

			}

			ENDCG
		}
	}

}
