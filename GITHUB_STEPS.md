# 🚀 Pasos para Subir a GitHub

## ✅ Validación Completada

Tu proyecto está **100% listo** para subir a GitHub:

- ✅ Servidor de desarrollo funcionando
- ✅ Build de producción exitoso
- ✅ Configuración de GitHub Pages lista
- ✅ Dependencias instaladas
- ✅ Archivos de configuración correctos

## 📋 Pasos Exactos para GitHub

### 1. Crear Repositorio en GitHub

1. Ve a [github.com](https://github.com)
2. Haz clic en **"New repository"**
3. Nombre del repositorio: `mi-proyecto-react`
4. **IMPORTANTE**: Marca como **Público** (requerido para GitHub Pages)
5. **NO** inicialices con README, .gitignore o licencia
6. Haz clic en **"Create repository"**

### 2. Inicializar Git y Subir Código

Ejecuta estos comandos **uno por uno** en tu terminal:

```bash
# Asegúrate de estar en el directorio correcto
cd "C:\Users\miguel villa\Desktop\mi-proyecto-react"

# Inicializar Git
git init

# Agregar todos los archivos
git add .

# Hacer el primer commit
git commit -m "Initial commit: Transparencia Conectada React App"

# Cambiar a rama main
git branch -M main

# Agregar el repositorio remoto (REEMPLAZA [tu-usuario] con tu nombre de usuario)
git remote add origin https://github.com/[tu-usuario]/mi-proyecto-react.git

# Subir código
git push -u origin main
```

### 3. Configurar GitHub Pages

1. Ve a tu repositorio en GitHub
2. Ve a **Settings** (pestaña)
3. En el menú lateral, busca **Pages**
4. En **Source**, selecciona **"Deploy from a branch"**
5. En **Branch**, selecciona **gh-pages** (se creará automáticamente)
6. Haz clic en **Save**

### 4. Actualizar package.json

**IMPORTANTE**: Antes de desplegar, actualiza el `package.json`:

```json
"homepage": "https://[tu-usuario].github.io/mi-proyecto-react"
```

Reemplaza `[tu-usuario]` con tu nombre de usuario de GitHub.

### 5. Desplegar a GitHub Pages

```bash
# Desplegar (esto creará la rama gh-pages automáticamente)
npm run deploy
```

### 6. Verificar Despliegue

1. Ve a **Settings** → **Pages** en tu repositorio
2. Deberías ver: "Your site is live at https://[tu-usuario].github.io/mi-proyecto-react"
3. Espera 5-10 minutos para que se active completamente

## 🔧 Comandos de Verificación

```bash
# Verificar que el servidor funcione
npm run dev

# Verificar que el build funcione
npm run build

# Verificar la vista previa
npm run preview

# Desplegar a GitHub Pages
npm run deploy
```

## 🌐 URLs de Acceso

- **Desarrollo local**: http://localhost:5173
- **GitHub Pages**: https://[tu-usuario].github.io/mi-proyecto-react

## ⚠️ Solución de Problemas

### Si git push falla:
1. Verifica que el repositorio sea público
2. Asegúrate de reemplazar `[tu-usuario]` con tu usuario real
3. Verifica que tengas permisos de escritura en el repositorio

### Si GitHub Pages no funciona:
1. Verifica que el repositorio sea público
2. Espera 5-10 minutos después del despliegue
3. Verifica que la rama gh-pages exista
4. Revisa los logs en **Actions** (pestaña)

### Si la página no carga:
1. Verifica la URL exacta en **Settings** → **Pages**
2. Asegúrate de que el `homepage` en `package.json` sea correcto
3. Revisa que no haya errores en la consola del navegador

## ✅ Estado Actual

Tu proyecto está **completamente listo** para el despliegue. Solo sigue los pasos anteriores y tendrás tu aplicación funcionando en GitHub Pages. 