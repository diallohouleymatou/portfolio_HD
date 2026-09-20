import vue from '@vitejs/plugin-vue'
import { fileURLToPath, URL } from 'node:url'
import { defineConfig } from 'vite'
import Icons from 'unplugin-icons/vite'
import glsl from 'vite-plugin-glsl'

export default defineConfig({
  plugins: [vue(), glsl(), Icons({ compiler: 'vue3' })],
  resolve: {
    alias: { '@': fileURLToPath(new URL('./src', import.meta.url)) },
  },
})
