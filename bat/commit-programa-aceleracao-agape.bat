@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Pagina Programa Aceleracao Agape
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos da pagina Programa Aceleracao Agape...
git add html/programa-aceleracao-agape.html
git add css/programa-aceleracao-agape.css

echo.
echo Criando commit...
git commit -m "feat: criar pagina Programa Aceleracao Agape - nova pagina html/programa-aceleracao-agape.html com informacoes do programa - css dedicado programa-aceleracao-agape.css com padrao de design e fontes - hero section, secao de resultados com 6 cards, cta final e footer - responsivo mobile first"

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
echo   SUCESSO! Pagina Programa Aceleracao Agape criada e commitada!
echo ========================================
echo.
pause

