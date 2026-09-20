uniform float uTime;
uniform float uPixelRatio;
uniform float uSize;

attribute float aScale;
attribute float aSpeed;

varying float vAlpha;

void main() {
  vec3 transformed = position;
  transformed.y = mod(transformed.y + uTime * aSpeed, 24.0) - 12.0;
  transformed.x += sin(uTime * 0.25 + position.z * 0.6) * 0.35;
  transformed.z += cos(uTime * 0.2 + position.x * 0.6) * 0.35;

  vec4 mvPosition = modelViewMatrix * vec4(transformed, 1.0);
  gl_Position = projectionMatrix * mvPosition;
  gl_PointSize = uSize * aScale * uPixelRatio * (12.0 / -mvPosition.z);

  vAlpha = smoothstep(12.0, 3.0, abs(transformed.y)) * aScale;
}
