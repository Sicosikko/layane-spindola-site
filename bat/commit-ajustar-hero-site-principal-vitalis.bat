@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Ajustar Hero Site Principal
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add css/premium-theme.css

echo.
echo Criando commit...
git commit -m "fix: ajustar hero session site principal para padrao Vitalis Blend - grid-template-columns alterado para 1.2fr 0.8fr - removidas todas sombras da imagem (box-shadow) - removidas todas sombras do texto (text-shadow) - hero-photo max-width ajustado - proporcao igual Vitalis Blend"

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
echo   SUCESSO! Hero ajustado para padrao Vitalis!
echo ========================================
echo.
pause


