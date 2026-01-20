# Test if website is accessible
try {
    $response = Invoke-WebRequest -Uri "https://powerscript-pro.vercel.app" -UseBasicParsing -ErrorAction Stop
    Write-Host "✅ Website is accessible!" -ForegroundColor Green
    Write-Host "Status Code: $($response.StatusCode)" -ForegroundColor White
} catch {
    Write-Host "❌ Website not yet deployed" -ForegroundColor Red
    Write-Host "Please deploy from: https://vercel.com/new" -ForegroundColor Yellow
}
