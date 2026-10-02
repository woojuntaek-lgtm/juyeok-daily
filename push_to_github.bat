@echo off
rem Upload this folder to a NEW EMPTY GitHub repository.
rem 1) Create an empty repo on github.com (no README/license), 2) run this file, 3) paste the repo URL.
cd /d "%~dp0"
where git >nul 2>nul
if errorlevel 1 (
  echo Git is not installed. Install it from https://git-scm.com/ and run again.
  pause
  exit /b 1
)
set /p REPO=Paste the GitHub repo URL (https://github.com/USER/REPO.git): 
if "%REPO%"=="" (
  echo No URL entered.
  pause
  exit /b 1
)
if not exist .git git init -b main
git add -A
git commit -m "Initial release: Daily I Ching"
git remote remove origin >nul 2>nul
git remote add origin %REPO%
git push -u origin main
echo.
echo Done. Next: GitHub repo - Settings - Pages - Branch: main / root - Save.
pause
