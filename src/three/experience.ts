import * as THREE from 'three'

import particlesFragment from './shaders/particles/fragment.glsl'
import particlesVertex from './shaders/particles/vertex.glsl'

const PARTICLE_COUNT = 90
const PINK = new THREE.Color()
const LAVENDER = new THREE.Color()

export type Theme = 'dark' | 'light'

const THEMES = {
  dark: { pink: '#ff9ec0', lavender: '#b9a4f0', blending: THREE.AdditiveBlending },
  light: { pink: '#ff8fb8', lavender: '#b39cf5', blending: THREE.NormalBlending },
}

/** Camera positions the scroll interpolates between, one per page section. */
const WAYPOINTS = [
  { position: new THREE.Vector3(0.9, 1.45, 3.4), target: new THREE.Vector3(1.0, 1.05, 0) },
  { position: new THREE.Vector3(2.6, 1.7, 3.0), target: new THREE.Vector3(1.0, 1.05, 0) },
  { position: new THREE.Vector3(-2.4, 1.2, 3.2), target: new THREE.Vector3(1.0, 1.0, 0) },
  { position: new THREE.Vector3(0, 3.4, 4.2), target: new THREE.Vector3(1.1, 0.7, 0) },
  { position: new THREE.Vector3(0, 1.5, 2.6), target: new THREE.Vector3(1.1, 1.15, 0) },
]

const FIRST = WAYPOINTS[0]!

export function createExperience(canvas: HTMLCanvasElement) {
  const scene = new THREE.Scene()

  const camera = new THREE.PerspectiveCamera(42, 1, 0.1, 100)
  camera.position.copy(FIRST.position)

  const renderer = new THREE.WebGLRenderer({ canvas, antialias: true, alpha: true })

  const positions = new Float32Array(PARTICLE_COUNT * 3)
  const scales = new Float32Array(PARTICLE_COUNT)
  const speeds = new Float32Array(PARTICLE_COUNT)
  for (let i = 0; i < PARTICLE_COUNT; i++) {
    positions[i * 3] = (Math.random() - 0.5) * 34
    positions[i * 3 + 1] = (Math.random() - 0.5) * 24
    positions[i * 3 + 2] = (Math.random() - 0.5) * 34
    scales[i] = 0.3 + Math.random() * 0.7
    speeds[i] = 0.15 + Math.random() * 0.5
  }
  const particleGeometry = new THREE.BufferGeometry()
  particleGeometry.setAttribute('position', new THREE.BufferAttribute(positions, 3))
  particleGeometry.setAttribute('aScale', new THREE.BufferAttribute(scales, 1))
  particleGeometry.setAttribute('aSpeed', new THREE.BufferAttribute(speeds, 1))

  const particleUniforms = {
    uTime: { value: 0 },
    uPixelRatio: { value: 1 },
    uSize: { value: 26 },
    uColor: { value: PINK },
    uColor2: { value: LAVENDER },
  }
  const particleMaterial = new THREE.ShaderMaterial({
    vertexShader: particlesVertex,
    fragmentShader: particlesFragment,
    transparent: true,
    depthWrite: false,
    blending: THREE.AdditiveBlending,
    uniforms: particleUniforms,
  })
  scene.add(new THREE.Points(particleGeometry, particleMaterial))

  const pointer = new THREE.Vector2()
  const target = new THREE.Vector3().copy(FIRST.target)
  const clock = new THREE.Clock()
  let scroll = 0
  let smoothScroll = 0
  let frame = 0

  function resize() {
    const width = window.innerWidth
    const height = window.innerHeight
    const pixelRatio = Math.min(window.devicePixelRatio, 2)
    camera.aspect = width / height
    camera.updateProjectionMatrix()
    renderer.setSize(width, height)
    renderer.setPixelRatio(pixelRatio)
    particleUniforms.uPixelRatio.value = pixelRatio
  }

  function onPointerMove(event: PointerEvent) {
    pointer.x = (event.clientX / window.innerWidth - 0.5) * 2
    pointer.y = (event.clientY / window.innerHeight - 0.5) * 2
  }

  /** Reads the scroll ratio into a waypoint pair and blends camera + look-at. */
  function applyWaypoints(ratio: number) {
    const scaled = ratio * (WAYPOINTS.length - 1)
    const index = Math.min(Math.floor(scaled), WAYPOINTS.length - 2)
    const blend = scaled - index
    const from = WAYPOINTS[index]!
    const to = WAYPOINTS[index + 1]!

    camera.position.lerpVectors(from.position, to.position, blend)
    camera.position.x += pointer.x * 0.45
    camera.position.y += -pointer.y * 0.25
    target.lerpVectors(from.target, to.target, blend)
    camera.lookAt(target)
  }

  function tick() {
    frame = requestAnimationFrame(tick)
    const delta = clock.getDelta()
    const elapsed = clock.getElapsedTime()

    smoothScroll += (scroll - smoothScroll) * 0.08
    particleUniforms.uTime.value = elapsed

    applyWaypoints(smoothScroll)
    renderer.render(scene, camera)
  }

  resize()
  window.addEventListener('resize', resize)
  window.addEventListener('pointermove', onPointerMove)
  tick()

  return {
    setTheme(theme: Theme) {
      const { pink, lavender, blending } = THEMES[theme]
      PINK.set(pink)
      LAVENDER.set(lavender)
      particleMaterial.blending = blending
      particleMaterial.needsUpdate = true
    },
    setScroll(ratio: number) {
      scroll = Math.min(Math.max(ratio, 0), 1)
    },
    dispose() {
      cancelAnimationFrame(frame)
      window.removeEventListener('resize', resize)
      window.removeEventListener('pointermove', onPointerMove)
      particleGeometry.dispose()
      particleMaterial.dispose()
      renderer.dispose()
    },
  }
}
