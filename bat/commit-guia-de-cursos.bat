@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Pagina Guia de Cursos
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "feat: criar pagina Guia de Cursos completa - nova pagina html/guia-de-cursos.html com todos cursos e produtos - hero formacao completa naturopata do futuro - secoes cursos e vitalis blend - css dedicado guia-cursos.css responsivo mobile first - atualizado menus com link guia de cursos"

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
echo   SUCESSO! Guia de Cursos criado!
echo ========================================
echo.
pause
