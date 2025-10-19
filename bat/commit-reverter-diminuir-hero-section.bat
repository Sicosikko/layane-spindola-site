@echo off
echo ========================================
echo    REVERTER E DIMINUIR HERO SECTION
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
git commit -m "fix: Reverter alteracoes das informacoes e diminuir altura da hero section - Hero section: min-height de 90vh para 60vh - Hero section: padding de 120px 0 60px para 100px 0 40px - Revertidas todas as alteracoes das informacoes para tamanho original - Titulo: revertido para 3.8rem - Subtitulo: revertido para 1.2rem - Stats: revertidos para tamanhos originais - Logo ABRATH: revertido para tamanho original - Badge: revertido para tamanho original - Resultado: Hero section mais baixa com informacoes em tamanho original"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! HERO SECTION CORRIGIDA!
    echo ========================================
    echo.
    echo ✅ Hero section da landing page corrigida!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 HERO SECTION (ALTURA REDUZIDA):
    echo    - min-height: 90vh → 60vh ✅ (-33%%)
    echo    - padding: 120px 0 60px → 100px 0 40px ✅
    echo.
    echo 📍 INFORMACOES REVERTIDAS PARA ORIGINAL:
    echo    - Titulo: 2.2rem → 3.8rem ✅
    echo    - Titulo: margin-bottom 16px → 28px ✅
    echo    - Titulo: line-height 1.2 → 1.15 ✅
    echo.
    echo 📍 SUBTITULO REVERTIDO:
    echo    - font-size: 0.9rem → 1.2rem ✅
    echo    - margin-bottom: 20px → 40px ✅
    echo    - line-height: 1.6 → 1.8 ✅
    echo.
    echo 📍 STATS REVERTIDOS:
    echo    - gap: 12px → 24px ✅
    echo    - margin-bottom: 20px → 40px ✅
    echo    - padding: 12px 10px → 24px 20px ✅
    echo    - border-radius: 12px → 16px ✅
    echo.
    echo 📍 STAT-ICON REVERTIDO:
    echo    - font-size: 1.8rem → 2.5rem ✅
    echo    - margin-bottom: 4px → 8px ✅
    echo.
    echo 📍 STAT-NUMBER REVERTIDO:
    echo    - font-size: 1.8rem → 2.5rem ✅
    echo    - margin-bottom: 4px → 8px ✅
    echo.
    echo 📍 STAT-LABEL REVERTIDO:
    echo    - font-size: 0.7rem → 0.9rem ✅
    echo.
    echo 📍 LOGO ABRATH REVERTIDO:
    echo    - max-width: 80px → 120px ✅
    echo    - height: 50px → 80px ✅
    echo    - margin-bottom: 6px → 12px ✅
    echo    - padding: 6px → 12px ✅
    echo    - border-radius: 8px → 12px ✅
    echo.
    echo 📍 BADGE REVERTIDO:
    echo    - padding: 6px 16px → 10px 28px ✅
    echo    - margin-bottom: 16px → 28px ✅
    echo    - border-radius: 30px → 50px ✅
    echo    - font-size: 0.8rem → 0.95rem ✅
    echo.
    echo RESULTADO:
    echo ✅ Hero section mais baixa (60vh)
    echo ✅ Informacoes em tamanho original
    echo ✅ Design proporcional mantido
    echo ✅ Legibilidade preservada
    echo ✅ Funcionalidade mantida
    echo.
    echo CORRECAO APLICADA:
    echo ✅ Altura da hero section reduzida
    echo ✅ Tamanho das informacoes preservado
    echo ✅ Proporcoes equilibradas
    echo ✅ Design harmonioso
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
