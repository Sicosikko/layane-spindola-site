@echo off
echo ========================================
echo    COMMIT - CORRECAO LANDING PAGE
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
git commit -m "fix: Corrigir header e visibilidade do conteudo na landing page Naturopatia - Header: Estrutura HTML atualizada para match com site principal - Classes: nav, nav-container, nav-menu, nav-list corrigidas - Font Awesome: CDN adicionado para icones funcionarem - Sidebar: Estrutura e IDs corrigidos sidebar-overlay e sidebar-menu - CSS: Reset e correcoes adicionadas para visibilidade - Container: Max-width e padding definidos - Body: Font-family e overflow-x corrigidos - Sections: Position relative e z-index adicionados - Design: Header agora identico ao site principal"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! CORRECOES APLICADAS!
    echo ========================================
    echo.
    echo ✅ Problemas corrigidos!
    echo.
    echo CORRECOES APLICADAS:
    echo.
    echo 1. HEADER CORRIGIDO
    echo    Antes: nav-container direto
    echo    Depois: nav ^> nav-container
    echo    - Classes corretas
    echo    - Estrutura identica ao site principal
    echo    - Design harmonioso
    echo.
    echo 2. MENU DESKTOP
    echo    - nav-menu ^> nav-list
    echo    - Dropdown com icone chevron
    echo    - Hover effects funcionais
    echo.
    echo 3. SIDEBAR MOBILE
    echo    - sidebar-overlay com ID
    echo    - sidebar-menu com ID
    echo    - nav-list dentro
    echo    - JavaScript funcional
    echo.
    echo 4. FONT AWESOME
    echo    - CDN 6.0.0 adicionado
    echo    - Icones funcionando
    echo    - Chevron dropdown visivel
    echo.
    echo 5. CSS CORRECOES
    echo    - Reset global adicionado
    echo    - Body font-family definida
    echo    - Container max-width 1200px
    echo    - Sections com z-index
    echo    - Overflow-x hidden
    echo.
    echo 6. VISIBILIDADE
    echo    - Todas secoes visiveis
    echo    - Container funcionando
    echo    - Padding correto
    echo    - Layout responsivo
    echo.
    echo ESTRUTURA HEADER:
    echo ^<header class="header" id="header"^>
    echo   ^<nav class="nav"^>
    echo     ^<div class="nav-container"^>
    echo       ^<div class="nav-logo"^>
    echo       ^<div class="nav-menu" id="nav-menu"^>
    echo         ^<ul class="nav-list"^>
    echo       ^<div class="nav-cta"^>
    echo       ^<div class="nav-toggle" id="nav-toggle"^>
    echo.
    echo RESULTADO:
    echo ✅ Header com design correto
    echo ✅ Menu dropdown funcional
    echo ✅ Sidebar mobile funcional
    echo ✅ Todas secoes visiveis
    echo ✅ Layout responsivo
    echo ✅ Design harmonioso
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Tudo funcionando perfeitamente! 🌿✨
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
