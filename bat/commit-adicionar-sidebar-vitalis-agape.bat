@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Adicionar Sidebar Vitalis e Agape
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add html/vitalis-blend.html
git add html/programa-aceleracao-agape.html

echo.
echo Criando commit...
git commit -m "fix: adicionar sidebar menu nas paginas Vitalis e Agape - elementos sidebar-overlay e sidebar-menu adicionados - menu hamburguer agora funcional nas duas paginas - estrutura igual ao guia pratico"

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
echo   SUCESSO! Sidebar adicionada!
echo ========================================
echo.
pause

