import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  base: '/mi-proyecto-react/', // Base URL para GitHub Pages
  server: {
    port: 5173,
    open: true,
    host: true // Permite acceso desde red local
  },
  build: {
    outDir: 'dist',
    emptyOutDir: true,
    sourcemap: true
  }
})

