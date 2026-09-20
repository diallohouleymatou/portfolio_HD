uniform float uTime;
uniform float uProgress;
uniform vec3 uColor;
uniform float uSize;

varying vec2 vUv;
varying vec3 vWorldPosition;

// Antialiased grid line: 1.0 on the line, 0.0 between lines.
float gridLine(vec2 coord, float width) {
  vec2 grid = abs(fract(coord - 0.5) - 0.5) / fwidth(coord);
  return 1.0 - min(min(grid.x, grid.y) / width, 1.0);
}

void main() {
  vec2 coord = vWorldPosition.xz / uSize;
  float line = gridLine(coord, 1.2);
  float major = gridLine(coord * 0.2, 1.6);

  float distance = length(vWorldPosition.xz);
  float fade = 1.0 - smoothstep(4.0, 26.0, distance);

  float pulse = 0.65 + 0.35 * sin(distance * 0.35 - uTime * 1.4);
  float intensity = (line * 0.55 + major * 1.0) * fade * pulse;
  intensity *= 0.25 + 0.75 * uProgress;

  if (intensity < 0.001) discard;
  gl_FragColor = vec4(uColor, intensity);
}
