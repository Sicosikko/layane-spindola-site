@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Fix Header Guia Cursos Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add html/guia-de-cursos.html

echo.
echo Criando commit...
git commit -m "fix: adicionar sidebar menu mobile no guia de cursos - sidebar-overlay e sidebar-menu adicionados - menu hamburguer agora funcional - estrutura igual outras paginas funcionais"

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
echo   SUCESSO! Header mobile corrigido!
echo ========================================
echo.
pause

