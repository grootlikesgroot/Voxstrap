$path = "c:\Users\Atul Bhandarkar\OneDrive\Desktop\Voxstrap\GrootInjectionLogic\Voxstrap\Voxstrap\Bootstrapper.cs"
$content = [System.IO.File]::ReadAllText($path)

# First, remove the bad DllImport if it exists inside the constructor or anywhere else
$content = $content -replace '(?s)\[DllImport\("RuntimeFFlagEditor\.dll".*?InjectFlagsFromJSON\(string jsonPath\);', ''

# Add usings at the top if they don't exist
if (-not $content.Contains("using System.Runtime.InteropServices;")) {
    $content = $content -replace "using System.Windows.Shell;", "using System.Windows.Shell;`r`nusing System.Runtime.InteropServices;`r`nusing System.Threading.Tasks;"
}

# Add DllImport correctly inside the class body
$content = $content -replace "public class Bootstrapper\s*\{", "public class Bootstrapper`r`n    {`r`n        [DllImport(`"RuntimeFFlagEditor.dll`", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi)]`r`n        public static extern int InjectFlagsFromJSON(string jsonPath);`r`n"

# Add the Task.Run logic inside StartRoblox
if (-not $content.Contains("InjectFlagsFromJSON(flagsPath)")) {
    $content = $content -replace "_appPid = process.Id;", "_appPid = process.Id;`r`n`r`n                string flagsPath = Path.Combine(Paths.Modifications, `"ClientAppSettings.json`");`r`n                Task.Run(() => InjectFlagsFromJSON(flagsPath));"
}

# Save it back as UTF-8 so the AI tools can read it later without issues
[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
Write-Host "Bootstrapper.cs updated successfully!"
