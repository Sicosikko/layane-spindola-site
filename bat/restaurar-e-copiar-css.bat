@echo off
chcp 65001 >nul
cd /d "%~dp0\.."
echo Restaurando CSS original...
git checkout HEAD -- css/curso-landing.css
echo CSS restaurado!
pause

