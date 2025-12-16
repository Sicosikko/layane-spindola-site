@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Backup CSS Guia Prático Naturopatia
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "backup: restauracao CSS guia pratico de naturopatia - backup do arquivo CSS original substituido para corrigir quebra"

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
echo   SUCESSO! Backup CSS commitado!
echo ========================================
echo.
pause

