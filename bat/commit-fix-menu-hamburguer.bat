@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Corrigir Menu Hamburguer Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add javascript/script.js

echo.
echo Criando commit...
git commit -m "fix: restaurar funcionalidade do menu hamburguer mobile - script.js recriado com eventos de click - toggle do menu sidebar funcional - overlay para fechar menu - fechar ao clicar em links"

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
echo   SUCESSO! Menu hamburguer corrigido!
echo ========================================
echo.
pause

