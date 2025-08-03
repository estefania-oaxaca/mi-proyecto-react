# 🔧 Solución para GitHub Pages - Rama gh-pages no aparece

## 🚨 Problema Identificado

La rama `gh-pages` no aparece en GitHub Pages porque:
1. Aún no se ha subido código a GitHub
2. La rama gh-pages se crea automáticamente con `npm run deploy`

## ✅ Solución Paso a Paso

### 1. Crear Repositorio en GitHub (SI NO LO HAS HECHO)

1. Ve a [github.com](https://github.com)
2. Haz clic en **"New repository"**
3. Nombre: `mi-proyecto-react`
4. **IMPORTANTE**: Marca como **Público**
5. **NO** inicialices con README, .gitignore o licencia
6. Haz clic en **"Create repository"**

### 2. Conectar con GitHub

Ejecuta estos comandos **uno por uno** (REEMPLAZA `[tu-usuario]` con tu usuario real):

```powershell
# Agregar repositorio remoto
git remote add origin https://github.com/[tu-usuario]/mi-proyecto-react.git

# Subir código a GitHub
git push -u origin main
```

### 3. Actualizar package.json

**IMPORTANTE**: Antes de desplegar, actualiza el `package.json`:

```json
"homepage": "https://[tu-usuario].github.io/mi-proyecto-react"
```

Reemplaza `[tu-usuario]` con tu nombre de usuario de GitHub.

### 4. Desplegar (Esto creará la rama gh-pages)

```powershell
npm run deploy
```

### 5. Configurar GitHub Pages (DESPUÉS del despliegue)

1. Ve a tu repositorio en GitHub
2. Ve a **Settings** → **Pages**
3. En **Source**, selecciona **"Deploy from a branch"**
4. **AHORA** deberías ver la opción **gh-pages** en el dropdown
5. Selecciona **gh-pages** y haz clic en **Save**

## 🔍 Verificación

### Después del despliegue, verifica:

```powershell
# Verificar que el remoto esté configurado
git remote -v

# Verificar que el código esté en GitHub
git push origin main

# Verificar que gh-pages se haya creado
git branch -a
```

## 🌐 URLs de Acceso

- **Desarrollo**: http://localhost:5173
- **GitHub Pages**: https://[tu-usuario].github.io/mi-proyecto-react

## ⚠️ Notas Importantes

1. **La rama gh-pages se crea automáticamente** con `npm run deploy`
2. **No configures GitHub Pages** hasta después del primer despliegue
3. **El repositorio debe ser público** para GitHub Pages
4. **Espera 5-10 minutos** después del despliegue para que se active

## 🎯 Orden Correcto

1. ✅ Crear repositorio en GitHub
2. ✅ Conectar con `git remote add origin`
3. ✅ Subir código con `git push`
4. ✅ Actualizar `package.json` con tu usuario
5. ✅ Desplegar con `npm run deploy`
6. ✅ Configurar GitHub Pages (gh-pages aparecerá)

## 🚨 Si aún no aparece gh-pages

1. Verifica que el despliegue fue exitoso
2. Revisa los logs en la pestaña **Actions** de tu repositorio
3. Espera unos minutos más
4. Intenta hacer un nuevo commit y desplegar de nuevo

**¡Sigue estos pasos en orden y la rama gh-pages aparecerá!** 