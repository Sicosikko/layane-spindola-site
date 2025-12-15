@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Educadora Cards Premium
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
git commit -m "feat: educadora section com cards premium luxuosos - Grid 2x2 cards (desktop) / 1 coluna (mobile) - Icones Font Awesome animados: leaf, globe, graduation-cap, building - Cards brancos com borda dourada sutil - Shimmer effect na borda superior ao hover - Icone circular dourado com gradiente animado - Hover: elevacao 12px, scale 1.02, rotate 360deg no icone - Sombras multiplas com glow dourado - Titulo verde escuro (2c5530), descricao cinza - Responsivo mobile: padding reduzido, icones menores - Animacoes suaves cubic-bezier"
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
echo CARDS PREMIUM APLICADOS!
echo ========================================
echo.
echo ✅ DESIGN LUXUOSO:
echo    - 4 cards em grid 2x2 (desktop)
echo    - Background branco puro
echo    - Borda dourada sutil
echo    - Sombras multiplas suaves
echo.
echo ✅ ICONES ANIMADOS:
echo    - Circulo dourado com gradiente
echo    - Animacao gradient shift (3s loop)
echo    - Hover: rotate 360deg + scale 1.1
echo    - Sombra/glow dourado aumenta
echo.
echo ✅ HOVER EFFECTS:
echo    - Elevacao: translateY(-12px)
echo    - Scale: 1.02
echo    - Shimmer na borda superior
echo    - Glow dourado ao redor
echo    - Transicoes suaves 0.5s
echo.
echo ✅ CONTEUDO:
echo    - 10 anos naturopatia (leaf icon)
echo    - Palestras 8 paises (globe icon)
echo    - 4 cursos transformadores (graduation-cap icon)
echo    - Fundadora Spindola (building icon)
echo.
echo ✅ MOBILE RESPONSIVO:
echo    - Grid 1 coluna (768px e 480px)
echo    - Padding reduzido
echo    - Icones menores (70px/60px)
echo    - Font-sizes ajustados
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.

pause

