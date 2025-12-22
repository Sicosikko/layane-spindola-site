@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Ajustar Texto Beneficios Mobile
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo corrigido...
git add css/guia-naturopatia.css

echo.
echo Criando commit...
git commit -m "fix: ajustar texto espremido na secao O que voce recebe mobile - padding aumentado para 2.5rem em 768px e 2rem em 480px - line-height aumentado para 1.8 - gap entre icone e texto aumentado - padding dos itens aumentado - fonte ligeiramente maior para melhor legibilidade"

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
echo   SUCESSO! Texto beneficios ajustado!
echo ========================================
echo.
pause

