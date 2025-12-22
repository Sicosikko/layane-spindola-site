@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Atualizar Imagens Vitalis Blend
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo atualizado...
git add html/vitalis-blend.html

echo.
echo Criando commit...
git commit -m "feat: atualizar imagens da landing page Vitalis Blend - substituidas 5 imagens por novas versoes - hero, beneficios, resultados e cta atualizados"

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
echo   SUCESSO! Imagens atualizadas!
echo ========================================
echo.
pause

