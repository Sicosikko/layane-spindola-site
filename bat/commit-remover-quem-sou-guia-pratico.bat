@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Remover Secao Quem Sou Eu
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add html/guia-pratico-naturopatia.html

echo.
echo Criando commit...
git commit -m "feat: remover secao Quem Sou Eu da landing page guia pratico - secao sobre-layane removida completamente - mantidas demais secoes intactas"

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
echo   SUCESSO! Secao removida!
echo ========================================
echo.
pause

