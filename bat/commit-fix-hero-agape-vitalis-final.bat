@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Correcao Final Hero Agape e Vitalis
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add html/programa-aceleracao-agape.html
git add css/programa-aceleracao-agape.css
git add html/vitalis-blend.html
git add css/vitalis-blend.css

echo.
echo Criando commit...
git commit -m "fix: corrigir hero section Agape e Vitalis - classes renomeadas para produto-hero (igual guia pratico) - evita conflito com premium-theme.css - grid 1.1fr 0.9fr para layout correto - display flex align-items center min-height 90vh"

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
echo   SUCESSO! Hero corrigido!
echo ========================================
echo.
pause

