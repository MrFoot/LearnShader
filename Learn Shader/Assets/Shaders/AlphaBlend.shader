﻿
Shader "Custom/AlphaBlend"
{
	Properties
	{
		_Color("Color", Color) = (1, 1, 1, 1)
		_MainTex("Main Tex", 2D) = "white"{}
		_Specular("Specular", Color) = (1, 1, 1, 1)
		_Gloss("Gloss", Range(8, 256)) = 20
		_AlphaScale("Alpha Scale",Range(0,1)) = 0.5
	}
	SubShader
		{
			Tags{ "Queue" = "Transparent" "IgnorProjector" = "True" "RenderType" = "Transparent" }

			Pass
			{
				Tags{ "LightMode" = "ForwardBase" }

				
				ZWrite On
				//Cull Off
				Blend  SrcAlpha OneMinusSrcAlpha

				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag

				#include "UnityCG.cginc"
				#include "Lighting.cginc"


				fixed4 _Color;
				sampler _MainTex;
				float4 _MainTex_ST;
				fixed _AlphaScale;
				fixed4 _Specular;
				float _Gloss;

				struct appdata
				{
					float4 vertex : POSITION;
					float3 normal : NORMAL;
					float4 texcoord : TEXCOORD0;
				};

				struct v2f
				{
					float4 vertex : SV_POSITION;
					float3 worldNormal : TEXCOORD0;
					float3 worldPos : TEXCOORD1;
					float2 uv : TEXCOORD2;
				};

				v2f vert(appdata v)
				{
					v2f o;

					o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
					o.worldNormal = UnityObjectToWorldNormal(v.normal);
					o.worldPos = mul(unity_ObjectToWorld, v.vertex);
					o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
					return o;
				}

				fixed4 frag(v2f i) : SV_Target
				{
					fixed3 worldNormal = normalize(i.worldNormal);

					fixed4 albedo = tex2D(_MainTex, i.uv);

					//clip
					//clip(albedo.a - _Cutoff);
					//discard;


					//ambient
					fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz * albedo;

					fixed3 worldLight = normalize(_WorldSpaceLightPos0.xyz);

					//diffuse
					fixed3 diffuse = _LightColor0.rgb * albedo * ((dot(normalize(worldNormal), worldLight)) * 0.5 + 0.5);

					fixed3 viewDir = normalize(_WorldSpaceCameraPos.xyz - i.worldPos.xyz);

					fixed3 halfDir = normalize(viewDir + worldLight);

					//specular
					fixed3 specular = _LightColor0.rgb * _Specular.rgb * pow(saturate(dot(worldNormal, halfDir)), _Gloss);

					fixed3 color = diffuse + ambient + specular;

					return fixed4(color, albedo.a * _AlphaScale);
				}
					ENDCG
			}

		}
		Fallback "Transparent/VertexLit"
}
