@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   RESTAURAR INDEX.HTML E ATUALIZAR MENUS
echo ========================================
echo.

cd /d "%~dp0.."

echo [1/3] Restaurando index.html do git...
git checkout HEAD -- index.html

if %errorlevel% neq 0 (
    echo [ERRO] Falha ao restaurar index.html!
    pause
    exit /b 1
)

echo [OK] index.html restaurado!
echo.
echo [2/3] Por favor, execute o cursor novamente para atualizar os menus.
echo.
pause

