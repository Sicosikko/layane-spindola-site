@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Ajustar Espacamento Botao Garantia Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add css/guia-naturopatia.css

echo.
echo Criando commit...
git commit -m "fix: ajustar espacamento botao acima do escudo garantia mobile - margin-bottom 40px no botao em 768px - margin-bottom 35px no botao em 480px - margin-top 0 na garantia-box e cta-final-garantia - evita sobreposicao do botao com escudo"

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
echo   SUCESSO! Espacamento botao ajustado!
echo ========================================
echo.
pause

