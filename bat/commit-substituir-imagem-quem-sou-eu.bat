@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Substituir Imagem Quem Sou Eu
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo atualizado...
git add index.html

echo.
echo Criando commit...
git commit -m "feat: substituir imagem da secao Quem Sou Eu do site principal - nova imagem: layane-2.jpg - atualizada URL da imagem na secao sobre"

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
echo   SUCESSO! Imagem Quem Sou Eu atualizada!
echo ========================================
echo.
pause

