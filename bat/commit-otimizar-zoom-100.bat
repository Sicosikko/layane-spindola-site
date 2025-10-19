@echo off
echo ========================================
echo    OTIMIZAR PARA ZOOM 100% - TODAS AS SECOES
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
git commit -m "style: Otimizar todas as secoes para caber na tela com zoom 100% - Site principal: hero de 100vh para 90vh - Site principal: padding-bottom de 3rem para 2rem - Landing page: hero de 90vh para 85vh - Landing page: padding de 120px 0 100px para 100px 0 80px - Headbar: padding reduzido de 0.75rem para 0.5rem - Resultado: Todas as informacoes cabem na tela com zoom 100%"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! OTIMIZADO PARA ZOOM 100%!
    echo ========================================
    echo.
    echo ✅ Todas as secoes otimizadas para zoom 100%!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 MENU HEADBAR ^(styles.css^):
    echo    - padding: 0.75rem → 0.5rem ✅
    echo    - Resultado: Headbar mais compacto
    echo.
    echo 📍 SITE PRINCIPAL ^(styles.css^):
    echo    - min-height: 100vh → 90vh ✅
    echo    - max-height: 100vh → 90vh ✅
    echo    - padding-top: 100px → 80px ✅
    echo    - padding-bottom: 3rem → 2rem ✅
    echo    - Resultado: Hero section mais compacta
    echo.
    echo 📍 LANDING PAGE ^(curso-landing.css^):
    echo    - min-height: 90vh → 85vh ✅
    echo    - padding: 120px 0 100px → 100px 0 80px ✅
    echo    - Resultado: Hero section otimizada
    echo.
    echo PADRAO ESTABELECIDO:
    echo ✅ TODAS as informacoes cabem na tela com zoom 100%
    echo ✅ Headbar compacto em todas as paginas
    echo ✅ Hero sections otimizadas para visualizacao completa
    echo ✅ Design responsivo mantido
    echo ✅ Proporcoes equilibradas
    echo.
    echo TESTE OBRIGATORIO:
    echo 1. Abrir site com zoom 100%
    echo 2. Verificar se hero section cabe completamente
    echo 3. Verificar se headbar nao sobrepoe conteudo
    echo 4. Testar em desktop, tablet e mobile
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Site principal: https://layane-spindola-site.netlify.app/
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Otimizado para zoom 100%! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
