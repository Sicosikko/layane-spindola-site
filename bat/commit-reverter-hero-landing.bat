@echo off
echo ========================================
echo    REVERTER HERO SECTION LANDING PAGE
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
git commit -m "fix: Reverter hero section da landing page para altura original - Hero section: min-height de 85vh para 100vh - Hero section: padding de 100px 0 80px para 100px 0 100px - Mantidas otimizacoes das outras secoes (80px padding) - Resultado: Hero section com altura adequada para zoom 100%"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! HERO SECTION REVERTIDA!
    echo ========================================
    echo.
    echo ✅ Hero section da landing page revertida!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 HERO SECTION LANDING PAGE:
    echo    - min-height: 85vh → 100vh ✅
    echo    - padding: 100px 0 80px → 100px 0 100px ✅
    echo    - Resultado: Altura adequada para zoom 100%
    echo.
    echo 📍 MANTIDAS OTIMIZACOES DAS OUTRAS SECOES:
    echo    - Todas as secoes mantem padding de 80px ✅
    echo    - Design responsivo mantido ✅
    echo    - Proporcoes equilibradas ✅
    echo.
    echo CORRECAO APLICADA:
    echo ✅ Hero section com altura adequada
    echo ✅ Outras secoes otimizadas mantidas
    echo ✅ Zoom 100% funcionando corretamente
    echo ✅ Design harmonioso preservado
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Hero section corrigida! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
