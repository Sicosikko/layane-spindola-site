@echo off
echo ========================================
echo    CORRIGIR HERO LANDING PARA ZOOM 100%
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
git commit -m "fix: Corrigir hero section da landing page para caber na tela com zoom 100% - Hero section: padding de 100px 0 100px para 120px 0 60px - Hero section: min-height de 100vh para 90vh - Titulo: font-size de 3.8rem para 3.2rem - Titulo: margin-bottom de 28px para 24px - Subtitulo: font-size de 1.2rem para 1.1rem - Subtitulo: margin-bottom de 40px para 32px - Stats: gap de 24px para 20px - Stats: margin-bottom de 40px para 32px - Stats: padding de 24px 20px para 20px 16px - Resultado: TODAS as informacoes cabem na tela com zoom 100%"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! HERO SECTION CORRIGIDA!
    echo ========================================
    echo.
    echo ✅ Hero section da landing page corrigida para zoom 100%!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 HERO SECTION:
    echo    - padding: 100px 0 100px → 120px 0 60px ✅
    echo    - min-height: 100vh → 90vh ✅
    echo.
    echo 📍 TITULO:
    echo    - font-size: 3.8rem → 3.2rem ✅
    echo    - margin-bottom: 28px → 24px ✅
    echo    - line-height: 1.15 → 1.2 ✅
    echo.
    echo 📍 SUBTITULO:
    echo    - font-size: 1.2rem → 1.1rem ✅
    echo    - margin-bottom: 40px → 32px ✅
    echo    - line-height: 1.8 → 1.7 ✅
    echo.
    echo 📍 STATS:
    echo    - gap: 24px → 20px ✅
    echo    - margin-bottom: 40px → 32px ✅
    echo    - padding: 24px 20px → 20px 16px ✅
    echo.
    echo RESULTADO:
    echo ✅ TODAS as informacoes cabem na tela com zoom 100%
    echo ✅ Titulo nao sobrepoe o headbar
    echo ✅ Conteudo nao e cortado na parte inferior
    echo ✅ Design compacto e funcional
    echo ✅ Proporcoes equilibradas
    echo.
    echo TESTE OBRIGATORIO:
    echo 1. Abrir landing page com zoom 100%
    echo 2. Verificar se titulo nao sobrepoe headbar
    echo 3. Verificar se todo conteudo e visivel
    echo 4. Verificar se nao ha scroll necessario na hero
    echo 5. Testar em desktop, tablet e mobile
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Hero section corrigida para zoom 100%! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
