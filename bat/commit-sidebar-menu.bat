@echo off
echo ========================================
echo    COMMIT - SIDEBAR MENU HAMBURGER
echo ========================================
echo.

echo Verificando status...
git status

echo.
echo Adicionando arquivos...
git add .
git add -A

echo.
echo Fazendo commit...
git commit -m "feat: Implementar sidebar menu hamburger para mobile e tablet - Menu desktop permanece visivel apenas em telas grandes - Sidebar menu desliza da direita em mobile e tablet - Overlay escuro com blur fecha o menu ao clicar fora - Icone hamburger anima para X quando aberto - Menu fecha ao clicar em links, overlay, ESC ou redimensionar - Hero padding reduzido para 90px tablet e 85px mobile - Header limpo e simples em dispositivos moveis - LinkedIn ja removido do rodape"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Sidebar menu hamburger implementado
    echo ✅ Header mobile simplificado
    echo ✅ Experiencia mobile otimizada
    echo.
    echo FUNCIONALIDADES DO SIDEBAR:
    echo - Desliza da direita ao clicar no hamburger
    echo - Overlay escuro fecha ao clicar fora
    echo - Fecha com tecla ESC
    echo - Fecha ao clicar nos links
    echo - Fecha automaticamente ao redimensionar para desktop
    echo - Hamburger anima para X
    echo - Previne scroll do body quando aberto
    echo.
    echo MELHORIAS NO HEADER:
    echo - Mobile/Tablet: apenas logo e hamburger
    echo - Desktop: menu completo visivel
    echo - Hero padding reduzido em mobile (85px) e tablet (90px)
    echo - Titulo nao sobrepoe mais o header
    echo.
    echo Aguarde 2-3 minutos e teste em dispositivos moveis:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Teste as funcionalidades:
    echo - Clicar no hamburger
    echo - Clicar fora do menu
    echo - Clicar nos links
    echo - Pressionar ESC
    echo - Redimensionar a tela
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
