@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Terapeuta Alta Performance
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "feat: criar pagina terapeuta de alta performance - nova pagina html/terapeuta-alta-performance.html - hero com stats e imagem do curso - secao diferencial 6 cards (processos comunicacao profundidade postura resultados referencia) - secao conteudo do curso - secao para quem e - cta preco 998 ou 12x 103,22 - faq accordion - css dedicado terapeuta-alta-performance.css - fontes Poppins e Playfair Display - mobile first responsivo"

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
echo   SUCESSO! Pagina criada e commitada!
echo ========================================
echo.
pause

