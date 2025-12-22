@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Remover Botao Header Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add css/premium-theme.css

echo.
echo Criando commit...
git commit -m "fix: remover botao CTA do header no mobile - nav-cta escondido em 768px - hero session mantida funcional sem alteracoes"

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
echo   SUCESSO! Botao removido do mobile!
echo ========================================
echo.
pause

