#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;


void main() {
    vec2 p = (gl_FragCoord.xy*2.0 - u_resolution) / min(u_resolution.x,u_resolution.y);

    float c = pow(0.5/length(p),5.0) * (sin(gl_FragCoord.x )  +  cos(gl_FragCoord.y)) ;

    gl_FragColor = vec4(vec3(c),1.0);
}