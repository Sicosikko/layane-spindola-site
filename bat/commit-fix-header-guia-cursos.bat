@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Corrigir Header Guia de Cursos
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add html/guia-de-cursos.html
git add css/guia-cursos.css

echo.
echo Criando commit...
git commit -m "fix: padronizar header da pagina Guia de Cursos - HTML atualizado para estrutura padrao com nav-container nav-logo - removido CSS customizado do header para usar premium-theme.css - menu agora usa o design dourado igual outras paginas"

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
echo   SUCESSO! Header padronizado!
echo ========================================
echo.
pause

