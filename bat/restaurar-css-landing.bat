@echo off
chcp 65001 >nul
cd /d "%~dp0\.."
git checkout HEAD -- css/curso-landing.css
echo CSS curso-landing.css restaurado!
pause

