@echo off
echo ========================================
echo    REDUZIR ALTURA DA HERO SECTION
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
git commit -m "style: Reduzir altura da hero section no site principal e landing page - Site principal: min-height de 100vh para 70vh - Site principal: max-height de 100vh para 70vh - Site principal: padding-top de 100px para 120px - Site principal: padding-bottom de 3rem para 80px - Landing page: min-height de 90vh para 70vh - Landing page: padding-bottom de 100px para 80px - Resultado: Hero section mais compacta e proporcional em desktop"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! HERO SECTION REDUZIDA!
    echo ========================================
    echo.
    echo ✅ Altura da hero section reduzida!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 SITE PRINCIPAL ^(styles.css^):
    echo    ANTES:
    echo    - min-height: 100vh
    echo    - max-height: 100vh
    echo    - padding-top: 100px
    echo    - padding-bottom: 3rem
    echo.
    echo    DEPOIS:
    echo    - min-height: 70vh ✅
    echo    - max-height: 70vh ✅
    echo    - padding-top: 120px ✅
    echo    - padding-bottom: 80px ✅
    echo.
    echo 📍 LANDING PAGE ^(curso-landing.css^):
    echo    ANTES:
    echo    - min-height: 90vh
    echo    - padding: 140px 0 100px
    echo.
    echo    DEPOIS:
    echo    - min-height: 70vh ✅
    echo    - padding: 140px 0 80px ✅
    echo.
    echo RESULTADO:
    echo ✅ Hero section 30%% mais compacta
    echo ✅ Melhor proporcao visual
    echo ✅ Conteudo mais acessivel
    echo ✅ Menos scroll necessario
    echo ✅ Design mais equilibrado
    echo.
    echo PADRAO MANTIDO:
    echo ✅ 70vh sera o padrao para proximas landing pages
    echo ✅ Padding consistente: 140px top, 80px bottom
    echo ✅ Design harmonizado entre site e landing pages
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Site principal: https://layane-spindola-site.netlify.app/
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Hero section reduzida! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
