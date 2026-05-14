$ErrorActionPreference = "Stop"

$rootDir = "c:\Users\Atul Bhandarkar\OneDrive\Desktop\Voxstrap\GrootInjectionLogic\Voxstrap"

Write-Host "Renaming directories..."
$dirsToRename = Get-ChildItem -Path $rootDir -Recurse -Directory | Where-Object { $_.Name -like "*Bloxstrap*" }
foreach ($dir in $dirsToRename | Sort-Object -Property @{Expression={$_.FullName.Length}; Descending=$true}) {
    $newName = $dir.Name -replace "Bloxstrap", "Voxstrap" -replace "bloxstrap", "voxstrap"
    Rename-Item -Path $dir.FullName -NewName $newName
}

Write-Host "Renaming files..."
$filesToRename = Get-ChildItem -Path $rootDir -Recurse -File | Where-Object { $_.Name -like "*Bloxstrap*" }
foreach ($file in $filesToRename) {
    $newName = $file.Name -replace "Bloxstrap", "Voxstrap" -replace "bloxstrap", "voxstrap"
    Rename-Item -Path $file.FullName -NewName $newName
}

Write-Host "Replacing content in files..."
$filesToModify = Get-ChildItem -Path $rootDir -Recurse -File -Include *.cs, *.xaml, *.csproj, *.sln, *.json, *.md, *.txt, *.resx, *.settings
foreach ($file in $filesToModify) {
    $content = Get-Content -Path $file.FullName -Raw
    $newContent = $content -replace "Bloxstrap", "Voxstrap" -replace "bloxstrap", "voxstrap" -replace "BLOXSTRAP", "VOXSTRAP"
    if ($content -ne $newContent) {
        Set-Content -Path $file.FullName -Value $newContent -NoNewline
    }
}

Write-Host "Rebrand script completed successfully."
