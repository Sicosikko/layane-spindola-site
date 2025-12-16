@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Adicionar CSS Header Landing
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "fix: adicionar CSS header e nav na landing page guia naturopatia - header fixo com backdrop blur - nav menu desktop e mobile - dropdown menu com hover - sidebar mobile responsivo - estilos nav-link com hover dourado - botao CTA estilizado"

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
echo   SUCESSO! CSS Header adicionado!
echo ========================================
echo.
pause

