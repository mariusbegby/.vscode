$jsonContent = Get-Content -Path "extensions.json" | Out-String | ConvertFrom-Json

foreach ($extension in $jsonContent.recommendations) {
    & code --install-extension $extension --force
}

Write-Host "Extensions have been installed with latest versions."