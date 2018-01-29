// based on: https://www.shadertoy.com/view/XsjSRt
shader_type canvas_item;

//SETTINGS//
uniform float timeScale = 1.0;
uniform float cloudScale = 0.5;
uniform float skyCover = 0.6; //overwritten by mouse x drag
uniform float softness = 0.2;
uniform float brightness = 1.0;
uniform int noiseOctaves = 8;
uniform float curlStrain = 3.0;
uniform sampler2D noiseimg;
//SETTINGS//
/*
float saturate(float num)
{
    return clamp( num, 0.0, 1.0 );
}

float noise(vec2 uv)
{
	return texture( noiseimg, uv ).r;
    //return texture(iChannel0,uv).r;
}

vec2 rotate(vec2 uv)
{
    uv = uv + noise(uv*0.2)*0.005;
    float rot = curlStrain;
    float sinRot=sin(rot);
    float cosRot=cos(rot);
    //mat2 rotMat = mat2(cosRot,-sinRot,sinRot,cosRot);
	//mat2 rotMat = mat2(cosRot);
	mat2 rotMat = mat2( vec2( cosRot,-sinRot ), vec2( sinRot,cosRot ) );
    return uv * rotMat;
}

float fbm (vec2 uv, float iTime)
{
    float rot = 1.57;
    float sinRot=sin(rot);
    float cosRot=cos(rot);
    float f = 0.0;
    float total = 0.0;
    float mul = 0.5;
    //mat2 rotMat = mat2(cosRot,-sinRot,sinRot,cosRot);
	mat2 rotMat = mat2( vec2( cosRot,-sinRot ), vec2( sinRot,cosRot ) );
	    
    for(int i = 0;i < noiseOctaves;i++)
    {
        f += noise(uv+iTime*0.00015*timeScale*(1.0-mul))*mul;
        total += mul;
        uv *= 3.0;
        uv=rotate(uv);
        mul *= 0.5;
    }
    return f/total;
}
*/
void fragment()
{
	COLOR = vec4(0.5);
	/*
	
	//vec2 screenUv = fragCoord.xy/iResolution.xy;
    vec2 uv = UV; //fragCoord.xy/(40000.0*cloudScale);
    
    //float mouseXAffect = (iMouse.x/iResolution.x);
    
    //float cover = mouseXAffect*1.1+0.1;
    //if( iMouse.z<=0.0001 ) cover = 0.5;
	float cover = 0.5;
    
    float bright = brightness*(1.8-cover);
    
    float color1 = fbm(uv-0.5+TIME*0.00004*timeScale, TIME);
    float color2 = fbm(uv-10.5+TIME*0.00002*timeScale, TIME);
    
    float clouds1 = smoothstep(1.0-cover,min((1.0-cover)+softness*2.0,1.0),color1);
    float clouds2 = smoothstep(1.0-cover,min((1.0-cover)+softness,1.0),color2);
    
    float cloudsFormComb = saturate(clouds1+clouds2);
    
    vec4 skyCol = vec4(0.6,0.8,1.0,1.0);
    float cloudCol = saturate(saturate(1.0-pow(color1,1.0)*0.2)*bright);
    vec4 clouds1Color = vec4(cloudCol,cloudCol,cloudCol,1.0);
    vec4 clouds2Color = mix(clouds1Color,skyCol,0.25);
    vec4 cloudColComb = mix(clouds1Color,clouds2Color,saturate(clouds2-clouds1));
    
	vec4 fragColor = mix(skyCol,cloudColComb,cloudsFormComb);
	*/
}







