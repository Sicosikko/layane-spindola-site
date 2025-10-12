@echo off
echo ========================================
echo    DEPLOY SITE LAYANE SPINDOLA
echo ========================================
echo.

echo Escolha uma opcao de deploy:
echo.
echo 1. Netlify (Recomendado - Mais facil)
echo 2. Vercel (Alternativa excelente)
echo 3. GitHub Pages (Para desenvolvedores)
echo 4. Surge.sh (Para testes rapidos)
echo 5. Abrir pasta para upload manual
echo.

set /p choice="Digite sua escolha (1-5): "

if "%choice%"=="1" (
    echo.
    echo ========================================
    echo    DEPLOY VIA NETLIFY
    echo ========================================
    echo.
    echo 1. Acesse: https://netlify.com
    echo 2. Faca login/cadastro
    echo 3. Arraste esta pasta para a area "Deploy manually"
    echo 4. Aguarde o deploy (2-3 minutos)
    echo 5. Copie a URL gerada
    echo.
    echo Pressione qualquer tecla para abrir o Netlify...
    pause >nul
    start https://netlify.com
) else if "%choice%"=="2" (
    echo.
    echo ========================================
    echo    DEPLOY VIA VERCEL
    echo ========================================
    echo.
    echo 1. Acesse: https://vercel.com
    echo 2. Faca login/cadastro
    echo 3. Clique em "New Project"
    echo 4. Arraste esta pasta ou conecte com GitHub
    echo 5. Aguarde o deploy
    echo.
    echo Pressione qualquer tecla para abrir o Vercel...
    pause >nul
    start https://vercel.com
) else if "%choice%"=="3" (
    echo.
    echo ========================================
    echo    DEPLOY VIA GITHUB PAGES
    echo ========================================
    echo.
    echo 1. Acesse: https://github.com
    echo 2. Crie um novo repositorio publico
    echo 3. Faca upload dos arquivos
    echo 4. Vá em Settings ^> Pages
    echo 5. Source: Deploy from a branch
    echo 6. Branch: main, Folder: / (root)
    echo 7. Aguarde o deploy (5-10 minutos)
    echo.
    echo Pressione qualquer tecla para abrir o GitHub...
    pause >nul
    start https://github.com
) else if "%choice%"=="4" (
    echo.
    echo ========================================
    echo    DEPLOY VIA SURGE.SH
    echo ========================================
    echo.
    echo Verificando se o Node.js esta instalado...
    node --version >nul 2>&1
    if errorlevel 1 (
        echo ERRO: Node.js nao encontrado!
        echo Instale o Node.js em: https://nodejs.org
        echo.
        pause
        exit /b 1
    )
    echo.
    echo Instalando Surge.sh...
    npm install -g surge
    echo.
    echo Fazendo deploy...
    surge . --domain layane-spindola-site.surge.sh
) else if "%choice%"=="5" (
    echo.
    echo Abrindo pasta do projeto...
    explorer .
) else (
    echo.
    echo Opcao invalida! Tente novamente.
    echo.
    pause
    goto :eof
)

echo.
echo ========================================
echo    DEPLOY CONCLUIDO!
echo ========================================
echo.
echo O site da Layane Spindola esta online!
echo.
echo Proximos passos:
echo 1. Teste o site em diferentes dispositivos
echo 2. Compartilhe a URL com Layane
echo 3. Configure dominio personalizado (opcional)
echo 4. Adicione imagens reais
echo 5. Configure Google Analytics
echo.
echo Pressione qualquer tecla para sair...
pause >nul
