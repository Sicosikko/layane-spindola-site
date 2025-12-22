@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Restaurar Script e Remover Botao Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add javascript/script.js
git add css/premium-theme.css

echo.
echo Criando commit...
git commit -m "fix: restaurar script.js completo e remover botao header mobile - script.js restaurado do commit funcional com todas funcionalidades - nav-cta escondido em 768px para mobile - menu hamburguer funcional mantido"

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
echo   SUCESSO! Script restaurado e botao removido!
echo ========================================
echo.
pause

