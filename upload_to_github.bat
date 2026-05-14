@echo off
echo Uploading all files to GitHub...
git add .
git commit -m "Updated to Voxstrap with C++ Injection"
git push
echo.
echo =======================================================
echo GITHUB UPLOAD COMPLETE! 
echo Check your repository online to see all the changes.
echo =======================================================
pause
