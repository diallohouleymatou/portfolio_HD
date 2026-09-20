uniform vec3 uColor;
uniform vec3 uColor2;

varying float vAlpha;
varying float vMix;

void main() {
  float d = length(gl_PointCoord - 0.5);
  if (d > 0.5) discard;
  float rim = smoothstep(0.38, 0.5, d);
  float body = 1.0 - smoothstep(0.0, 0.5, d);
  float alpha = (body * 0.25 + rim * 0.35) * vAlpha;
  gl_FragColor = vec4(mix(uColor, uColor2, vMix), alpha);
}
