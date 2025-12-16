@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Fix Landing Page CSS Completo
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "fix: restaurar CSS completo landing page - HTML agora linka premium-theme.css (header nav btn section-title) + guia-naturopatia.css (hero sobre certificacoes) - CSS restaurado do commit 2a90c8c - corrigido problema de estilos faltando"

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
echo   SUCESSO! Landing page corrigida!
echo ========================================
echo.
pause

