#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

void main() {
    vec2 st = (gl_FragCoord.xy * 2.0 - u_resolution) / min(u_resolution.x, u_resolution.y);
    
    float c = smoothstep(0.5,0.51, dot(st,st));
    
    gl_FragColor = vec4(vec3(c),1.0);
}