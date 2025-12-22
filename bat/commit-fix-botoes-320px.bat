@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Corrigir Botoes Header 320px
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add css/premium-theme.css

echo.
echo Criando commit...
git commit -m "fix: ajustar botoes header para resolucao 320px - media query 360px para telas muito pequenas - padding e font-size reduzidos ainda mais - nav-cta com ajuste especifico para nao espremer"

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
echo   SUCESSO! Botoes 320px corrigidos!
echo ========================================
echo.
pause

