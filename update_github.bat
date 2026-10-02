@echo off
rem Commit and push all changes in this folder to GitHub.
cd /d "%~dp0"
git add -A
git commit -m "Update"
git push
echo.
echo Done. GitHub Pages updates in 1-2 minutes.
pause
