@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Mobile First Responsivo
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
git commit -m "fix: mobile-first responsivo completo - Hero mobile: textos legíveis, imagem proporcional, botões adequados - Títulos: word-wrap, hyphens, tamanhos ajustados - Botões mobile: width 100%%, max-width controlada, font-size menor - Imagens mobile: max-width reduzidas (280px/240px) - Espaçamentos mobile: padding reduzido, gaps menores - Seção educadora: texto visível, sem cortes - Previne scroll horizontal: overflow-x hidden, word-wrap - Background hero: scroll em vez de fixed no mobile - Container mobile: padding adequado (20px/15px) - Responsivo 768px e 480px otimizados"
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
echo CONCLUIDO COM SUCESSO!
echo ========================================
echo.
echo MOBILE-FIRST APLICADO:
echo.
echo ✅ HERO MOBILE (768px):
echo    - Títulos: 1.8rem (legíveis)
echo    - Subtítulos: 1rem (legíveis)
echo    - Botões: width 100%%, max-width 280px
echo    - Imagem: max-width 280px, height 350px
echo    - Padding: 90px top, 2rem bottom
echo    - Background: scroll (não fixed)
echo.
echo ✅ HERO MOBILE (480px):
echo    - Títulos: 1.5rem (mais compacto)
echo    - Subtítulos: 0.9rem (mais compacto)
echo    - Botões: width 100%%, font 0.8rem
echo    - Imagem: max-width 240px, height 300px
echo    - Padding: 80px top, 1.5rem bottom
echo.
echo ✅ TEXTOS MOBILE:
echo    - word-wrap: break-word
echo    - hyphens: auto
echo    - overflow-wrap: break-word
echo    - Sem cortes ou overflow
echo.
echo ✅ SEÇÕES MOBILE:
echo    - Padding reduzido (3rem/2.5rem)
echo    - Gaps menores (2rem/1.5rem)
echo    - Textos legíveis (0.9rem/0.85rem)
echo    - Cards com padding adequado
echo.
echo ✅ PREVENÇÃO DE BUGS:
echo    - overflow-x: hidden no body
echo    - max-width: 100%% em imagens
echo    - Container com padding controlado
echo    - Sem scroll horizontal
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste no mobile: https://layane-spindola-site.netlify.app
echo.
echo TESTE OBRIGATÓRIO:
echo - iPhone/Android: verificar se textos cabem
echo - Verificar botões clicáveis
echo - Verificar imagens proporcionais
echo - Verificar sem scroll horizontal
echo - Verificar legibilidade de todos textos
echo.

pause

