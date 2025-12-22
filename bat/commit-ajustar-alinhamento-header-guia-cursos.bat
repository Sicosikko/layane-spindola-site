@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Ajustar Alinhamento Header Guia Cursos
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add css/guia-cursos.css

echo.
echo Criando commit...
git commit -m "fix: ajustar alinhamento header mobile guia de cursos - nav-container com justify-content space-between - nav-logo alinhado a esquerda - nav-toggle alinhado a direita - padrao igual outras paginas"

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
echo   SUCESSO! Alinhamento header corrigido!
echo ========================================
echo.
pause

