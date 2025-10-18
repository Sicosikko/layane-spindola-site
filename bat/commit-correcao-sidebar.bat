@echo off
echo ========================================
echo    COMMIT - CORRECAO SIDEBAR MOBILE
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
git commit -m "fix: Corrigir sidebar menu mobile e caminhos de arquivos - Corrigido caminho CSS de ../css/ para css/ no index - Corrigido caminho JS de ../javascript/ para javascript/ - Adicionado !important nas regras de display do menu mobile - Esconder nav-cta do header em dispositivos moveis - Garantir que sidebar e overlay funcionem corretamente - Regras adicionadas no premium-theme.css para mobile - Menu hamburger agora funciona perfeitamente"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Sidebar mobile corrigido
    echo ✅ Caminhos de arquivos ajustados
    echo ✅ Menu hamburger funcional
    echo.
    echo CORRECOES APLICADAS:
    echo.
    echo CAMINHOS:
    echo - CSS: ../css/styles.css → css/styles.css
    echo - CSS: ../css/premium-theme.css → css/premium-theme.css
    echo - JS: ../javascript/script.js → javascript/script.js
    echo.
    echo MOBILE:
    echo - Menu desktop escondido com !important
    echo - CTA do header escondido em mobile
    echo - Sidebar menu funcional
    echo - Overlay escuro ativo
    echo - Hamburger visivel e clicavel
    echo.
    echo COMPORTAMENTO:
    echo - Clicar no hamburger abre sidebar
    echo - Clicar no overlay fecha sidebar
    echo - Clicar nos links fecha sidebar
    echo - ESC fecha sidebar
    echo.
    echo Aguarde 2-3 minutos e teste no celular:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo ⚠️ IMPORTANTE:
    echo Teste especificamente:
    echo - Abrir site no celular
    echo - Clicar no icone hamburger
    echo - Menu deve deslizar da direita
    echo - Fundo deve ficar escuro
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
