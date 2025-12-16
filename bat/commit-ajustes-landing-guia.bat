@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Ajustes Landing Guia Naturopatia
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
git commit -m "feat: ajustes landing guia pratico naturopatia - Menu: Cursos & Programas → Produtos & Cursos - Dropdown: adicionado Vitalis Blend - Botao hero: QUERO SER UMA NATUROPATA → QUERO GARANTIR MINHA VAGA - Icone botao: leaf → cart-shopping (carrinho compra) - Hero session: tamanho mantido (ok conforme solicitado) - Objetivo: remeter a compra do curso"
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
echo AJUSTES APLICADOS!
echo ========================================
echo.
echo ✅ MENU ATUALIZADO:
echo    - Cursos & Programas → Produtos & Cursos
echo    - Adicionado: Vitalis Blend
echo.
echo ✅ BOTAO HERO ATUALIZADO:
echo    - Texto: QUERO GARANTIR MINHA VAGA AGORA!
echo    - Icone: cart-shopping (carrinho)
echo    - Objetivo: remeter a compra
echo.
echo ✅ HERO SESSION:
echo    - Tamanho mantido (ok)
echo    - Sem alteracoes de zoom
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
echo.

pause

