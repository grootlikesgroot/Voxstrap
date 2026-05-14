$dir = "c:\Users\Atul Bhandarkar\OneDrive\Desktop\Voxstrap\GrootInjectionLogic\Voxstrap\Voxstrap\Resources"
Get-ChildItem -Path $dir -Filter "Strings.*.resx" -Recurse | Where-Object { $_.Name -ne "Strings.resx" } | Remove-Item -Force
Write-Host "Deleted localized resx files successfully!"
