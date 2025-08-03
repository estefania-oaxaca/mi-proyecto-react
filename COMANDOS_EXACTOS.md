# 🔧 Comandos Exactos para PowerShell

## ⚠️ IMPORTANTE: Ejecuta estos comandos UNO POR UNO

### 1. Verificar que estés en el directorio correcto
```powershell
Get-Location
```
Debería mostrar: `C:\Users\miguel villa\Desktop\mi-proyecto-react`

### 2. Si no estás en el directorio correcto, navega a él:
```powershell
Set-Location "C:\Users\miguel villa\Desktop\mi-proyecto-react"
```

### 3. Verificar que el servidor funcione:
```powershell
npm run dev
```
Debería abrir http://localhost:5173

### 4. Verificar que el build funcione:
```powershell
npm run build
```

### 5. Inicializar Git (ejecuta UNO POR UNO):
```powershell
git init
```
```powershell
git add .
```
```powershell
git commit -m "Initial commit: Transparencia Conectada React App"
```
```powershell
git branch -M main
```

### 6. Agregar repositorio remoto (REEMPLAZA [tu-usuario]):
```powershell
git remote add origin https://github.com/[tu-usuario]/mi-proyecto-react.git
```

### 7. Subir código:
```powershell
git push -u origin main
```

### 8. Desplegar a GitHub Pages:
```powershell
npm run deploy
```

## 🚨 Errores Comunes y Soluciones

### Error: "No se encuentra la ruta de acceso"
**Solución**: Asegúrate de estar en el directorio correcto
```powershell
Set-Location "C:\Users\miguel villa\Desktop\mi-proyecto-react"
```

### Error: "npm error ENOENT"
**Solución**: Verifica que estés en el directorio del proyecto
```powershell
Get-Location
ls package.json
```

### Error: "El token '&&' no es un separador válido"
**Solución**: Ejecuta los comandos por separado, no uses `&&`

### Error: "git push falla"
**Solución**: 
1. Verifica que el repositorio sea público
2. Reemplaza `[tu-usuario]` con tu usuario real
3. Asegúrate de tener permisos de escritura

## ✅ Verificación Rápida

```powershell
# 1. Verificar directorio
Get-Location

# 2. Verificar archivos
ls

# 3. Verificar servidor
npm run dev

# 4. Verificar build
npm run build
```

## 🌐 URLs de Acceso

- **Desarrollo**: http://localhost:5173
- **GitHub Pages**: https://[tu-usuario].github.io/mi-proyecto-react

## 📋 Checklist de Verificación

- [ ] Estoy en el directorio correcto
- [ ] El servidor funciona (npm run dev)
- [ ] El build funciona (npm run build)
- [ ] Git está inicializado
- [ ] Repositorio remoto agregado
- [ ] Código subido a GitHub
- [ ] GitHub Pages configurado
- [ ] Despliegue completado 