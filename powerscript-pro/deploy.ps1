# deploy.ps1 - PowerScript Pro Deployment Script
Write-Host "=== PowerScript Pro Auto-Deploy ===" -ForegroundColor Cyan

# Check current files
Write-Host "`nChecking project files..." -ForegroundColor Yellow
$files = Get-ChildItem -File
foreach ($file in $files) {
    Write-Host "📄 $($file.Name)" -ForegroundColor White
}

# Git status check
Write-Host "`nChecking Git status..." -ForegroundColor Yellow
try {
    git status
    Write-Host "✅ Git repository initialized" -ForegroundColor Green
} catch {
    Write-Host "⚠️  Git not initialized or no repository" -ForegroundColor Yellow
}

# Deployment options
Write-Host "`n=== DEPLOYMENT OPTIONS ===" -ForegroundColor Green
Write-Host "`nOption 1: Vercel Dashboard (Recommended)" -ForegroundColor Yellow
Write-Host "   URL: https://vercel.com/new" -ForegroundColor Cyan
Write-Host "   Steps: Import -> Select Repository -> Deploy" -ForegroundColor White

Write-Host "`nOption 2: Vercel CLI" -ForegroundColor Yellow
Write-Host "   Command: npx vercel@latest --prod" -ForegroundColor Cyan

Write-Host "`nOption 3: Direct Upload" -ForegroundColor Yellow
Write-Host "   1. Create ZIP: Compress-Archive -Path * -DestinationPath deploy.zip" -ForegroundColor White
Write-Host "   2. Upload to: https://vercel.com/new" -ForegroundColor White

Write-Host "`n=== IMPORTANT URLs ===" -ForegroundColor Cyan
Write-Host "🌐 GitHub: https://github.com/mrbanglagggaming-beep/powerscript" -ForegroundColor Green
Write-Host "🚀 Vercel: https://vercel.com/new" -ForegroundColor Green
Write-Host "📱 Your Site: https://powerscript-pro.vercel.app" -ForegroundColor Green

# Open Vercel
$openVercel = Read-Host "`nOpen Vercel dashboard now? (Y/N)"
if ($openVercel -eq 'Y' -or $openVercel -eq 'y') {
    start chrome "https://vercel.com/new"
    Write-Host "✅ Vercel dashboard opened" -ForegroundColor Green
}

Write-Host "`n✅ Deployment script ready!" -ForegroundColor Green
Write-Host "   Run this script anytime: .\deploy.ps1" -ForegroundColor White
