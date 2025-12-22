@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Imagem Antes do Texto no Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add css/programa-aceleracao-agape.css
git add css/vitalis-blend.css
git add css/guia-naturopatia.css

echo.
echo Criando commit...
git commit -m "fix: imagem antes do texto no mobile todas landing pages - order -1 para hero-image em 768px - order 2 para hero-text - padrao igual terapeuta alta performance - aplicado em agape vitalis e guia pratico"

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
echo   SUCESSO! Imagem antes do texto no mobile!
echo ========================================
echo.
pause

