Write-Host "Set-ExecutionPolicy Bypass -Scope Process"
Set-ExecutionPolicy Bypass -Scope Process
Write-Host "Enable-WindowsOptionalFeature -Online -FeatureName ServerMediaFoundation  (For Playwright)"
try {
    Enable-WindowsOptionalFeature -Online -FeatureName ServerMediaFoundation -Force -Confirm:$false
} catch {
    Write-Host "Enable-WindowsOptionalFeature -Online -FeatureName ServerMediaFoundation threw an exception: $PSItem.Exception.Message"
}