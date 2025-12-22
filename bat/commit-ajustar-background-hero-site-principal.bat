@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Ajustar Background Hero Site Principal
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add css/premium-theme.css

echo.
echo Criando commit...
git commit -m "fix: ajustar background hero site principal para padrao Guia de Cursos - gradiente verde simplificado (sem padrao SVG) - overlay com gradientes radiais animados - variaveis de cor verde atualizadas - mesmo padrao visual do Guia de Cursos"

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
echo   SUCESSO! Background hero ajustado!
echo ========================================
echo.
pause


