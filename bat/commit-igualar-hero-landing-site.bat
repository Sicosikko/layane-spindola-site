@echo off
echo ========================================
echo    IGUALAR HERO LANDING COM SITE PRINCIPAL
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
git commit -m "style: Igualar hero section da landing page com o site principal - Hero landing: min-height de 60vh para 90vh - Hero landing: adicionado max-height 90vh - Hero landing: padding de 100px 0 40px para 80px 0 2rem - Resultado: Hero section da landing page com mesmo tamanho do site principal"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! HERO SECTIONS IGUALADAS!
    echo ========================================
    echo.
    echo ✅ Hero section da landing page igualada ao site principal!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 HERO SECTION LANDING PAGE:
    echo    - min-height: 60vh → 90vh ✅
    echo    - max-height: adicionado 90vh ✅
    echo    - padding: 100px 0 40px → 80px 0 2rem ✅
    echo.
    echo 📍 COMPARACAO COM SITE PRINCIPAL:
    echo    - Site principal: min-height 90vh, max-height 90vh, padding 80px 0 2rem
    echo    - Landing page: min-height 90vh, max-height 90vh, padding 80px 0 2rem
    echo    - RESULTADO: Tamanhos identicos! ✅
    echo.
    echo BENEFICIOS:
    echo ✅ Hero sections com tamanho identico
    echo ✅ Consistencia visual entre site e landing page
    echo ✅ Todas as informacoes cabem na tela com zoom 100%
    echo ✅ Design harmonioso e profissional
    echo ✅ Experiencia do usuario consistente
    echo.
    echo TESTE OBRIGATORIO:
    echo 1. Abrir site principal com zoom 100%
    echo 2. Abrir landing page com zoom 100%
    echo 3. Comparar tamanhos das hero sections
    echo 4. Verificar se todas as informacoes cabem na tela
    echo 5. Testar em desktop, tablet e mobile
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Site principal: https://layane-spindola-site.netlify.app/
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Hero sections igualadas! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
