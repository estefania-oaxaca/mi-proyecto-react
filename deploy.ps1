# Script de despliegue para Transparencia Conectada
# Ejecuta este script desde PowerShell

Write-Host "🚀 Iniciando despliegue de Transparencia Conectada..." -ForegroundColor Green

# Verificar que estemos en el directorio correcto
$currentDir = Get-Location
Write-Host "📁 Directorio actual: $currentDir" -ForegroundColor Yellow

if (-not (Test-Path "package.json")) {
    Write-Host "❌ Error: No se encontró package.json. Asegúrate de estar en el directorio del proyecto." -ForegroundColor Red
    exit 1
}

Write-Host "✅ Estamos en el directorio correcto" -ForegroundColor Green

# Verificar que el servidor funcione
Write-Host "🔧 Verificando servidor de desarrollo..." -ForegroundColor Yellow
try {
    Start-Process -FilePath "npm" -ArgumentList "run", "dev" -WindowStyle Minimized
    Write-Host "✅ Servidor iniciado en http://localhost:5173" -ForegroundColor Green
} catch {
    Write-Host "❌ Error al iniciar el servidor" -ForegroundColor Red
}

# Verificar build
Write-Host "🔨 Verificando build de producción..." -ForegroundColor Yellow
try {
    npm run build
    Write-Host "✅ Build completado exitosamente" -ForegroundColor Green
} catch {
    Write-Host "❌ Error en el build" -ForegroundColor Red
    exit 1
}

# Inicializar Git si no está inicializado
if (-not (Test-Path ".git")) {
    Write-Host "📦 Inicializando Git..." -ForegroundColor Yellow
    git init
    git add .
    git commit -m "Initial commit: Transparencia Conectada React App"
    git branch -M main
    Write-Host "✅ Git inicializado" -ForegroundColor Green
} else {
    Write-Host "✅ Git ya está inicializado" -ForegroundColor Green
}

Write-Host ""
Write-Host "📋 PRÓXIMOS PASOS MANUALES:" -ForegroundColor Cyan
Write-Host "1. Crea un repositorio en GitHub llamado 'mi-proyecto-react'" -ForegroundColor White
Write-Host "2. Ejecuta: git remote add origin https://github.com/[tu-usuario]/mi-proyecto-react.git" -ForegroundColor White
Write-Host "3. Ejecuta: git push -u origin main" -ForegroundColor White
Write-Host "4. Configura GitHub Pages en Settings → Pages" -ForegroundColor White
Write-Host "5. Ejecuta: npm run deploy" -ForegroundColor White
Write-Host ""
Write-Host "🌐 URLs:" -ForegroundColor Cyan
Write-Host "- Desarrollo: http://localhost:5173" -ForegroundColor White
Write-Host "- GitHub Pages: https://[tu-usuario].github.io/mi-proyecto-react" -ForegroundColor White
Write-Host ""
Write-Host "✅ Script completado. Sigue los pasos manuales arriba." -ForegroundColor Green 