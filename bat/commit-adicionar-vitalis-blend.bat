@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Adicionar Vitalis Blend
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
git commit -m "feat: adicionar produto Vitalis Blend na secao de produtos - Novo card: Vitalis Blend (suplemento natural premium) - Imagem: https://i.postimg.cc/YvSLCJbm/06.png - Descricao: formula com fibras, antioxidantes, vitaminas - Beneficios: energia, metabolismo, imunidade, hormônios, pele, cabelo - Layout grid: 3 cards em cima + 2 embaixo centralizados - Titulo secao: cursos, programas e produtos - Grid responsive: 1 coluna mobile - Link: /html/vitalis-blend.html"
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
echo VITALIS BLEND ADICIONADO!
echo ========================================
echo.
echo ✅ PRODUTO VITALIS BLEND:
echo    - Card adicionado na secao de produtos
echo    - Imagem: 06.png (postimg)
echo    - Titulo: Vitalis Blend
echo    - Link: /html/vitalis-blend.html
echo.
echo ✅ DESCRICAO RESUMIDA:
echo    - Formula completa
echo    - Fibras, antioxidantes, vitaminas
echo    - Beneficios: energia, metabolismo, imunidade
echo    - Hormonios, intestino, pele/cabelo
echo    - Reducao inflamacao
echo.
echo ✅ LAYOUT GRID:
echo    - Desktop: 3 cards em cima (linha 1)
echo    - Desktop: 2 cards embaixo centralizados (linha 2)
echo    - Protocolos Terapeuticos (posicao 4)
echo    - Vitalis Blend (posicao 5)
echo    - Mobile: 1 coluna (todos cards)
echo.
echo ✅ TITULO SECAO:
echo    - Antes: Cursos e programas
echo    - Depois: Cursos, programas e produtos
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.

pause

