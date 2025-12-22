@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Substituir Imagem Hero Index
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo atualizado...
git add index.html

echo.
echo Criando commit...
git commit -m "feat: substituir imagem do hero session do site principal - nova imagem: Naturopatia-Pratica.jpg - atualizada URL da imagem no hero"

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
echo   SUCESSO! Imagem do hero atualizada!
echo ========================================
echo.
pause

