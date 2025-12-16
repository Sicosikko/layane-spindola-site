@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Fix Emoji Encoding Menu
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "fix: corrigir encoding emoji menu Guia de Cursos - emoji livro corrigido no index.html e guia-pratico-naturopatia.html"

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
echo   SUCESSO! Emoji corrigido!
echo ========================================
echo.
pause

