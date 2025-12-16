@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: CSS Guia Naturopatia Final
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
git commit -m "feat: criar css especifico guia naturopatia completo - Novo arquivo: css/guia-naturopatia.css (completo) - Hero section: estilos verde/dourado, stats, badges - Secoes: solucao, sobre layane, conteudo, FAQ - Certificacoes: cards MEC/Unifatec, lista beneficios - Mobile first: responsivo 768px (tablets) e 480px (mobile) - Animacoes: slideDown, slideUp, fadeIn, float, pulse - Botoes: gradiente dourado com hover premium - HTML: atualizado para usar guia-naturopatia.css - Removido: curso-landing.css (corrompido), certificacoes.css (consolidado)"
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
echo CSS GUIA NATUROPATIA FINALIZADO!
echo ========================================
echo.
echo ✅ ARQUIVO CRIADO:
echo    - css/guia-naturopatia.css (950 linhas)
echo    - CSS completo e especifico
echo    - Mobile first, responsivo
echo.
echo ✅ ESTILOS INCLUIDOS:
echo    - Hero section (verde/dourado)
echo    - Secoes: solucao, sobre, conteudo, FAQ
echo    - Certificacoes: cards MEC/Unifatec
echo    - Lista de beneficios (fundo verde)
echo    - Botoes premium com hover
echo    - Animacoes CSS completas
echo.
echo ✅ RESPONSIVIDADE:
echo    - Tablets (768px): grid 1 coluna
echo    - Mobile (480px): font-size ajustado
echo    - Mobile first: otimizado celulares
echo.
echo ✅ HTML ATUALIZADO:
echo    - Link para guia-naturopatia.css
echo    - Removidos: curso-landing.css, certificacoes.css
echo.
echo ✅ CORES PADRAO:
echo    - Verde escuro: 1a4d2e, 2c5530, 4f772d
echo    - Dourado: d4af37, f4e4b8
echo    - Background: f8f9fa, fff
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
echo.
echo Landing page com CSS proprio e completo!
echo.

pause

