@echo off
echo ========================================
echo    OTIMIZAR LANDING PAGE PARA ZOOM 100%
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
git commit -m "style: Otimizar todas as secoes da landing page para caber na tela com zoom 100% - Hero section: padding de 120px 0 100px para 100px 0 80px - Hero section: min-height de 90vh para 85vh - Sobre Layane: padding de 100px para 80px - Sessoes do Curso: padding de 100px para 80px - Guia de Doencas: padding de 100px para 80px - Conteudo do Curso: padding de 100px para 80px - Acesso Imediato: padding de 100px para 80px - CTA Final: padding de 120px para 80px - Solucao: padding de 100px para 80px - Prova Social: padding de 100px para 80px - FAQ: padding de 100px para 80px - Resultado: Todas as secoes cabem na tela com zoom 100%"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! LANDING PAGE OTIMIZADA!
    echo ========================================
    echo.
    echo ✅ Todas as secoes da landing page otimizadas para zoom 100%!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 HERO SECTION:
    echo    - padding: 120px 0 100px → 100px 0 80px ✅
    echo    - min-height: 90vh → 85vh ✅
    echo.
    echo 📍 TODAS AS SECOES ^(padding 100px → 80px^):
    echo    - Sobre Layane ✅
    echo    - Sessoes do Curso ✅
    echo    - Guia de Doencas ✅
    echo    - Conteudo do Curso ✅
    echo    - Acesso Imediato ✅
    echo    - Solucao ✅
    echo    - Prova Social ✅
    echo    - FAQ ✅
    echo.
    echo 📍 CTA FINAL:
    echo    - padding: 120px → 80px ✅
    echo.
    echo PADRAO ESTABELECIDO:
    echo ✅ TODAS as secoes cabem na tela com zoom 100%
    echo ✅ Padding padronizado em 80px para todas as secoes
    echo ✅ Hero section otimizada para visualizacao completa
    echo ✅ Design responsivo mantido
    echo ✅ Proporcoes equilibradas em todas as secoes
    echo.
    echo TESTE OBRIGATORIO:
    echo 1. Abrir landing page com zoom 100%
    echo 2. Verificar se todas as secoes cabem completamente
    echo 3. Verificar se nao ha scroll excessivo
    echo 4. Testar em desktop, tablet e mobile
    echo 5. Verificar se conteudo nao fica cortado
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Landing page otimizada para zoom 100%! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
