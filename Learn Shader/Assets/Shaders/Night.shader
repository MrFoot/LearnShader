Shader "Outfit7/Night" {
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="Opaque" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="Opaque" }
  GpuProgramID 22232
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = (vec4(0.32, 0.34, 0.45, 1.0) * tex_1);
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OpaqueStencil" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OpaqueStencil" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 121344
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = (vec4(0.32, 0.34, 0.45, 1.0) * tex_1);
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry+10" "RenderType"="OpaqueStencilTest" }
 Pass {
  Tags { "QUEUE"="Geometry+10" "RenderType"="OpaqueStencilTest" }
  Stencil {
   Ref 1
   Comp NotEqual
  }
  GpuProgramID 189014
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = (vec4(0.32, 0.34, 0.45, 1.0) * tex_1);
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="UnlitWithStencil" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="UnlitWithStencil" }
  Stencil {
   Ref [_StencilReference]
   ReadMask [_StencilReadMask]
   WriteMask [_StencilWriteMask]
   Comp [_StencilComparison]
   Pass [_StencilPass]
   Fail [_StencilFail]
   ZFail [_StencilZFail]
  }
  GpuProgramID 235473
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = (vec4(0.32, 0.34, 0.45, 1.0) * tex_1);
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OpaqueZOff" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="OpaqueZOff" }
  ZWrite Off
  GpuProgramID 306390
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = (vec4(0.32, 0.34, 0.45, 1.0) * tex_1);
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="UnlitCullOff" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="UnlitCullOff" }
  Cull Off
  GpuProgramID 363780
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = (vec4(0.32, 0.34, 0.45, 1.0) * tex_1);
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="AlphaTest" "RenderType"="ShadowMultiply" }
 UsePass "Outfit7/Furniture/ShadowMultiply/BASE"
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="UnlitWCSZWO" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="UnlitWCSZWO" }
  ZWrite Off
  GpuProgramID 436468
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp mat4 glstate_matrix_mvp;
uniform mediump vec4 _MainTex_ST;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec2 xlv_TEXCOORD1;
void main ()
{
  lowp vec2 tmpvar_1;
  tmpvar_1 = ((_glesMultiTexCoord0.xy + _MainTex_ST.zw) * _MainTex_ST.xy);
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = _glesMultiTexCoord1.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _ShadowTex;
uniform lowp vec4 _ShadowColor;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec2 xlv_TEXCOORD1;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = ((vec4(0.32, 0.34, 0.45, 1.0) * tex_1) * mix (_ShadowColor, vec4(1.0, 1.0, 1.0, 1.0), texture2D (_ShadowTex, xlv_TEXCOORD1)));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="UnlitWithColoredSandTO" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="UnlitWithColoredSandTO" }
  GpuProgramID 522466
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp mat4 glstate_matrix_mvp;
uniform mediump vec4 _MainTex_ST;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec2 xlv_TEXCOORD1;
void main ()
{
  lowp vec2 tmpvar_1;
  tmpvar_1 = ((_glesMultiTexCoord0.xy + _MainTex_ST.zw) * _MainTex_ST.xy);
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = _glesMultiTexCoord1.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _ShadowTex;
uniform lowp vec4 _ShadowColor;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec2 xlv_TEXCOORD1;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = ((vec4(0.32, 0.34, 0.45, 1.0) * tex_1) * mix (_ShadowColor, vec4(1.0, 1.0, 1.0, 1.0), texture2D (_ShadowTex, xlv_TEXCOORD1)));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="UnlitWithColoredSandTOStencil" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="UnlitWithColoredSandTOStencil" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 540744
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp mat4 glstate_matrix_mvp;
uniform mediump vec4 _MainTex_ST;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec2 xlv_TEXCOORD1;
void main ()
{
  lowp vec2 tmpvar_1;
  tmpvar_1 = ((_glesMultiTexCoord0.xy + _MainTex_ST.zw) * _MainTex_ST.xy);
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = _glesMultiTexCoord1.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _ShadowTex;
uniform lowp vec4 _ShadowColor;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec2 xlv_TEXCOORD1;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = ((vec4(0.32, 0.34, 0.45, 1.0) * tex_1) * mix (_ShadowColor, vec4(1.0, 1.0, 1.0, 1.0), texture2D (_ShadowTex, xlv_TEXCOORD1)));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="AlphaTest+10" "RenderType"="EyeCubemapReflection" }
 Pass {
  Tags { "QUEUE"="AlphaTest+10" "RenderType"="EyeCubemapReflection" }
  ZTest False
  ZWrite Off
  Blend One One
  GpuProgramID 653401
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform lowp vec3 _Offset;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec4 normalDir_1;
  mediump vec4 viewDir_2;
  lowp vec3 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _WorldSpaceCameraPos;
  highp vec4 tmpvar_5;
  tmpvar_5 = ((_Object2World * _glesVertex) - tmpvar_4);
  viewDir_2 = tmpvar_5;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 0.0;
  tmpvar_6.xyz = _glesNormal;
  highp vec4 tmpvar_7;
  tmpvar_7 = (tmpvar_6 * _World2Object);
  normalDir_1 = tmpvar_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = (viewDir_2.xyz - (2.0 * (
    dot (normalDir_1.xyz, viewDir_2.xyz)
   * normalDir_1.xyz)));
  tmpvar_3 = tmpvar_8;
  tmpvar_3 = (tmpvar_3 + _Offset);
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD1 = tmpvar_3;
}


#endif
#ifdef FRAGMENT
uniform lowp samplerCube _CubeMap;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1 = (textureCube (_CubeMap, xlv_TEXCOORD1) * 0.5);
  gl_FragData[0] = tmpvar_1;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="UnlitWithDirt" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="UnlitWithDirt" }
  GpuProgramID 708874
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _DirtMask;
uniform lowp vec4 _DirtColor;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = mix (texture2D (_MainTex, xlv_TEXCOORD0), _DirtColor, vec4((_DirtColor.w * texture2D (_DirtMask, xlv_TEXCOORD0).w))).xyz;
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = (vec4(0.32, 0.34, 0.45, 1.0) * tmpvar_2);
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="Head" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="Head" }
  Stencil {
   Ref 2
   Pass Replace
  }
  GpuProgramID 774267
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _MakeUpTex;
uniform sampler2D _DirtMask;
uniform lowp vec4 _DirtColor;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1 = texture2D (_MakeUpTex, xlv_TEXCOORD0);
  lowp vec3 tmpvar_2;
  tmpvar_2 = mix (mix (texture2D (_MainTex, xlv_TEXCOORD0), tmpvar_1, tmpvar_1.wwww), _DirtColor, vec4((_DirtColor.w * texture2D (_DirtMask, xlv_TEXCOORD0).w))).xyz;
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_4;
  tmpvar_4 = (vec4(0.32, 0.34, 0.45, 1.0) * tmpvar_3);
  gl_FragData[0] = tmpvar_4;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Transparent" "RenderType"="EyeLashes" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Transparent" "RenderType"="EyeLashes" }
  ZWrite Off
  Cull Front
  Blend SrcAlpha OneMinusSrcAlpha
  GpuProgramID 794990
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec4 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1.xy = _glesMultiTexCoord0.xy;
  tmpvar_1.zw = _glesMultiTexCoord1.xy;
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _MakeUpTex;
uniform sampler2D _MakeUpAlphaTex;
uniform mediump float _EyeLashAlphaFactor;
varying lowp vec4 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MakeUpTex, xlv_TEXCOORD0.xy);
  lowp vec4 tmpvar_3;
  tmpvar_3 = texture2D (_MakeUpAlphaTex, xlv_TEXCOORD0.zw);
  lowp float tmpvar_4;
  mediump float tmpvar_5;
  tmpvar_5 = clamp ((tmpvar_3.w * (1.0 + 
    (tmpvar_2.w * _EyeLashAlphaFactor)
  )), 0.0, 1.0);
  tmpvar_4 = tmpvar_5;
  lowp vec4 tmpvar_6;
  tmpvar_6 = mix (texture2D (_MainTex, xlv_TEXCOORD0.xy), tmpvar_2, tmpvar_2.wwww);
  tex_1.w = tmpvar_6.w;
  tex_1.xyz = mix (tmpvar_6.xyz, vec3(dot (tmpvar_6.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_7;
  tmpvar_7.xyz = tex_1.xyz;
  tmpvar_7.w = tmpvar_4;
  lowp vec4 tmpvar_8;
  tmpvar_8 = (vec4(0.32, 0.34, 0.45, 1.0) * tmpvar_7);
  gl_FragData[0] = tmpvar_8;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
 Pass {
  Name "BASE2"
  Tags { "QUEUE"="Transparent" "RenderType"="EyeLashes" }
  Blend SrcAlpha OneMinusSrcAlpha
  GpuProgramID 888626
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec4 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1.xy = _glesMultiTexCoord0.xy;
  tmpvar_1.zw = _glesMultiTexCoord1.xy;
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _MakeUpTex;
uniform sampler2D _MakeUpAlphaTex;
uniform mediump float _EyeLashAlphaFactor;
varying lowp vec4 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MakeUpTex, xlv_TEXCOORD0.xy);
  lowp vec4 tmpvar_3;
  tmpvar_3 = texture2D (_MakeUpAlphaTex, xlv_TEXCOORD0.zw);
  lowp float tmpvar_4;
  mediump float tmpvar_5;
  tmpvar_5 = clamp ((tmpvar_3.w * (1.0 + 
    (tmpvar_2.w * _EyeLashAlphaFactor)
  )), 0.0, 1.0);
  tmpvar_4 = tmpvar_5;
  lowp vec4 tmpvar_6;
  tmpvar_6 = mix (texture2D (_MainTex, xlv_TEXCOORD0.xy), tmpvar_2, tmpvar_2.wwww);
  tex_1.w = tmpvar_6.w;
  tex_1.xyz = mix (tmpvar_6.xyz, vec3(dot (tmpvar_6.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_7;
  tmpvar_7.xyz = tex_1.xyz;
  tmpvar_7.w = tmpvar_4;
  lowp vec4 tmpvar_8;
  tmpvar_8 = (vec4(0.32, 0.34, 0.45, 1.0) * tmpvar_7);
  gl_FragData[0] = tmpvar_8;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="ClothOverFur" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="ClothOverFur" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 950045
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _DressTex;
uniform sampler2D _Mask;
uniform sampler2D _DirtMask;
uniform lowp vec4 _DirtColor;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = mix (mix (texture2D (_MainTex, xlv_TEXCOORD0).xyz, texture2D (_DressTex, xlv_TEXCOORD0).xyz, texture2D (_Mask, xlv_TEXCOORD0).www), _DirtColor.xyz, vec3((_DirtColor.w * texture2D (_DirtMask, xlv_TEXCOORD0).w)));
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = (vec4(0.32, 0.34, 0.45, 1.0) * tmpvar_2);
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="FurOneColor" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="FurOneColor" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 1011447
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _Shine;
uniform sampler2D _ColorId;
uniform sampler2D _Alpha;
uniform sampler2D _Fur;
uniform sampler2D _DirtMask;
uniform lowp vec4 _DirtColor;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1 = texture2D (_Alpha, xlv_TEXCOORD0);
  lowp vec3 tmpvar_2;
  tmpvar_2 = mix (((
    ((texture2D (_Fur, xlv_TEXCOORD0).xyz * (1.0 - tmpvar_1.w)) + (texture2D (_Color, xlv_TEXCOORD0).xyz * tmpvar_1.w))
   * 
    mix (vec3(1.0, 1.0, 1.0), mix (vec3(1.0, 1.0, 1.0), _Color1, texture2D (_ColorId, xlv_TEXCOORD0).www), tmpvar_1.www)
  ) + texture2D (_Shine, xlv_TEXCOORD0).www), _DirtColor.xyz, vec3((_DirtColor.w * texture2D (_DirtMask, xlv_TEXCOORD0).w)));
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_4;
  tmpvar_4 = (vec4(0.32, 0.34, 0.45, 1.0) * tmpvar_3);
  gl_FragData[0] = tmpvar_4;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="FurOneColorOpt" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="FurOneColorOpt" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 1105417
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _Shine;
uniform sampler2D _XCA;
uniform sampler2D _Fur;
uniform sampler2D _DirtMask;
uniform lowp vec4 _DirtColor;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = texture2D (_XCA, xlv_TEXCOORD0).xyz;
  lowp vec3 tmpvar_2;
  tmpvar_2 = mix (((
    ((texture2D (_Fur, xlv_TEXCOORD0).xyz * (1.0 - tmpvar_1.z)) + (texture2D (_Color, xlv_TEXCOORD0).xyz * tmpvar_1.z))
   * 
    mix (vec3(1.0, 1.0, 1.0), mix (vec3(1.0, 1.0, 1.0), _Color1, tmpvar_1.yyy), tmpvar_1.zzz)
  ) + texture2D (_Shine, xlv_TEXCOORD0).www), _DirtColor.xyz, vec3((_DirtColor.w * texture2D (_DirtMask, xlv_TEXCOORD0).w)));
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_4;
  tmpvar_4 = (vec4(0.32, 0.34, 0.45, 1.0) * tmpvar_3);
  gl_FragData[0] = tmpvar_4;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="FurOneColorNoShine" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="FurOneColorNoShine" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 1142467
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _ACX;
uniform sampler2D _Fur;
uniform sampler2D _DirtMask;
uniform lowp vec4 _DirtColor;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = texture2D (_ACX, xlv_TEXCOORD0).xyz;
  lowp vec3 tmpvar_2;
  tmpvar_2 = mix (((
    (texture2D (_Fur, xlv_TEXCOORD0).xyz * (1.0 - tmpvar_1.z))
   + 
    (texture2D (_Color, xlv_TEXCOORD0).xyz * tmpvar_1.z)
  ) * mix (vec3(1.0, 1.0, 1.0), 
    mix (vec3(1.0, 1.0, 1.0), _Color1, tmpvar_1.yyy)
  , tmpvar_1.zzz)), _DirtColor.xyz, vec3((_DirtColor.w * texture2D (_DirtMask, xlv_TEXCOORD0).w)));
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_4;
  tmpvar_4 = (vec4(0.32, 0.34, 0.45, 1.0) * tmpvar_3);
  gl_FragData[0] = tmpvar_4;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="FurOne2ColorNoShine" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="FurOne2ColorNoShine" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 1243793
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color2;
uniform sampler2D _Color;
uniform sampler2D _ACX;
uniform sampler2D _Fur;
uniform sampler2D _DirtMask;
uniform lowp vec4 _DirtColor;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = texture2D (_ACX, xlv_TEXCOORD0).xyz;
  lowp vec3 tmpvar_2;
  tmpvar_2 = mix (((
    (texture2D (_Fur, xlv_TEXCOORD0).xyz * (1.0 - tmpvar_1.z))
   + 
    (texture2D (_Color, xlv_TEXCOORD0).xyz * tmpvar_1.z)
  ) * mix (vec3(1.0, 1.0, 1.0), 
    mix (vec3(1.0, 1.0, 1.0), _Color2, tmpvar_1.yyy)
  , tmpvar_1.zzz)), _DirtColor.xyz, vec3((_DirtColor.w * texture2D (_DirtMask, xlv_TEXCOORD0).w)));
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_4;
  tmpvar_4 = (vec4(0.32, 0.34, 0.45, 1.0) * tmpvar_3);
  gl_FragData[0] = tmpvar_4;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorFullAlphaFullColor" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorFullAlphaFullColor" }
  GpuProgramID 1266777
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _Shine;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = ((texture2D (_Color, xlv_TEXCOORD0).xyz * _Color1) + texture2D (_Shine, xlv_TEXCOORD0).www);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = (vec4(0.32, 0.34, 0.45, 1.0) * tmpvar_2);
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="Eyeshadow" }
 UsePass "Outfit7/Angela/Eyeshadow/BASE"
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="UnlitSolidColor" }
 UsePass "Outfit7/Common/UnlitSolidColor/BASE"
}
SubShader { 
 Tags { "QUEUE"="AlphaTest" "RenderType"="UnlitSolidColorWACullO" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="AlphaTest" "RenderType"="UnlitSolidColorWACullO" }
  ZWrite Off
  Cull Off
  Blend SrcAlpha OneMinusSrcAlpha
  GpuProgramID 1326422
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _World2Object;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp float xlv_TEXCOORD1;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _WorldSpaceCameraPos;
  highp float tmpvar_2;
  tmpvar_2 = clamp (dot (_glesNormal, normalize(
    ((_World2Object * tmpvar_1).xyz - _glesVertex.xyz)
  )), 0.0, 1.0);
  lowp float tmpvar_3;
  tmpvar_3 = pow (tmpvar_2, 0.7);
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
  xlv_TEXCOORD1 = tmpvar_3;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _Tex;
uniform lowp vec4 _Color;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tex_1;
  tex_1.w = _Color.w;
  tex_1.xyz = mix (_Color.xyz, vec3(dot (_Color.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  tex_1 = (vec4(0.32, 0.34, 0.45, 1.0) * tex_1);
  lowp vec4 tmpvar_2;
  tmpvar_2.xyz = tex_1.xyz;
  tmpvar_2.w = (texture2D (_Tex, xlv_TEXCOORD0).w * tex_1.w);
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Transparent" "RenderType"="UnlitWithAlphaTexture" }
 UsePass "Outfit7/Common/UnlitWithAlphaTexture/BASE"
}
SubShader { 
 Tags { "QUEUE"="Transparent" "RenderType"="UnlitWithAlphaTexAndOff" }
 UsePass "Outfit7/Common/UnlitWithAlphaTextureAndOffset/BASE"
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="FurnitureWhiteTransition" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="FurnitureWhiteTransition" }
  ZWrite Off
  GpuProgramID 1397733
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying mediump vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp float _WhiteFactor;
uniform sampler2D _MainTex;
varying mediump vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3 = ((vec4(0.32, 0.34, 0.45, 1.0) * tex_1) + _WhiteFactor);
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Transparent+500" "RenderType"="FurnitureUpAddQuad" }
 UsePass "Outfit7/Effects/FurnitureUpgradeBcgQuad/BASE"
}
SubShader { 
 Tags { "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="FurnitureUpStarsNormal" }
 UsePass "Outfit7/Effects/FurnitureUpgradeStarsNormal/BASE"
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="ObjectHighlight" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="ObjectHighlight" }
  GpuProgramID 1477769
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying mediump vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform mediump float _Brightness;
uniform mediump float _Pulse;
uniform sampler2D _MainTex;
varying mediump vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  lowp float greyscale_2;
  mediump vec4 main_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = texture2D (_MainTex, xlv_TEXCOORD0);
  main_3 = tmpvar_4;
  mediump float tmpvar_5;
  tmpvar_5 = dot (main_3.xyz, vec3(0.33, 0.33, 0.33));
  greyscale_2 = tmpvar_5;
  main_3.xyz = (mix (main_3.xyz, vec3(greyscale_2), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  mediump float tmpvar_6;
  tmpvar_6 = (((main_3.x + main_3.y) + main_3.z) * 0.33);
  tmpvar_1 = (main_3 + ((_Pulse * tmpvar_6) * _Brightness));
  gl_FragData[0] = tmpvar_1;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColor" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColor" }
  GpuProgramID 1572014
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _ACX;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = texture2D (_ACX, xlv_TEXCOORD0).xyz;
  lowp vec3 tmpvar_2;
  tmpvar_2 = (mix (vec3(1.0, 1.0, 1.0), mix (vec3(1.0, 1.0, 1.0), _Color1, tmpvar_1.yyy), tmpvar_1.xxx) + tmpvar_1.zzz);
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColor2NSFA" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColor2NSFA" }
  GpuProgramID 1579984
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color2;
uniform sampler2D _Color;
uniform sampler2D _ColorID;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = (texture2D (_Color, xlv_TEXCOORD0).xyz * mix (vec3(1.0, 1.0, 1.0), _Color2, texture2D (_ColorID, xlv_TEXCOORD0).www));
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorFA" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorFA" }
  GpuProgramID 1650641
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _XCS;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = texture2D (_XCS, xlv_TEXCOORD0).xyz;
  lowp vec3 tmpvar_2;
  tmpvar_2 = ((texture2D (_Color, xlv_TEXCOORD0).xyz * mix (vec3(1.0, 1.0, 1.0), _Color1, tmpvar_1.yyy)) + tmpvar_1.zzz);
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorFAStencil" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorFAStencil" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 1763018
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _XCS;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = texture2D (_XCS, xlv_TEXCOORD0).xyz;
  lowp vec3 tmpvar_2;
  tmpvar_2 = ((texture2D (_Color, xlv_TEXCOORD0).xyz * mix (vec3(1.0, 1.0, 1.0), _Color1, tmpvar_1.yyy)) + tmpvar_1.zzz);
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorFAFC" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorFAFC" }
  GpuProgramID 1806480
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _Shine;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = ((texture2D (_Color, xlv_TEXCOORD0).xyz * _Color1) + texture2D (_Shine, xlv_TEXCOORD0).www);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorFAFCStencil" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorFAFCStencil" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 1864039
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _Shine;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = ((texture2D (_Color, xlv_TEXCOORD0).xyz * _Color1) + texture2D (_Shine, xlv_TEXCOORD0).www);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Transparent" "RenderType"="OneColorFAFCT" }
 Pass {
  Tags { "QUEUE"="Transparent" "RenderType"="OneColorFAFCT" }
  ZWrite Off
  Cull Off
  Blend SrcAlpha OneMinusSrcAlpha
  GpuProgramID 1902044
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _Mask;
uniform sampler2D _Shine;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = ((texture2D (_Color, xlv_TEXCOORD0).xyz * _Color1) + texture2D (_Shine, xlv_TEXCOORD0).www);
  lowp vec4 tmpvar_2;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  tmpvar_2.w = (1.0 - texture2D (_Mask, xlv_TEXCOORD0).w);
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorFAS" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorFAS" }
  GpuProgramID 1972861
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _ColorID;
uniform sampler2D _Shine;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = ((texture2D (_Color, xlv_TEXCOORD0).xyz * mix (vec3(1.0, 1.0, 1.0), _Color1, texture2D (_ColorID, xlv_TEXCOORD0).www)) + texture2D (_Shine, xlv_TEXCOORD0).www);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorFASStencil" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorFASStencil" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 2091956
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _ColorID;
uniform sampler2D _Shine;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = ((texture2D (_Color, xlv_TEXCOORD0).xyz * mix (vec3(1.0, 1.0, 1.0), _Color1, texture2D (_ColorID, xlv_TEXCOORD0).www)) + texture2D (_Shine, xlv_TEXCOORD0).www);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry+10" "RenderType"="OneColorFASStencilTest" }
 Pass {
  Tags { "QUEUE"="Geometry+10" "RenderType"="OneColorFASStencilTest" }
  Stencil {
   Ref 1
   Comp NotEqual
  }
  GpuProgramID 2142296
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _ColorID;
uniform sampler2D _Shine;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = ((texture2D (_Color, xlv_TEXCOORD0).xyz * mix (vec3(1.0, 1.0, 1.0), _Color1, texture2D (_ColorID, xlv_TEXCOORD0).www)) + texture2D (_Shine, xlv_TEXCOORD0).www);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorNS" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorNS" }
  GpuProgramID 2209049
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _ACX;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec2 tmpvar_1;
  tmpvar_1 = texture2D (_ACX, xlv_TEXCOORD0).xy;
  lowp vec3 tmpvar_2;
  tmpvar_2 = mix (vec3(1.0, 1.0, 1.0), mix (vec3(1.0, 1.0, 1.0), _Color1, tmpvar_1.yyy), tmpvar_1.xxx);
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorNSFA" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorNSFA" }
  GpuProgramID 2274851
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _ColorID;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = (texture2D (_Color, xlv_TEXCOORD0).xyz * mix (vec3(1.0, 1.0, 1.0), _Color1, texture2D (_ColorID, xlv_TEXCOORD0).www));
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorNSFAStencil" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorNSFAStencil" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 2356145
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
uniform sampler2D _ColorID;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = (texture2D (_Color, xlv_TEXCOORD0).xyz * mix (vec3(1.0, 1.0, 1.0), _Color1, texture2D (_ColorID, xlv_TEXCOORD0).www));
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorNSFAFC" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorNSFAFC" }
  GpuProgramID 2377237
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = (texture2D (_Color, xlv_TEXCOORD0).xyz * _Color1);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorNSFAFCStencil" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorNSFAFCStencil" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 2458666
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _Color;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = (texture2D (_Color, xlv_TEXCOORD0).xyz * _Color1);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorRedAO" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorRedAO" }
  GpuProgramID 2532301
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _ACS;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = texture2D (_ACS, xlv_TEXCOORD0).xyz;
  lowp vec3 tmpvar_2;
  tmpvar_2 = ((tmpvar_1.xxx * mix (vec3(1.0, 1.0, 1.0), _Color1, tmpvar_1.yyy)) + tmpvar_1.zzz);
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorBlueAOFC" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorBlueAOFC" }
  GpuProgramID 2582700
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _XSA;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = texture2D (_XSA, xlv_TEXCOORD0).xyz;
  lowp vec3 tmpvar_2;
  tmpvar_2 = ((tmpvar_1.zzz * _Color1) + tmpvar_1.yyy);
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorBlueAOFCStencil" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorBlueAOFCStencil" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 2646095
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _XSA;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = texture2D (_XSA, xlv_TEXCOORD0).xyz;
  lowp vec3 tmpvar_2;
  tmpvar_2 = ((tmpvar_1.zzz * _Color1) + tmpvar_1.yyy);
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="OneColorSS" }
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="OneColorSS" }
  GpuProgramID 2730351
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform sampler2D _XCA;
uniform sampler2D _Shine;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = texture2D (_XCA, xlv_TEXCOORD0).xyz;
  lowp vec3 tmpvar_2;
  tmpvar_2 = (mix (vec3(1.0, 1.0, 1.0), mix (vec3(1.0, 1.0, 1.0), _Color1, tmpvar_1.yyy), tmpvar_1.zzz) + texture2D (_Shine, xlv_TEXCOORD0).www);
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (mix (tmpvar_2, vec3(dot (tmpvar_2, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  gl_FragData[0] = tmpvar_3;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "RenderType"="EyeColor" }
 Pass {
  Tags { "RenderType"="EyeColor" }
  GpuProgramID 2792751
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _NightMask;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1 = texture2D (_MainTex, xlv_TEXCOORD0);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = mix ((mix (tmpvar_1.xyz, vec3(
    dot (tmpvar_1.xyz, vec3(0.33, 0.33, 0.33))
  ), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45)), tmpvar_1.xyz, texture2D (_NightMask, xlv_TEXCOORD0).www);
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Transparent+900" "RenderType"="SleepZZZ" }
 UsePass "Outfit7/Effects/SleepZZZ/BASE"
}
SubShader { 
 Tags { "QUEUE"="Transparent" "RenderType"="GlassesSunGradient" }
 Pass {
  Tags { "QUEUE"="Transparent" "RenderType"="GlassesSunGradient" }
  ZWrite Off
  Blend SrcAlpha OneMinusSrcAlpha
  GpuProgramID 2851982
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform lowp float _Opacity;
uniform sampler2D _Mask;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = (_Color1 - texture2D (_Mask, xlv_TEXCOORD0).w);
  lowp vec4 tmpvar_2;
  tmpvar_2.xyz = (mix (tmpvar_1, vec3(dot (tmpvar_1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  tmpvar_2.w = _Opacity;
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
 Pass {
  Tags { "QUEUE"="Transparent" "RenderType"="GlassesSunGradient" }
  Blend One One
  GpuProgramID 2933135
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec4 normalDir_1;
  mediump vec4 viewDir_2;
  lowp vec3 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _WorldSpaceCameraPos;
  highp vec4 tmpvar_5;
  tmpvar_5 = ((_Object2World * _glesVertex) - tmpvar_4);
  viewDir_2 = tmpvar_5;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 0.0;
  tmpvar_6.xyz = _glesNormal;
  highp vec4 tmpvar_7;
  tmpvar_7 = (tmpvar_6 * _World2Object);
  normalDir_1 = tmpvar_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = (viewDir_2.xyz - (2.0 * (
    dot (normalDir_1.xyz, viewDir_2.xyz)
   * normalDir_1.xyz)));
  tmpvar_3 = tmpvar_8;
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD1 = tmpvar_3;
}


#endif
#ifdef FRAGMENT
uniform lowp samplerCube _ReflectionCube;
uniform lowp float _ReflectionIntensity;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  lowp float tmpvar_1;
  tmpvar_1 = ((textureCube (_ReflectionCube, xlv_TEXCOORD1).w * _ReflectionIntensity) * 0.3);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.x = tmpvar_1;
  tmpvar_2.y = tmpvar_1;
  tmpvar_2.z = tmpvar_1;
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Transparent" "RenderType"="GlassesGradient" }
 Pass {
  Tags { "QUEUE"="Transparent" "RenderType"="GlassesGradient" }
  ZWrite Off
  Blend SrcAlpha OneMinusSrcAlpha
  GpuProgramID 2980957
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform lowp vec3 _Color1;
uniform lowp float _Opacity;
uniform sampler2D _Mask;
varying lowp vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1.xyz = (mix (_Color1, vec3(dot (_Color1, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  tmpvar_1.w = (texture2D (_Mask, xlv_TEXCOORD0).w * _Opacity);
  gl_FragData[0] = tmpvar_1;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
 Pass {
  Tags { "QUEUE"="Transparent" "RenderType"="GlassesGradient" }
  Blend One One
  GpuProgramID 3037270
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec4 normalDir_1;
  mediump vec4 viewDir_2;
  lowp vec3 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _WorldSpaceCameraPos;
  highp vec4 tmpvar_5;
  tmpvar_5 = ((_Object2World * _glesVertex) - tmpvar_4);
  viewDir_2 = tmpvar_5;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 0.0;
  tmpvar_6.xyz = _glesNormal;
  highp vec4 tmpvar_7;
  tmpvar_7 = (tmpvar_6 * _World2Object);
  normalDir_1 = tmpvar_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = (viewDir_2.xyz - (2.0 * (
    dot (normalDir_1.xyz, viewDir_2.xyz)
   * normalDir_1.xyz)));
  tmpvar_3 = tmpvar_8;
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD1 = tmpvar_3;
}


#endif
#ifdef FRAGMENT
uniform lowp samplerCube _ReflectionCube;
uniform lowp float _ReflectionIntensity;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  lowp float tmpvar_1;
  tmpvar_1 = ((textureCube (_ReflectionCube, xlv_TEXCOORD1).w * _ReflectionIntensity) * 0.3);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.x = tmpvar_1;
  tmpvar_2.y = tmpvar_1;
  tmpvar_2.z = tmpvar_1;
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Transparent" "RenderType"="GlassesSolidCR" }
 Pass {
  Tags { "QUEUE"="Transparent" "RenderType"="GlassesSolidCR" }
  ZWrite Off
  Blend SrcAlpha OneMinusSrcAlpha
  GpuProgramID 3097939
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp mat4 glstate_matrix_mvp;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 _Color1;
uniform lowp float _Opacity;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1.xyz = (mix (_Color1.xyz, vec3(dot (_Color1.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58)) * vec3(0.32, 0.34, 0.45));
  tmpvar_1.w = _Opacity;
  gl_FragData[0] = tmpvar_1;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
 Pass {
  Tags { "QUEUE"="Transparent" "RenderType"="GlassesSolidCR" }
  Blend One One
  GpuProgramID 3203086
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  lowp vec3 normalDir_1;
  lowp vec3 viewDir_2;
  highp vec3 tmpvar_3;
  tmpvar_3 = ((_Object2World * _glesVertex).xyz - _WorldSpaceCameraPos);
  viewDir_2 = tmpvar_3;
  mediump vec4 tmpvar_4;
  tmpvar_4.w = 0.0;
  tmpvar_4.xyz = _glesNormal;
  highp vec3 tmpvar_5;
  tmpvar_5 = (tmpvar_4 * _World2Object).xyz;
  normalDir_1 = tmpvar_5;
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD1 = (viewDir_2 - (2.0 * (
    dot (normalDir_1, viewDir_2)
   * normalDir_1)));
}


#endif
#ifdef FRAGMENT
uniform lowp samplerCube _ReflectionCube;
uniform lowp float _ReflectionIntensity;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  lowp float tmpvar_1;
  tmpvar_1 = ((textureCube (_ReflectionCube, xlv_TEXCOORD1).w * _ReflectionIntensity) * 0.3);
  lowp vec4 tmpvar_2;
  tmpvar_2.w = 0.0;
  tmpvar_2.x = tmpvar_1;
  tmpvar_2.y = tmpvar_1;
  tmpvar_2.z = tmpvar_1;
  gl_FragData[0] = tmpvar_2;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="UnlitWMaskedEnv" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="UnlitWMaskedEnv" }
  GpuProgramID 3219236
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec4 normalDir_1;
  mediump vec4 viewDir_2;
  lowp vec3 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _WorldSpaceCameraPos;
  highp vec4 tmpvar_5;
  tmpvar_5 = ((_Object2World * _glesVertex) - tmpvar_4);
  viewDir_2 = tmpvar_5;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 0.0;
  tmpvar_6.xyz = _glesNormal;
  highp vec4 tmpvar_7;
  tmpvar_7 = (tmpvar_6 * _World2Object);
  normalDir_1 = tmpvar_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = (viewDir_2.xyz - (2.0 * (
    dot (normalDir_1.xyz, viewDir_2.xyz)
   * normalDir_1.xyz)));
  tmpvar_3 = tmpvar_8;
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
  xlv_TEXCOORD1 = tmpvar_3;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _Mask;
uniform lowp samplerCube _EnvMap;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (textureCube (_EnvMap, xlv_TEXCOORD1).xyz * texture2D (_Mask, xlv_TEXCOORD0).w);
  lowp vec4 tmpvar_4;
  tmpvar_4 = (vec4(0.32, 0.34, 0.45, 1.0) * (tex_1 + tmpvar_3));
  gl_FragData[0] = tmpvar_4;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="UnlitWMaskedEnvStencil" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry" "RenderType"="UnlitWMaskedEnvStencil" }
  Stencil {
   Ref 1
   Pass Replace
  }
  GpuProgramID 3312210
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec4 normalDir_1;
  mediump vec4 viewDir_2;
  lowp vec3 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _WorldSpaceCameraPos;
  highp vec4 tmpvar_5;
  tmpvar_5 = ((_Object2World * _glesVertex) - tmpvar_4);
  viewDir_2 = tmpvar_5;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 0.0;
  tmpvar_6.xyz = _glesNormal;
  highp vec4 tmpvar_7;
  tmpvar_7 = (tmpvar_6 * _World2Object);
  normalDir_1 = tmpvar_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = (viewDir_2.xyz - (2.0 * (
    dot (normalDir_1.xyz, viewDir_2.xyz)
   * normalDir_1.xyz)));
  tmpvar_3 = tmpvar_8;
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
  xlv_TEXCOORD1 = tmpvar_3;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _Mask;
uniform lowp samplerCube _EnvMap;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (textureCube (_EnvMap, xlv_TEXCOORD1).xyz * texture2D (_Mask, xlv_TEXCOORD0).w);
  lowp vec4 tmpvar_4;
  tmpvar_4 = (vec4(0.32, 0.34, 0.45, 1.0) * (tex_1 + tmpvar_3));
  gl_FragData[0] = tmpvar_4;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Geometry+10" "RenderType"="UnlitWMaskedEnvStencilTest" }
 Pass {
  Name "BASE"
  Tags { "QUEUE"="Geometry+10" "RenderType"="UnlitWMaskedEnvStencilTest" }
  Stencil {
   Ref 1
   Comp NotEqual
  }
  GpuProgramID 3405362
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec4 normalDir_1;
  mediump vec4 viewDir_2;
  lowp vec3 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _WorldSpaceCameraPos;
  highp vec4 tmpvar_5;
  tmpvar_5 = ((_Object2World * _glesVertex) - tmpvar_4);
  viewDir_2 = tmpvar_5;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 0.0;
  tmpvar_6.xyz = _glesNormal;
  highp vec4 tmpvar_7;
  tmpvar_7 = (tmpvar_6 * _World2Object);
  normalDir_1 = tmpvar_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = (viewDir_2.xyz - (2.0 * (
    dot (normalDir_1.xyz, viewDir_2.xyz)
   * normalDir_1.xyz)));
  tmpvar_3 = tmpvar_8;
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
  xlv_TEXCOORD1 = tmpvar_3;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _Mask;
uniform lowp samplerCube _EnvMap;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp vec3 xlv_TEXCOORD1;
void main ()
{
  lowp vec4 tex_1;
  lowp vec4 tmpvar_2;
  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
  tex_1.w = tmpvar_2.w;
  tex_1.xyz = mix (tmpvar_2.xyz, vec3(dot (tmpvar_2.xyz, vec3(0.33, 0.33, 0.33))), vec3(0.58, 0.58, 0.58));
  lowp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = (textureCube (_EnvMap, xlv_TEXCOORD1).xyz * texture2D (_Mask, xlv_TEXCOORD0).w);
  lowp vec4 tmpvar_4;
  tmpvar_4 = (vec4(0.32, 0.34, 0.45, 1.0) * (tex_1 + tmpvar_3));
  gl_FragData[0] = tmpvar_4;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Transparent+500" "RenderType"="GlowingOrbEffect" }
 Pass {
  Tags { "QUEUE"="Transparent+500" "RenderType"="GlowingOrbEffect" }
  ZWrite Off
  Cull Off
  Blend One One
  GpuProgramID 3450469
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying mediump vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform highp vec4 _Time;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform sampler2D _MaskTex1;
uniform sampler2D _NoiseTex1;
varying mediump vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  mediump vec4 main_2;
  mediump float mask_3;
  mediump vec4 noise2_4;
  mediump vec4 noise_5;
  mediump vec4 xlat_varoutput_6;
  lowp vec4 tmpvar_7;
  highp vec2 P_8;
  P_8 = ((xlv_TEXCOORD0 * 0.7) + (vec2(0.3, -0.25) * _Time.y));
  tmpvar_7 = texture2D (_NoiseTex1, P_8);
  noise_5 = tmpvar_7;
  lowp vec4 tmpvar_9;
  highp vec2 P_10;
  P_10 = ((xlv_TEXCOORD0 * 1.6) + (vec2(-0.3, -0.2) * _Time.y));
  tmpvar_9 = texture2D (_NoiseTex1, P_10);
  noise2_4 = tmpvar_9;
  noise_5 = (noise_5 + noise2_4);
  noise_5 = (noise_5 * ((noise_5 * noise_5) - 0.17));
  lowp float tmpvar_11;
  tmpvar_11 = texture2D (_MaskTex1, xlv_TEXCOORD0).w;
  mask_3 = tmpvar_11;
  lowp vec4 tmpvar_12;
  tmpvar_12 = texture2D (_MainTex, xlv_TEXCOORD0);
  main_2 = tmpvar_12;
  xlat_varoutput_6 = ((main_2 * mask_3) + ((noise_5 * mask_3) * main_2));
  xlat_varoutput_6 = (xlat_varoutput_6 * _Color);
  tmpvar_1 = xlat_varoutput_6;
  gl_FragData[0] = tmpvar_1;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Transparent+500" "RenderType"="ParticleAdditiveRGBvertexColor" }
 Pass {
  Tags { "QUEUE"="Transparent+500" "RenderType"="ParticleAdditiveRGBvertexColor" }
  ZWrite Off
  Blend One One
  GpuProgramID 3486458
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesColor;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying lowp vec2 xlv_TEXCOORD;
varying lowp vec4 xlv_COLOR;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD = _glesMultiTexCoord0.xy;
  xlv_COLOR = _glesColor;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
varying lowp vec2 xlv_TEXCOORD;
varying lowp vec4 xlv_COLOR;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1 = (xlv_COLOR.w * texture2D (_MainTex, xlv_TEXCOORD));
  gl_FragData[0] = tmpvar_1;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Transparent+500" "RenderType"="ParticlesAdditiveAlpha" }
 Pass {
  Tags { "QUEUE"="Transparent+500" "RenderType"="ParticlesAdditiveAlpha" }
  ZWrite Off
  Cull Off
  Blend One One
  GpuProgramID 3588149
Program "vp" {
SubProgram "gles " {
"!!GLES
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 glstate_matrix_mvp;
varying mediump vec2 xlv_TEXCOORD0;
void main ()
{
  gl_Position = (glstate_matrix_mvp * _glesVertex);
  xlv_TEXCOORD0 = _glesMultiTexCoord0.xy;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
varying mediump vec2 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 tmpvar_1;
  tmpvar_1 = ((_Color * texture2D (_MainTex, xlv_TEXCOORD0).w) * _Color.w);
  gl_FragData[0] = tmpvar_1;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles " {
"!!GLES"
}
}
 }
}
SubShader { 
 Tags { "QUEUE"="Overlay" "RenderType"="DreamingOfBubble" }
 UsePass "Outfit7/Effects/DreamingOfBubble/BASE"
}
}