@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Site Completo Mobile Responsivo
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
git commit -m "fix: site COMPLETO mobile-first responsivo - TODAS AS SECOES - Hero mobile: textos, imagem, botoes proporcionais - Educadora mobile: texto legivel, botao full-width, padding adequado - Sobre mobile: imagem proporcional, credentials em coluna, stats centralizados, texto legivel - Produtos mobile: cards full-width, botoes ajustados, espacamento otimizado - Footer mobile: grid 1 coluna, textos centralizados, links legiveis - Tipografia mobile: font-sizes reduzidos em todas secoes (768px e 480px) - Espacamentos mobile: padding reduzido, gaps menores em TODAS secoes - Botoes mobile: width 100%% com max-width, font-size adequado - Imagens mobile: max-width controladas (280px/240px) - Previne overflow: word-wrap, overflow-x hidden, max-width 100%%"
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
echo SITE COMPLETO MOBILE-FIRST APLICADO!
echo ========================================
echo.
echo ✅ TODAS AS SECOES RESPONSIVAS:
echo.
echo 📱 HERO MOBILE:
echo    - Textos legíveis (1.8rem/1.5rem)
echo    - Imagem proporcional (280px/240px)
echo    - Botão full-width com max-width
echo    - Background scroll (não fixed)
echo.
echo 📱 EDUCADORA MOBILE:
echo    - Título legível, quebra de linha
echo    - Texto 1rem/0.85rem (legível)
echo    - Botão full-width, centralizado
echo    - Padding reduzido (3rem/2.5rem)
echo.
echo 📱 SOBRE MOBILE:
echo    - Imagem centralizada (280px/240px)
echo    - Texto legível, word-wrap
echo    - Credentials em 1 coluna
echo    - Stats em coluna, centralizados
echo    - Botão full-width
echo.
echo 📱 PRODUTOS MOBILE:
echo    - Cards em 1 coluna
echo    - Imagens proporcionais
echo    - Textos legíveis
echo    - Botões full-width
echo    - Padding reduzido
echo.
echo 📱 FOOTER MOBILE:
echo    - Grid em 1 coluna
echo    - Textos centralizados
echo    - Links legíveis (0.95rem/0.9rem)
echo    - Social links centralizados
echo.
echo 🎯 BREAKPOINTS:
echo    - 768px: Tablet/Mobile grande
echo    - 480px: Mobile pequeno
echo.
echo 🔧 OTIMIZAÇÕES:
echo    - word-wrap: break-word (TODAS seções)
echo    - overflow-x: hidden (body)
echo    - max-width: 100%% (imagens)
echo    - Container: padding 20px/15px
echo    - Botões: width 100%%, max-width controlada
echo    - Textos: font-size reduzidos progressivamente
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste no mobile: https://layane-spindola-site.netlify.app
echo.
echo ⚠️ TESTE OBRIGATÓRIO MOBILE:
echo 1. Hero: textos cabem na tela?
echo 2. Educadora: botão clicável, texto legível?
echo 3. Sobre: imagem proporcional, stats visíveis?
echo 4. Produtos: cards legíveis, botões clicáveis?
echo 5. Footer: links clicáveis, textos legíveis?
echo 6. Geral: sem scroll horizontal?
echo 7. Geral: todos textos legíveis?
echo.

pause

