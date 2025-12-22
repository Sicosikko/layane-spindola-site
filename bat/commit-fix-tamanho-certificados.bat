@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Corrigir Tamanho Certificados Hero
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add css/guia-naturopatia.css

echo.
echo Criando commit...
git commit -m "fix: ajustar tamanho das imagens MEC e UNIFATEC na hero - adicionar object-fit contain para cert-logo - imagens agora cabem no quadro igual ABRATH"

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
echo   SUCESSO! Tamanho dos certificados corrigido!
echo ========================================
echo.
pause

