@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Corrigir Botoes Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add css/premium-theme.css

echo.
echo Criando commit...
git commit -m "fix: ajustar tamanho dos botoes para mobile - padding e font-size reduzidos em 768px tablet - ainda mais reduzidos em 480px mobile pequeno - botoes agora cabem melhor nas telas menores"

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
echo   SUCESSO! Botoes mobile corrigidos!
echo ========================================
echo.
pause

