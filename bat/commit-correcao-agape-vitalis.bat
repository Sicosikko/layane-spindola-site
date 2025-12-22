@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Correcao Paginas Agape e Vitalis
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
git commit -m "fix: corrigir header e hero das paginas Agape e Vitalis - HTML atualizado para estrutura padrao com nav-container nav-logo nav-list - CSS hero com important para sobrescrever conflitos premium-theme - grid-column auto para layout correto texto e imagem lado a lado"

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
echo   SUCESSO! Correcoes aplicadas!
echo ========================================
echo.
pause

