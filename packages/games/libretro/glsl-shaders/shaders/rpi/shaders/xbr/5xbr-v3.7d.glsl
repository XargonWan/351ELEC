// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord2;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    vec2 _texCoord;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT._t1 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -2.00000000E+00*_ps.y);
    _OUT._t2 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t3 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t4 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t5 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 2.00000000E+00*_ps.y);
    _OUT._t6 = _texCoord.xyyy + vec4(-2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _OUT._t7 = _texCoord.xyyy + vec4(2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = _texCoord;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord2;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
float _TMP56;
float _TMP55;
float _TMP54;
vec3 _TMP46;
vec3 _TMP48;
vec3 _TMP50;
vec3 _TMP52;
vec3 _TMP53;
vec3 _TMP51;
vec3 _TMP49;
vec3 _TMP47;
vec3 _TMP38;
vec3 _TMP40;
vec3 _TMP42;
vec3 _TMP44;
vec3 _TMP45;
vec3 _TMP43;
vec3 _TMP41;
vec3 _TMP39;
vec4 _TMP31;
vec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
bvec4 _TMP26;
bvec4 _TMP25;
bvec4 _TMP24;
bvec4 _TMP23;
bvec4 _TMP22;
bvec4 _TMP21;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0076;
vec4 _r0120;
vec4 _r0130;
vec4 _r0140;
vec4 _r0150;
vec4 _r0160;
vec4 _r0170;
vec4 _TMP181;
vec4 _a0184;
vec4 _TMP187;
vec4 _a0190;
vec4 _TMP193;
vec4 _a0196;
vec4 _TMP199;
vec4 _a0202;
vec4 _TMP205;
vec4 _a0208;
vec4 _TMP211;
vec4 _a0214;
vec4 _TMP217;
vec4 _a0220;
vec4 _TMP223;
vec4 _a0226;
vec4 _TMP229;
vec4 _a0232;
vec4 _TMP235;
vec4 _a0238;
vec4 _TMP239;
vec4 _a0242;
vec4 _TMP243;
vec4 _a0246;
vec4 _TMP247;
vec4 _a0250;
vec4 _TMP251;
vec4 _a0254;
vec4 _TMP257;
vec4 _a0260;
vec4 _TMP261;
vec4 _a0264;
vec4 _TMP265;
vec4 _a0268;
vec4 _TMP269;
vec4 _a0272;
vec4 _TMP273;
vec4 _a0276;
vec4 _TMP277;
vec4 _a0280;
vec4 _TMP281;
vec4 _a0284;
vec4 _TMP285;
vec4 _a0288;
vec4 _TMP289;
vec4 _a0292;
vec4 _TMP293;
vec4 _a0296;
vec4 _TMP297;
vec4 _a0300;
vec3 _df0302;
vec3 _a0304;
vec3 _df0306;
vec3 _a0308;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _fx;
    bvec4 _fx_left;
    bvec4 _fx_up;
    vec2 _fp;
    vec3 _res;
    _x0076 = TEX0.xy*TextureSize;
    _fp = fract(_x0076);
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX4.xw);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX4.yw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX5.xw);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX5.yw);
    _TMP14 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP15 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP16 = COMPAT_TEXTURE(Texture, TEX6.xz);
    _TMP17 = COMPAT_TEXTURE(Texture, TEX6.xw);
    _TMP18 = COMPAT_TEXTURE(Texture, TEX7.xy);
    _TMP19 = COMPAT_TEXTURE(Texture, TEX7.xz);
    _TMP20 = COMPAT_TEXTURE(Texture, TEX7.xw);
    _r0120.x = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0120.y = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0120.z = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0120.w = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.x = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.y = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.z = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.w = dot(_TMP11.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.x = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.y = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.z = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.w = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.x = dot(_TMP20.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.z = dot(_TMP15.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.w = dot(_TMP12.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.x = dot(_TMP14.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.y = dot(_TMP18.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.z = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.w = dot(_TMP17.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0170.x = dot(_TMP13.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0170.y = dot(_TMP19.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0170.z = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0170.w = dot(_TMP16.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _fx = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).x > 1.50000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).y > 5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).z > -5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).w > 5.00000000E-01);
    _fx_left = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).x > 1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).y > 1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).z > -5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).w > 0.00000000E+00);
    _fx_up = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).x > 2.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).y > 0.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).z > -1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).w > 5.00000000E-01);
    _a0184 = _r0120.wxyz - _r0120;
    _TMP181 = abs(_a0184);
    _TMP21 = bvec4(_TMP181.x < 1.00000000E+01, _TMP181.y < 1.00000000E+01, _TMP181.z < 1.00000000E+01, _TMP181.w < 1.00000000E+01);
    _a0190 = _r0120.zwxy - _r0120.yzwx;
    _TMP187 = abs(_a0190);
    _TMP22 = bvec4(_TMP187.x < 1.00000000E+01, _TMP187.y < 1.00000000E+01, _TMP187.z < 1.00000000E+01, _TMP187.w < 1.00000000E+01);
    _a0196 = _r0140 - _r0130.wxyz;
    _TMP193 = abs(_a0196);
    _TMP23 = bvec4(_TMP193.x < 1.00000000E+01, _TMP193.y < 1.00000000E+01, _TMP193.z < 1.00000000E+01, _TMP193.w < 1.00000000E+01);
    _a0202 = _r0120.wxyz - _r0150;
    _TMP199 = abs(_a0202);
    _TMP24 = bvec4(_TMP199.x < 1.00000000E+01, _TMP199.y < 1.00000000E+01, _TMP199.z < 1.00000000E+01, _TMP199.w < 1.00000000E+01);
    _a0208 = _r0120.zwxy - _r0160;
    _TMP205 = abs(_a0208);
    _TMP25 = bvec4(_TMP205.x < 1.00000000E+01, _TMP205.y < 1.00000000E+01, _TMP205.z < 1.00000000E+01, _TMP205.w < 1.00000000E+01);
    _a0214 = _r0140 - _r0130.zwxy;
    _TMP211 = abs(_a0214);
    _TMP26 = bvec4(_TMP211.x < 1.00000000E+01, _TMP211.y < 1.00000000E+01, _TMP211.z < 1.00000000E+01, _TMP211.w < 1.00000000E+01);
    _a0220 = _r0140 - _r0130;
    _TMP217 = abs(_a0220);
    _TMP27 = bvec4(_TMP217.x < 1.00000000E+01, _TMP217.y < 1.00000000E+01, _TMP217.z < 1.00000000E+01, _TMP217.w < 1.00000000E+01);
    _a0226 = _r0120 - _r0150.yzwx;
    _TMP223 = abs(_a0226);
    _TMP28 = bvec4(_TMP223.x < 1.00000000E+01, _TMP223.y < 1.00000000E+01, _TMP223.z < 1.00000000E+01, _TMP223.w < 1.00000000E+01);
    _a0232 = _r0120.yzwx - _r0160.wxyz;
    _TMP229 = abs(_a0232);
    _TMP29 = bvec4(_TMP229.x < 1.00000000E+01, _TMP229.y < 1.00000000E+01, _TMP229.z < 1.00000000E+01, _TMP229.w < 1.00000000E+01);
    _interp_restriction_lv1 = bvec4(_r0140.x != _r0120.w && _r0140.x != _r0120.z && (!_TMP21.x && !_TMP22.x || _TMP23.x && !_TMP24.x && !_TMP25.x || _TMP26.x || _TMP27.x) && (_r0120.w != _r0170.y && _r0120.w != _r0130.w || _r0120.z != _r0170.x && _r0120.z != _r0130.w || _r0120.z != _r0130.z || _r0120.w != _r0130.x || _TMP28.x && _TMP29.x), _r0140.y != _r0120.x && _r0140.y != _r0120.w && (!_TMP21.y && !_TMP22.y || _TMP23.y && !_TMP24.y && !_TMP25.y || _TMP26.y || _TMP27.y) && (_r0120.x != _r0170.z && _r0120.x != _r0130.x || _r0120.w != _r0170.y && _r0120.w != _r0130.x || _r0120.w != _r0130.w || _r0120.x != _r0130.y || _TMP28.y && _TMP29.y), _r0140.z != _r0120.y && _r0140.z != _r0120.x && (!_TMP21.z && !_TMP22.z || _TMP23.z && !_TMP24.z && !_TMP25.z || _TMP26.z || _TMP27.z) && (_r0120.y != _r0170.w && _r0120.y != _r0130.y || _r0120.x != _r0170.z && _r0120.x != _r0130.y || _r0120.x != _r0130.x || _r0120.y != _r0130.z || _TMP28.z && _TMP29.z), _r0140.w != _r0120.z && _r0140.w != _r0120.y && (!_TMP21.w && !_TMP22.w || _TMP23.w && !_TMP24.w && !_TMP25.w || _TMP26.w || _TMP27.w) && (_r0120.z != _r0170.x && _r0120.z != _r0130.z || _r0120.y != _r0170.w && _r0120.y != _r0130.z || _r0120.y != _r0130.y || _r0120.z != _r0130.w || _TMP28.w && _TMP29.w));
    _interp_restriction_lv2_left = bvec4(_r0140.x != _r0130.z && _r0120.y != _r0130.z, _r0140.y != _r0130.w && _r0120.z != _r0130.w, _r0140.z != _r0130.x && _r0120.w != _r0130.x, _r0140.w != _r0130.y && _r0120.x != _r0130.y);
    _interp_restriction_lv2_up = bvec4(_r0140.x != _r0130.x && _r0120.x != _r0130.x, _r0140.y != _r0130.y && _r0120.y != _r0130.y, _r0140.z != _r0130.z && _r0120.z != _r0130.z, _r0140.w != _r0130.w && _r0120.w != _r0130.w);
    _a0238 = _r0140 - _r0130;
    _TMP235 = abs(_a0238);
    _a0242 = _r0140 - _r0130.zwxy;
    _TMP239 = abs(_a0242);
    _a0246 = _r0130.wxyz - _r0170;
    _TMP243 = abs(_a0246);
    _a0250 = _r0130.wxyz - _r0170.yzwx;
    _TMP247 = abs(_a0250);
    _a0254 = _r0120.zwxy - _r0120.wxyz;
    _TMP251 = abs(_a0254);
    _TMP30 = _TMP235 + _TMP239 + _TMP243 + _TMP247 + 4.00000000E+00*_TMP251;
    _a0260 = _r0120.zwxy - _r0120.yzwx;
    _TMP257 = abs(_a0260);
    _a0264 = _r0120.zwxy - _r0160;
    _TMP261 = abs(_a0264);
    _a0268 = _r0120.wxyz - _r0150;
    _TMP265 = abs(_a0268);
    _a0272 = _r0120.wxyz - _r0120;
    _TMP269 = abs(_a0272);
    _a0276 = _r0140 - _r0130.wxyz;
    _TMP273 = abs(_a0276);
    _TMP31 = _TMP257 + _TMP261 + _TMP265 + _TMP269 + 4.00000000E+00*_TMP273;
    _edr = bvec4(_TMP30.x < _TMP31.x && _interp_restriction_lv1.x, _TMP30.y < _TMP31.y && _interp_restriction_lv1.y, _TMP30.z < _TMP31.z && _interp_restriction_lv1.z, _TMP30.w < _TMP31.w && _interp_restriction_lv1.w);
    _a0280 = _r0120.wxyz - _r0130.zwxy;
    _TMP277 = abs(_a0280);
    _a0284 = _r0120.zwxy - _r0130;
    _TMP281 = abs(_a0284);
    _edr_left = bvec4((2.00000000E+00*_TMP277).x <= _TMP281.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP277).y <= _TMP281.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP277).z <= _TMP281.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP277).w <= _TMP281.w && _interp_restriction_lv2_left.w);
    _a0288 = _r0120.wxyz - _r0130.zwxy;
    _TMP285 = abs(_a0288);
    _a0292 = _r0120.zwxy - _r0130;
    _TMP289 = abs(_a0292);
    _edr_up = bvec4(_TMP285.x >= (2.00000000E+00*_TMP289).x && _interp_restriction_lv2_up.x, _TMP285.y >= (2.00000000E+00*_TMP289).y && _interp_restriction_lv2_up.y, _TMP285.z >= (2.00000000E+00*_TMP289).z && _interp_restriction_lv2_up.z, _TMP285.w >= (2.00000000E+00*_TMP289).w && _interp_restriction_lv2_up.w);
    _nc = bvec4(_edr.x && (_fx.x || _edr_left.x && _fx_left.x || _edr_up.x && _fx_up.x), _edr.y && (_fx.y || _edr_left.y && _fx_left.y || _edr_up.y && _fx_up.y), _edr.z && (_fx.z || _edr_left.z && _fx_left.z || _edr_up.z && _fx_up.z), _edr.w && (_fx.w || _edr_left.w && _fx_left.w || _edr_up.w && _fx_up.w));
    _a0296 = _r0140 - _r0120.wxyz;
    _TMP293 = abs(_a0296);
    _a0300 = _r0140 - _r0120.zwxy;
    _TMP297 = abs(_a0300);
    _px = bvec4(_TMP293.x <= _TMP297.x, _TMP293.y <= _TMP297.y, _TMP293.z <= _TMP297.z, _TMP293.w <= _TMP297.w);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP39 = _TMP8.xyz;
        } else {
            _TMP39 = _TMP10.xyz;
        } 
        _TMP38 = _TMP39;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP41 = _TMP4.xyz;
            } else {
                _TMP41 = _TMP8.xyz;
            } 
            _TMP40 = _TMP41;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP43 = _TMP6.xyz;
                } else {
                    _TMP43 = _TMP4.xyz;
                } 
                _TMP42 = _TMP43;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP45 = _TMP10.xyz;
                    } else {
                        _TMP45 = _TMP6.xyz;
                    } 
                    _TMP44 = _TMP45;
                } else {
                    _TMP44 = _TMP7.xyz;
                } 
                _TMP42 = _TMP44;
            } 
            _TMP40 = _TMP42;
        } 
        _TMP38 = _TMP40;
    } 
    if (_nc.w) { 
        if (_px.w) { 
            _TMP47 = _TMP10.xyz;
        } else {
            _TMP47 = _TMP6.xyz;
        } 
        _TMP46 = _TMP47;
    } else {
        if (_nc.z) { 
            if (_px.z) { 
                _TMP49 = _TMP6.xyz;
            } else {
                _TMP49 = _TMP4.xyz;
            } 
            _TMP48 = _TMP49;
        } else {
            if (_nc.y) { 
                if (_px.y) { 
                    _TMP51 = _TMP4.xyz;
                } else {
                    _TMP51 = _TMP8.xyz;
                } 
                _TMP50 = _TMP51;
            } else {
                if (_nc.x) { 
                    if (_px.x) { 
                        _TMP53 = _TMP8.xyz;
                    } else {
                        _TMP53 = _TMP10.xyz;
                    } 
                    _TMP52 = _TMP53;
                } else {
                    _TMP52 = _TMP7.xyz;
                } 
                _TMP50 = _TMP52;
            } 
            _TMP48 = _TMP50;
        } 
        _TMP46 = _TMP48;
    } 
    _a0304 = _TMP7.xyz - _TMP38;
    _df0302 = abs(_a0304);
    _TMP54 = _df0302.x + _df0302.y + _df0302.z;
    _a0308 = _TMP7.xyz - _TMP46;
    _df0306 = abs(_a0308);
    _TMP55 = _df0306.x + _df0306.y + _df0306.z;
    _TMP56 = float((_TMP55 >= _TMP54));
    _res = _TMP38 + _TMP56*(_TMP46 - _TMP38);
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
