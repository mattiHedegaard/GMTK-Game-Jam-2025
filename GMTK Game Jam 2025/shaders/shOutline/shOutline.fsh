//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;
uniform vec4 outlineColor;

void main()
{
    vec2 offsetx = vec2(pixelW, 0.0);
    vec2 offsety = vec2(0.0, pixelH);

    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    float centerAlpha = texColor.a;

    float neighborAlpha = 0.0;
    neighborAlpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetx).a);
    neighborAlpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetx).a);
    neighborAlpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsety).a);
    neighborAlpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsety).a);

    if (centerAlpha > 0.0) {
        // Original sprite pixel
        gl_FragColor = texColor * v_vColour;
    }
    else if (neighborAlpha > 0.0) {
        // Outline pixel
        gl_FragColor = outlineColor;
    }
    else {
        // Transparent area
        discard;
    }
}
