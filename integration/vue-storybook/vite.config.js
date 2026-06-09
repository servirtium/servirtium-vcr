import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import { resolve } from 'path'

// Built to dist/ and served by the Servirtium VCR's static-content mount at
// /app, so asset URLs must be relative to that prefix. Two pages: the POST
// form (index.html) and the Good/Cheap/Fast control (triple.html).
export default defineConfig({
  base: '/app/',
  plugins: [vue()],
  build: {
    outDir: 'dist',
    rollupOptions: {
      input: {
        main: resolve(__dirname, 'index.html'),
        triple: resolve(__dirname, 'triple.html'),
      },
    },
  },
})
