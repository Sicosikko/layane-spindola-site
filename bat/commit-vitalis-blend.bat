@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Pagina Vitalis Blend
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos da pagina Vitalis Blend...
git add html/vitalis-blend.html
git add css/vitalis-blend.css

echo.
echo Criando commit...
git commit -m "feat: criar pagina Vitalis Blend - nova pagina html/vitalis-blend.html com 4 sessoes completas - hero com sintomas e chamada, beneficios com 7 cards, resultados com mudancas, cta final - css dedicado vitalis-blend.css com padrao de design e fontes - 5 imagens do produto integradas - responsivo mobile first"

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
echo   SUCESSO! Pagina Vitalis Blend criada e commitada!
echo ========================================
echo.
pause

