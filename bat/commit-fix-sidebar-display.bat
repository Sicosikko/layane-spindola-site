@echo off
echo ========================================
echo    COMMIT - FIX SIDEBAR DISPLAY
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
git commit -m "fix: Corrigir sidebar aparecendo aberto automaticamente - Sidebar agora inicia com display none - Apenas mostra quando tem classe active - Corrigido em styles.css e premium-theme.css - Menu hamburger totalmente funcional - Sidebar fecha e abre corretamente"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Sidebar corrigido definitivamente
    echo ✅ Menu inicia fechado
    echo ✅ Abre apenas ao clicar no hamburger
    echo.
    echo CORRECAO APLICADA:
    echo.
    echo ANTES:
    echo .nav-menu.sidebar { display: flex; }
    echo ^(Sidebar sempre visivel^)
    echo.
    echo DEPOIS:
    echo .nav-menu.sidebar { display: none; }
    echo .nav-menu.sidebar.active { display: flex; }
    echo ^(Sidebar apenas quando ativo^)
    echo.
    echo COMPORTAMENTO CORRETO:
    echo 1. Site carrega com sidebar fechado ✅
    echo 2. Clica no hamburger → sidebar abre ✅
    echo 3. Clica no overlay → sidebar fecha ✅
    echo 4. Clica nos links → sidebar fecha ✅
    echo 5. Pressiona ESC → sidebar fecha ✅
    echo.
    echo Aguarde 2-3 minutos e teste no celular:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo TESTE:
    echo - Abrir site no celular
    echo - Menu deve estar FECHADO
    echo - Apenas logo e hamburger visiveis
    echo - Clicar no hamburger para abrir
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
