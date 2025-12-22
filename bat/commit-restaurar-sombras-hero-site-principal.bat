@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Restaurar Sombras Hero Site Principal
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add css/premium-theme.css

echo.
echo Criando commit...
git commit -m "fix: restaurar sombras e filtros hero site principal - box-shadow restaurado (sem dourado) - filter brightness/contrast restaurado - border dourado restaurado - hover effects restaurados"

if %errorlevel% neq 0 (
    echo.
    echo [ERRO] Falha no commit!
    pause
    exit /b 1
)

echo.
echo Enviando para o repositorio...
git push

if %errorlevel% neq 0 (
    echo.
    echo [ERRO] Falha no push!
    pause
    exit /b 1
)

echo.
echo ========================================
echo   SUCESSO! Sombras e filtros restaurados!
echo ========================================
echo.
pause


