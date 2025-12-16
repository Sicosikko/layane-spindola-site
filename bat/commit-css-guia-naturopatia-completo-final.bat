@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: CSS Guia Naturopatia Completo
echo ========================================
echo.

cd /d "%~dp0\.."

echo [1/4] Verificando status do Git...
git status
echo.

echo [2/4] Adicionando TODOS os arquivos modificados...
git add .
git add -A
if %errorlevel% neq 0 (
    echo ERRO: Falha ao adicionar arquivos!
    pause
    exit /b 1
)
echo Arquivos adicionados com sucesso!
echo.

echo [3/4] Fazendo commit...
git commit -m "feat: css guia naturopatia completo original restaurado - Arquivo: css/guia-naturopatia.css (1819 linhas completas) - CSS original curso-landing.css 100%% restaurado - Hero section: animacoes background, stats, badges - Sobre Layane: grid com credenciais e stats - Sessoes curso: cards hover premium com icons - Guia doencas: grid com imagens e overlay - Conteudo: lista com border-left e hover - Acesso imediato: badges flutuantes - CTA final: preco destaque com garantia - FAQ: accordion interativo - Certificacoes: cards MEC/Unifatec + lista beneficios - Mobile: responsivo 768px (tablets) e 480px (mobile) - Animacoes: slideDown/Up, fadeIn, float, pulse, shine - Efeitos: sombras premium, gradientes, transforms - HTML: atualizado para guia-naturopatia.css"
if %errorlevel% neq 0 (
    echo AVISO: Nada para commitar ou erro ao commitar
    git status
    pause
    exit /b 0
)
echo Commit realizado com sucesso!
echo.

echo [4/4] Fazendo push para o repositório...
git push
if %errorlevel% neq 0 (
    echo ERRO: Falha ao fazer push!
    pause
    exit /b 1
)
echo Push realizado com sucesso!
echo.

echo ========================================
echo CSS COMPLETO RESTAURADO!
echo ========================================
echo.
echo ✅ ARQUIVO CRIADO:
echo    - css/guia-naturopatia.css
echo    - 1819 linhas (original completo)
echo    - 100%% dos estilos originais
echo    - + Secao certificacoes
echo.
echo ✅ SECOES INCLUIDAS:
echo    - Hero Section (animacoes background)
echo    - Sobre Layane (grid + stats)
echo    - Sessoes Curso (cards premium)
echo    - Guia Doencas (grid imagens)
echo    - Conteudo (lista hover)
echo    - Acesso Imediato (badges)
echo    - CTA Final (preco)
echo    - FAQ (accordion)
echo    - Certificacoes (MEC/Unifatec)
echo.
echo ✅ ANIMACOES:
echo    - slideDown, slideUp, fadeIn
echo    - float (6s), pulse (2s)
echo    - shine, backgroundMove
echo.
echo ✅ EFEITOS PREMIUM:
echo    - Sombras multiplas (box-shadow)
echo    - Gradientes (linear-gradient)
echo    - Transforms (hover)
echo    - Backdrop-filter blur
echo    - Border-left animados
echo.
echo ✅ RESPONSIVIDADE:
echo    - Tablets: 768px (grid 1 col)
echo    - Mobile: 480px (stack)
echo    - Mobile first otimizado
echo.
echo ✅ CORES:
echo    - Verde: 1a4d2e, 2c5530, 4f772d
echo    - Dourado: d4af37, f4e4b8
echo    - Background: f8f9fa, fff
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
echo.
echo Design completo restaurado com todas as secoes e efeitos!
echo.

pause

