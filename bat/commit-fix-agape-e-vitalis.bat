@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Paginas Agape e Vitalis Blend
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add html/programa-aceleracao-agape.html
git add css/programa-aceleracao-agape.css
git add html/vitalis-blend.html
git add css/vitalis-blend.css

echo.
echo Criando commit...
git commit -m "feat: criar paginas Programa Agape e Vitalis Blend - html/programa-aceleracao-agape.html com hero, cards de resultados e cta - css/programa-aceleracao-agape.css com header/nav completo corrigido - html/vitalis-blend.html com 4 sessoes e 5 imagens do produto - css/vitalis-blend.css com preco R$298 e responsivo mobile first"

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
echo   SUCESSO! Paginas Agape e Vitalis Blend criadas!
echo ========================================
echo.
pause

