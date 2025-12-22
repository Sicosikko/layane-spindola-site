@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Restaurar Script Menu Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add javascript/script.js

echo.
echo Verificando se ha mudancas...
git status javascript/script.js

echo.
echo Criando commit...
git commit -m "fix: restaurar script.js completo com menu mobile funcional - script.js restaurado do commit funcional - initMobileMenu completo e funcional - correcao NaN mantida (so anima elementos com data-target)"

if %errorlevel% neq 0 (
    echo.
    echo [ERRO] Falha no commit!
    echo Verifique se ha mudancas para commitar.
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
echo   SUCESSO! Menu mobile restaurado!
echo ========================================
echo.
pause
