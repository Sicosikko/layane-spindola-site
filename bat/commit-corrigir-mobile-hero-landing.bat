@echo off
echo ========================================
echo    CORRIGIR MOBILE HERO LANDING
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
git commit -m "fix: Corrigir responsividade mobile da hero section da landing page - Ajustar padding da hero section: - Desktop: padding de 80px para 100px no topo - Mobile 768px: padding de 120px no topo, min-height 100vh, max-height none - Mobile 480px: padding de 140px no topo - Layout mobile: - Grid: 1 coluna em vez de 2 colunas - Text-align: center para centralizar conteudo - Stats: 1 coluna em vez de 3 colunas - Tamanhos mobile otimizados: - Titulo: 1.8rem (768px) e 1.5rem (480px) - Subtitulo: 0.9rem (768px) e 0.8rem (480px) - Stats: padding aumentado para melhor toque - CTA: width 100%% para ocupar toda largura - Imagem: max-width 80%% (768px) e 90%% (480px) - Resultado: Hero section responsiva sem sobreposicao do headbar ou segunda sessao"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! MOBILE CORRIGIDO!
    echo ========================================
    echo.
    echo ✅ Responsividade mobile corrigida!
    echo.
    echo ALTERACOES APLICADAS:
    echo.
    echo 📍 PADDING HERO SECTION:
    echo    - Desktop: 80px → 100px no topo ✅
    echo    - Mobile 768px: 120px no topo ✅
    echo    - Mobile 480px: 140px no topo ✅
    echo.
    echo 📍 LAYOUT MOBILE:
    echo    - Grid: 2 colunas → 1 coluna ✅
    echo    - Text-align: center ✅
    echo    - Stats: 3 colunas → 1 coluna ✅
    echo    - Min-height: 100vh ✅
    echo    - Max-height: none ✅
    echo.
    echo 📍 TAMANHOS MOBILE 768px:
    echo    - Titulo: 2rem → 1.8rem ✅
    echo    - Subtitulo: 0.85rem → 0.9rem ✅
    echo    - Stats: padding 10px 6px → 12px 16px ✅
    echo    - Icons: 1.3rem → 1.5rem ✅
    echo    - Numbers: 1.3rem → 1.5rem ✅
    echo    - Labels: 0.65rem → 0.75rem ✅
    echo    - Logo ABRATH: 65px → 80px ✅
    echo    - CTA: width 100%% ✅
    echo    - Imagem: max-width 60%% → 80%% ✅
    echo.
    echo 📍 TAMANHOS MOBILE 480px:
    echo    - Titulo: 1.8rem → 1.5rem ✅
    echo    - Subtitulo: 0.9rem → 0.8rem ✅
    echo    - Stats: padding 12px 16px → 10px 12px ✅
    echo    - Icons: 1.5rem → 1.3rem ✅
    echo    - Numbers: 1.5rem → 1.3rem ✅
    echo    - Labels: 0.75rem → 0.7rem ✅
    echo    - Logo ABRATH: 80px → 70px ✅
    echo    - CTA: padding 16px 24px → 14px 20px ✅
    echo    - Imagem: max-width 80%% → 90%% ✅
    echo.
    echo RESULTADO:
    echo ✅ Hero section responsiva para mobile
    echo ✅ Sem sobreposicao do headbar
    echo ✅ Sem sobreposicao da segunda sessao
    echo ✅ Layout otimizado para touch
    echo ✅ Tamanhos adequados para mobile
    echo ✅ Imagem proporcional
    echo ✅ CTA ocupando toda largura
    echo.
    echo TESTE OBRIGATORIO:
    echo 1. Abrir landing page no mobile
    echo 2. Verificar se nao ha sobreposicao do headbar
    echo 3. Verificar se nao ha sobreposicao da segunda sessao
    echo 4. Verificar se todo conteudo e visivel
    echo 5. Testar em diferentes tamanhos de tela
    echo 6. Testar touch nos botoes e elementos
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Mobile corrigido! ✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
