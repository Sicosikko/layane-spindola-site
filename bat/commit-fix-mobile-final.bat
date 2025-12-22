@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Ajustes Finais Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add css/premium-theme.css
git add css/guia-naturopatia.css
git add javascript/script.js

echo.
echo Criando commit...
git commit -m "fix: ajustes finais mobile - botoes responsivos com fonte e padding reduzidos em 768px e 480px - script.js restaurado do commit anterior - menu hamburguer funcional mantido"

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
echo   SUCESSO! Ajustes mobile aplicados!
echo ========================================
echo.
pause

