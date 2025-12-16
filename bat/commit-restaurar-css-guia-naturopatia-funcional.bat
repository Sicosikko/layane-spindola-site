@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Restaurar CSS Funcional
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "fix: restaurar CSS guia pratico naturopatia versao funcional - CSS completo restaurado do commit 2a90c8c - inclui footer padrao site principal - todas secoes funcionais preservadas - nao alterar arquivos prontos sem solicitacao"

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
echo   SUCESSO! CSS restaurado e commitado!
echo ========================================
echo.
pause

