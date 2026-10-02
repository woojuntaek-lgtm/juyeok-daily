@echo off
cd /d "%~dp0"
echo SHA-256 of index.html:
certutil -hashfile index.html SHA256
echo.
echo Copy the long 64-character line above into the GitHub release notes.
pause
