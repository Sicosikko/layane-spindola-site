@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Centralizar Elementos Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add css/guia-naturopatia.css
git add css/terapeuta-alta-performance.css
git add css/protocolos-terapeuticos.css
git add css/programa-aceleracao-agape.css
git add css/vitalis-blend.css

echo.
echo Criando commit...
git commit -m "fix: centralizar elementos no mobile todas landing pages - titulos subtitulos botoes centralizados em 768px - 3 quadros hero stats centralizados com max-width - textos das sessoes centralizados - apenas texto dentro dos quadros mantido sem centralizar"

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
echo   SUCESSO! Elementos centralizados no mobile!
echo ========================================
echo.
pause

