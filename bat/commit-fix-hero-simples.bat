@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Correcao Hero Simples e Funcional
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add css/programa-aceleracao-agape.css
git add css/vitalis-blend.css

echo.
echo Criando commit...
git commit -m "fix: simplificar hero Agape e Vitalis para funcionar corretamente - grid simples 1.2fr 0.8fr sem conflitos - remover display flex que quebrava o layout - container max-width 1200px centralizado - responsivo mobile com 1 coluna"

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
echo   SUCESSO! Hero simplificado e funcional!
echo ========================================
echo.
pause

