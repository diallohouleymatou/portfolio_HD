<script setup lang="ts">
import Lenis from 'lenis'
import { onBeforeUnmount, onMounted, ref, shallowRef } from 'vue'

import Sections from '@/components/Sections.vue'
import { getResume, isLocale, type Locale } from '@/content/resume'
import { createExperience, type Theme } from '@/three/experience'

const canvas = ref<HTMLCanvasElement | null>(null)
const experience = shallowRef<ReturnType<typeof createExperience> | null>(null)
const lenis = shallowRef<Lenis | null>(null)

const stored = localStorage.getItem('locale') ?? ''
const locale = ref<Locale>(isLocale(stored) ? stored : 'fr')
const resume = ref(getResume(locale.value))

function toggleLocale() {
  locale.value = locale.value === 'fr' ? 'en' : 'fr'
  resume.value = getResume(locale.value)
  localStorage.setItem('locale', locale.value)
  document.documentElement.lang = locale.value
}

const storedTheme = localStorage.getItem('theme')
const theme = ref<Theme>(
  storedTheme === 'light' || storedTheme === 'dark'
    ? storedTheme
    : matchMedia('(prefers-color-scheme: light)').matches
      ? 'light'
      : 'dark',
)

function applyTheme() {
  document.documentElement.dataset.theme = theme.value
  experience.value?.setTheme(theme.value)
}

function toggleTheme() {
  theme.value = theme.value === 'dark' ? 'light' : 'dark'
  localStorage.setItem('theme', theme.value)
  applyTheme()
}

onMounted(() => {
  document.documentElement.lang = locale.value
  if (!canvas.value) return

  experience.value = createExperience(canvas.value)
  applyTheme()

  const instance = new Lenis({ autoRaf: true, lerp: 0.1, anchors: true })
  instance.on('scroll', ({ progress }: { progress: number }) => experience.value?.setScroll(progress))
  lenis.value = instance

  const observer = new IntersectionObserver(
    (entries) => {
      for (const entry of entries) {
        if (entry.isIntersecting) {
          entry.target.classList.add('is-visible')
          observer.unobserve(entry.target)
        }
      }
    },
    { rootMargin: '-12% 0px' },
  )
  document.querySelectorAll('.reveal').forEach((element) => observer.observe(element))
})

onBeforeUnmount(() => {
  experience.value?.dispose()
  lenis.value?.destroy()
})
</script>

<template>
  <canvas ref="canvas" class="canvas" />

  <nav class="nav">
    <a href="#about">{{ resume.ui.about }}</a>
    <a href="#work">{{ resume.ui.work }}</a>
    <a href="#skills">{{ resume.ui.skills }}</a>
    <a href="#contact">{{ resume.ui.contact }}</a>
  </nav>

  <div class="controls">
    <button type="button" :aria-label="theme === 'dark' ? 'Light mode' : 'Dark mode'" @click="toggleTheme">
      {{ theme === 'dark' ? '☀' : '☾' }}
    </button>
    <button type="button" @click="toggleLocale">
      {{ resume.otherLocale }}
    </button>
  </div>

  <div class="content">
    <Sections :resume="resume" />
  </div>
</template>

<style scoped lang="scss">
.nav {
  position: fixed;
  top: clamp(1rem, 3vw, 2rem);
  left: 50%;
  transform: translateX(-50%);
  z-index: 10;
  display: flex;
  gap: 0.25rem;
  padding: 0.35rem;
  border-radius: 999px;
  background: var(--glass);
  backdrop-filter: blur(12px);
  box-shadow: var(--shadow);

  a {
    padding: 0.5rem 1rem;
    border-radius: 999px;
    color: var(--fg);
    font-weight: 800;
    font-size: 0.85rem;
    letter-spacing: 0.06em;
    text-decoration: none;
    text-transform: uppercase;
    transition: background 0.3s ease;

    &:hover {
      background: var(--card);
    }
  }
}

@media (max-width: 52rem) {
  .nav {
    display: none;
  }
}

.controls {
  position: fixed;
  top: clamp(1rem, 3vw, 2rem);
  right: var(--gutter);
  z-index: 10;
  display: flex;
  gap: 0.5rem;

  button {
    padding: 0.6rem 1rem;
    border: 0;
    border-radius: 999px;
    background: var(--glass);
    backdrop-filter: blur(12px);
    box-shadow: var(--shadow);
    color: var(--fg);
    font: 800 0.85rem var(--font-body);
    letter-spacing: 0.1em;
    text-transform: uppercase;
    cursor: pointer;
    transition: transform 0.3s ease;

    &:hover {
      transform: translateY(-2px);
    }
  }
}
</style>
