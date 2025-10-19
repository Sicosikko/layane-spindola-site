@echo off
echo ========================================
echo    AJUSTAR MOBILE HERO LANDING
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
git commit -m "style: Ajustar tamanhos mobile da hero section da landing page - Aumentar tamanhos do titulo e subtitulo no mobile: - Mobile 768px: titulo 1.8rem → 2.1rem (+17%%), subtitulo 0.9rem → 1rem (+11%%) - Mobile 480px: titulo 1.5rem → 1.8rem (+20%%), subtitulo 0.8rem → 0.9rem (+13%%) - Ajustar margins: titulo margin-bottom +2px, subtitulo margin-bottom +2px - Diminuir tamanho da imagem no mobile: - Mobile 768px: max-width 80%% → 70%% (-13%%) - Mobile 480px: max-width 90%% → 75%% (-17%%) - Resultado: Textos mais legiveis no mobile e imagem proporcionalmente menor"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! MOBILE AJUSTADO!
    echo ========================================
    echo.
    echo ✅ Tamanhos mobile ajustados!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 MOBILE 768px - TITULO E SUBTITULO (AUMENTADOS):
    echo    - Titulo: 1.8rem → 2.1rem ✅ (+17%%)
    echo    - Titulo margin-bottom: 16px → 18px ✅ (+13%%)
    echo    - Subtitulo: 0.9rem → 1rem ✅ (+11%%)
    echo    - Subtitulo margin-bottom: 24px → 26px ✅ (+8%%)
    echo.
    echo 📍 MOBILE 480px - TITULO E SUBTITULO (AUMENTADOS):
    echo    - Titulo: 1.5rem → 1.8rem ✅ (+20%%)
    echo    - Titulo margin-bottom: 12px → 14px ✅ (+17%%)
    echo    - Subtitulo: 0.8rem → 0.9rem ✅ (+13%%)
    echo    - Subtitulo margin-bottom: 20px → 22px ✅ (+10%%)
    echo.
    echo 📍 MOBILE 768px - IMAGEM (DIMINUIDA):
    echo    - max-width: 80%% → 70%% ✅ (-13%%)
    echo.
    echo 📍 MOBILE 480px - IMAGEM (DIMINUIDA):
    echo    - max-width: 90%% → 75%% ✅ (-17%%)
    echo.
    echo RESULTADO:
    echo ✅ Textos mais legiveis no mobile
    echo ✅ Titulo e subtitulo com melhor destaque
    echo ✅ Imagem proporcionalmente menor
    echo ✅ Melhor equilibrio visual
    echo ✅ Layout otimizado para mobile
    echo ✅ Proporcoes harmoniosas
    echo.
    echo TESTE OBRIGATORIO:
    echo 1. Abrir landing page no mobile
    echo 2. Verificar legibilidade do titulo
    echo 3. Verificar legibilidade do subtitulo
    echo 4. Verificar proporcao da imagem
    echo 5. Testar em diferentes tamanhos de tela
    echo 6. Verificar equilibrio visual geral
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Mobile ajustado! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
