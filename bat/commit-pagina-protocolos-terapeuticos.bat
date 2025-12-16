@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Pagina Protocolos Terapeuticos
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "feat: criar pagina protocolos terapeuticos - nova pagina html/protocolos-terapeuticos.html - hero com imagem e stats 60 protocolos word acesso vitalicio - secao beneficios com 4 cards - secao para quem sao os protocolos - cta com preco 997 ou 12x 103,11 - faq com accordion - css dedicado protocolos-terapeuticos.css - fontes Poppins e Playfair Display padrao site - mobile first responsivo"

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

