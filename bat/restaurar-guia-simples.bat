@echo off
chcp 65001 >nul
echo ========================================
echo RESTAURAR: Guia Pratico Naturopatia
echo ========================================
echo.

cd /d "%~dp0\.."

echo Restaurando arquivo...
git checkout HEAD -- html/guia-pratico-naturopatia.html

echo.
echo Arquivo restaurado!
echo.
pause

