uniform vec3 uColor;

varying float vAlpha;

void main() {
  float d = length(gl_PointCoord - 0.5);
  if (d > 0.5) discard;
  float alpha = (1.0 - smoothstep(0.15, 0.5, d)) * vAlpha;
  gl_FragColor = vec4(uColor, alpha);
}
