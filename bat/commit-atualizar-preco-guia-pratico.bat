@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Atualizar Preco Guia Pratico
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo atualizado...
git add html/guia-pratico-naturopatia.html

echo.
echo Criando commit...
git commit -m "feat: atualizar preco do guia pratico de naturopatia - preco a vista: R$ 798,00 - parcelado: 12x de R$ 82,53 * no cartao"

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
echo   SUCESSO! Preco atualizado!
echo ========================================
echo.
pause

