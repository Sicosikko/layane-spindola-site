@echo off
echo ========================================
echo    REDUZIR ALTURA DO MENU HEADBAR
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
git commit -m "style: Reduzir altura do menu headbar e ajustar padding das hero sections - Headbar: padding de 0.75rem para 0.5rem - Site principal: padding-top da hero de 100px para 80px - Landing page: padding-top da hero de 140px para 120px - Resultado: Menu mais compacto e melhor espacamento visual"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! HEADBAR REDUZIDO!
    echo ========================================
    echo.
    echo ✅ Altura do menu headbar reduzida!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 MENU HEADBAR ^(styles.css^):
    echo    ANTES:
    echo    - padding: 0.75rem 2rem
    echo.
    echo    DEPOIS:
    echo    - padding: 0.5rem 2rem ✅
    echo.
    echo 📍 SITE PRINCIPAL ^(styles.css^):
    echo    ANTES:
    echo    - padding-top: 100px
    echo.
    echo    DEPOIS:
    echo    - padding-top: 80px ✅
    echo.
    echo 📍 LANDING PAGE ^(curso-landing.css^):
    echo    ANTES:
    echo    - padding: 140px 0 100px
    echo.
    echo    DEPOIS:
    echo    - padding: 120px 0 100px ✅
    echo.
    echo RESULTADO:
    echo ✅ Menu headbar mais compacto
    echo ✅ Melhor proporcao visual
    echo ✅ Hero section ajustada ao novo headbar
    echo ✅ Menos espaco desperdicado
    echo ✅ Design mais equilibrado
    echo.
    echo CORRECAO APLICADA:
    echo ✅ Revertidas alteracoes da altura da hero section
    echo ✅ Foco na reducao do headbar conforme solicitado
    echo ✅ Padding das hero sections ajustado proporcionalmente
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Site principal: https://layane-spindola-site.netlify.app/
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Menu headbar reduzido! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
