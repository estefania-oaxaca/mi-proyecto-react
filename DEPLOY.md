# 🚀 Despliegue a GitHub Pages

## Configuración Inicial

### 1. Crear repositorio en GitHub
```bash
# Crear un nuevo repositorio en GitHub llamado "mi-proyecto-react"
```

### 2. Inicializar Git y subir código
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/[tu-usuario]/mi-proyecto-react.git
git push -u origin main
```

### 3. Configurar GitHub Pages

1. Ve a tu repositorio en GitHub
2. Ve a **Settings** → **Pages**
3. En **Source**, selecciona **Deploy from a branch**
4. Selecciona la rama **gh-pages** (se creará automáticamente)
5. Haz clic en **Save**

### 4. Actualizar package.json

Cambia la línea `homepage` en `package.json`:
```json
"homepage": "https://[tu-usuario].github.io/mi-proyecto-react"
```

### 5. Desplegar

```bash
# Instalar gh-pages si no está instalado
npm install gh-pages --save-dev

# Desplegar
npm run deploy
```

## Comandos Útiles

```bash
# Desarrollo local
npm run dev

# Construir para producción
npm run build

# Vista previa de la build
npm run preview

# Desplegar a GitHub Pages
npm run deploy
```

## Solución de Problemas

### Si la página no carga:
1. Verifica que el repositorio sea público
2. Espera 5-10 minutos después del despliegue
3. Verifica que la rama gh-pages exista
4. Revisa los logs de GitHub Actions

### Si hay errores de rutas:
1. Verifica que `base` en `vite.config.js` coincida con el nombre del repositorio
2. Asegúrate de que todas las rutas sean relativas

## URLs

- **Desarrollo local**: http://localhost:5173
- **GitHub Pages**: https://[tu-usuario].github.io/mi-proyecto-react 