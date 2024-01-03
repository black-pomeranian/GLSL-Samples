#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

void main() {
    vec2 st = (gl_FragCoord.xy * 2.0 - u_resolution) / min(u_resolution.x, u_resolution.y);
    
    float d = length( st );
    d = fract(d*1.3);
    gl_FragColor = vec4(vec2(d), 1.0, 1.0);
}