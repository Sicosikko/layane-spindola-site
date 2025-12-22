@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Restaurar Script.js Funcional
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo restaurado...
git add javascript/script.js

echo.
echo Criando commit...
git commit -m "fix: restaurar script.js funcional completo - script.js restaurado com conteudo funcional completo - correcao NaN aplicada (so anima elementos com data-target) - menu mobile funcional mantido - todas funcionalidades preservadas"

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
echo   SUCESSO! Script.js restaurado!
echo ========================================
echo.
pause

