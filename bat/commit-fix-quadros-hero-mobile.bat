@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Corrigir Quadros Hero Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add javascript/script.js
git add css/terapeuta-alta-performance.css
git add css/protocolos-terapeuticos.css
git add css/guia-naturopatia.css

echo.
echo Criando commit...
git commit -m "fix: centralizar quadros hero mobile e remover animacao NaN - JavaScript so anima elementos com data-target - quadros hero stats centralizados com flexbox - stat-item com width 100%% e max-width 300px - aplicado em terapeuta protocolos e guia pratico"

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
echo   SUCESSO! Quadros corrigidos!
echo ========================================
echo.
pause

