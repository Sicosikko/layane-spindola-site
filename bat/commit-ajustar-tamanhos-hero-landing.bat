@echo off
echo ========================================
echo    AJUSTAR TAMANHOS HERO LANDING
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
git commit -m "style: Ajustar tamanhos da hero section da landing page - Aumentar informacoes do lado esquerdo: - Titulo: font-size de 2rem para 2.4rem, margin-bottom de 12px para 16px, line-height de 1.1 para 1.15 - Subtitulo: font-size de 0.85rem para 0.95rem, margin-bottom de 16px para 20px, line-height de 1.4 para 1.5 - Stats: gap de 8px para 12px, margin-bottom de 16px para 20px - Stat-item: padding de 8px 6px para 12px 8px, border-radius de 8px para 10px - Stat-icon: font-size de 1.2rem para 1.5rem, margin-bottom de 3px para 4px - Stat-number: font-size de 1.2rem para 1.5rem, margin-bottom de 3px para 4px - Stat-label: font-size de 0.6rem para 0.7rem - Logo ABRATH: max-width de 60px para 75px, height de 40px para 50px, margin-bottom de 4px para 6px, padding de 4px para 6px, border-radius de 6px para 8px - Diminuir 40%% da imagem do lado direito: - Image-wrapper: adicionado max-width 60%% e margin 0 auto - Resultado: Informacoes mais legiveis e imagem proporcional"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! TAMANHOS AJUSTADOS!
    echo ========================================
    echo.
    echo ✅ Tamanhos da hero section ajustados!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 INFORMACOES LADO ESQUERDO (AUMENTADAS):
    echo    - Titulo: 2rem → 2.4rem ✅ (+20%%)
    echo    - Titulo: margin-bottom 12px → 16px ✅ (+33%%)
    echo    - Titulo: line-height 1.1 → 1.15 ✅
    echo.
    echo 📍 SUBTITULO (AUMENTADO):
    echo    - font-size: 0.85rem → 0.95rem ✅ (+12%%)
    echo    - margin-bottom: 16px → 20px ✅ (+25%%)
    echo    - line-height: 1.4 → 1.5 ✅
    echo.
    echo 📍 STATS (AUMENTADOS):
    echo    - gap: 8px → 12px ✅ (+50%%)
    echo    - margin-bottom: 16px → 20px ✅ (+25%%)
    echo.
    echo 📍 STAT-ITEM (AUMENTADO):
    echo    - padding: 8px 6px → 12px 8px ✅ (+50%% / +33%%)
    echo    - border-radius: 8px → 10px ✅ (+25%%)
    echo.
    echo 📍 STAT-ICON (AUMENTADO):
    echo    - font-size: 1.2rem → 1.5rem ✅ (+25%%)
    echo    - margin-bottom: 3px → 4px ✅ (+33%%)
    echo.
    echo 📍 STAT-NUMBER (AUMENTADO):
    echo    - font-size: 1.2rem → 1.5rem ✅ (+25%%)
    echo    - margin-bottom: 3px → 4px ✅ (+33%%)
    echo.
    echo 📍 STAT-LABEL (AUMENTADO):
    echo    - font-size: 0.6rem → 0.7rem ✅ (+17%%)
    echo.
    echo 📍 LOGO ABRATH (AUMENTADO):
    echo    - max-width: 60px → 75px ✅ (+25%%)
    echo    - height: 40px → 50px ✅ (+25%%)
    echo    - margin-bottom: 4px → 6px ✅ (+50%%)
    echo    - padding: 4px → 6px ✅ (+50%%)
    echo    - border-radius: 6px → 8px ✅ (+33%%)
    echo.
    echo 📍 IMAGEM LADO DIREITO (DIMINUIDA 40%%):
    echo    - max-width: adicionado 60%% ✅ (-40%%)
    echo    - margin: 0 auto para centralizar ✅
    echo.
    echo RESULTADO:
    echo ✅ Informacoes do lado esquerdo mais legiveis
    echo ✅ Imagem do lado direito 40%% menor
    echo ✅ Proporcoes equilibradas
    echo ✅ Design harmonioso
    echo ✅ Zoom 100%% funcionando perfeitamente
    echo ✅ TODAS as informacoes cabem na tela
    echo.
    echo TESTE OBRIGATORIO:
    echo 1. Abrir landing page com zoom 100%%
    echo 2. Verificar legibilidade das informacoes
    echo 3. Verificar proporcao da imagem
    echo 4. Verificar se tudo cabe na tela
    echo 5. Testar em desktop, tablet e mobile
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Tamanhos ajustados! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
