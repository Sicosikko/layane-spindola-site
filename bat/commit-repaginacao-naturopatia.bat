@echo off
echo ========================================
echo    REPAGINACAO COMPLETA - NATUROPATIA
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
git commit -m "feat: Repaginacao completa da landing page Guia Pratico de Naturopatia com design premium - Hero: Grid 2 colunas com imagem, stats animados, sem video - Copys conversacionais e persuasivas em todo site - Sessoes: Cards com hover effects e animacoes escalonadas - Guia 50 Doencas: Numeros overlay e animacoes stagger - Conteudo: Lista expandida com icones e descricoes - Acesso Imediato: Badges flutuantes e lista de beneficios - CTA Final: Badge vagas limitadas e preco destacado - Animacoes CSS: slideDown, slideUp, fadeIn, float, pulse, shine - Scroll reveal com Intersection Observer - Contador animado para stats - Parallax suave nos backgrounds - Design responsivo completo mobile/tablet/desktop - Paleta verde premium com gradientes - Shadows profundas e border-radius arredondados - Hover effects em todos elementos interativos"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! DESIGN PREMIUM APLICADO!
    echo ========================================
    echo.
    echo ✅ Landing page completamente repaginada!
    echo.
    echo MELHORIAS IMPLEMENTADAS:
    echo.
    echo 1. HERO SECTION
    echo    - Removido video embed
    echo    - Grid 2 colunas: texto + imagem
    echo    - 3 stats animados com contador
    echo    - Background animado com gradiente
    echo    - Imagem com glow effect
    echo    - Copy conversacional e persuasiva
    echo.
    echo 2. SESSOES DO CURSO
    echo    - Cards com borda superior animada
    echo    - Icones com rotacao ao hover
    echo    - Descricao italica adicionada
    echo    - Animacoes escalonadas ao scroll
    echo    - Hover elevacao 10px
    echo.
    echo 3. GUIA 50 DOENCAS
    echo    - Numeros overlay circulares
    echo    - Zoom 1.15x nas imagens ao hover
    echo    - Copys melhoradas e naturais
    echo    - Animacoes stagger 0.1s-0.6s
    echo    - Elevacao 12px ao hover
    echo.
    echo 4. CONTEUDO DO CURSO
    echo    - Icones maiores e animados
    echo    - Titulos h4 + descricoes p
    echo    - Barra lateral gradiente
    echo    - Hover desliza 10px direita
    echo    - 7 itens com delays progressivos
    echo.
    echo 5. ACESSO IMEDIATO
    echo    - Lista de 4 beneficios adicionada
    echo    - Badges com animacao float
    echo    - Image frame com shine effect
    echo    - Copy expandida e persuasiva
    echo    - Background verde escuro
    echo.
    echo 6. CTA FINAL
    echo    - Badge "Vagas Limitadas" pulsante
    echo    - Preco em card destacado
    echo    - 3 garantias com icones
    echo    - Observacao sobre parcelamento
    echo    - Background pattern animado
    echo.
    echo ANIMACOES CSS:
    echo ✅ slideDown - Badge hero
    echo ✅ slideUp - Titulo e stats
    echo ✅ fadeIn - Subtitle hero
    echo ✅ float - Imagem hero e badges
    echo ✅ pulse - CTAs e badge vagas
    echo ✅ shine - Imagem acesso imediato
    echo ✅ backgroundMove - Patterns
    echo ✅ Scroll reveal - Todos elementos
    echo ✅ Contador animado - Stats
    echo ✅ Parallax - Backgrounds
    echo.
    echo JAVASCRIPT:
    echo ✅ Intersection Observer avancado
    echo ✅ Contador animado 60fps
    echo ✅ Parallax suave 0.5x speed
    echo ✅ Smooth scroll com offset
    echo ✅ Animacoes escalonadas
    echo.
    echo DESIGN PREMIUM:
    echo ✅ Paleta verde escuro + dourado
    echo ✅ Gradientes sutis em backgrounds
    echo ✅ Shadows profundas 0-80px
    echo ✅ Border-radius 16-24px
    echo ✅ Backdrop-filter blur
    echo ✅ Hover effects suaves
    echo ✅ Tipografia Playfair + Montserrat
    echo.
    echo RESPONSIVIDADE:
    echo Desktop: Grid 2-3 colunas
    echo Tablet: Grid 1-2 colunas
    echo Mobile: Grid 1 coluna
    echo.
    echo RESULTADO:
    echo - Design tao bonito quanto site principal
    echo - Copys conversacionais e persuasivas
    echo - Animacoes fluidas e profissionais
    echo - Experiencia premium de navegacao
    echo - Otimizado para conversao
    echo.
    echo Aguarde 2-3 minutos e acesse:
    echo https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Prepare-se para se impressionar! 🌿✨💚
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
