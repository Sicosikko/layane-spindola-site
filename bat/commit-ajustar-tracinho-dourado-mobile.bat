@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Ajustar Tracinho Dourado Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add css/guia-naturopatia.css

echo.
echo Criando commit...
git commit -m "fix: ajustar tracinho dourado abaixo dos titulos no mobile - padding-bottom aumentado para 2rem no mobile - bottom do ::after ajustado para -20px - margin-bottom aumentado para 2.5rem - evita tracinho sobrepor texto em titulos multilinha"

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
echo   SUCESSO! Tracinho dourado ajustado!
echo ========================================
echo.
pause

