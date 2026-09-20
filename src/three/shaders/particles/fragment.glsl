uniform vec3 uColor;
uniform vec3 uColor2;

varying float vAlpha;
varying float vMix;

void main() {
  float d = length(gl_PointCoord - 0.5);
  if (d > 0.5) discard;
  gl_FragColor = vec4(mix(uColor, uColor2, vMix), 0.55 * vAlpha);
}
