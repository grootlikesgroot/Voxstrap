@echo off
echo Publishing Voxstrap into a single standalone EXE...
dotnet publish "c:\Users\Atul Bhandarkar\OneDrive\Desktop\Voxstrap\GrootInjectionLogic\Voxstrap\Voxstrap\Voxstrap.csproj" -c Release -r win-x64 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true
echo.
echo =======================================================
echo PUBLISH COMPLETE!
echo Your standalone Voxstrap.exe is located here:
echo c:\Users\Atul Bhandarkar\OneDrive\Desktop\Voxstrap\GrootInjectionLogic\Voxstrap\Voxstrap\bin\Release\net6.0-windows\win-x64\publish\
echo =======================================================
pause
