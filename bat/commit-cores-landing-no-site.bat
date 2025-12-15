@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Cores Landing no Site Principal
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
git commit -m "style: aplicar cores da landing guia pratico no site principal - Hero: gradient 1a4d2e → 2c5530 → 4f772d (verde escuro/medio) - Botao primary: gradient 4f772d → 2c5530 (verde), texto branco - Footer: gradient 1a4d2e → 2c5530 (verde escuro) - Educadora: background f8f9fa → fff (cinza claro) - Variaveis CSS: green-dark 1a4d2e, green-medium 4f772d - Animacao: backgroundMove em vez de backgroundPulse - Dourado mantido em detalhes (bordas, icones)"
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
echo CORES DA LANDING APLICADAS!
echo ========================================
echo.
echo ✅ CORES ATUALIZADAS:
echo    - Verde escuro: #1a4d2e
echo    - Verde principal: #2c5530
echo    - Verde medio: #4f772d
echo    - Verde claro: #4a7c59
echo    - Dourado: #d4af37 (mantido)
echo.
echo ✅ HERO SECTION:
echo    - Background: gradient verde escuro → medio
echo    - Animacao: backgroundMove (20s)
echo    - Padroes dourados mantidos
echo.
echo ✅ BOTOES PRIMARY:
echo    - Background: gradient verde medio → escuro
echo    - Texto: branco (em vez de preto)
echo    - Hover: sombra verde
echo.
echo ✅ FOOTER:
echo    - Background: gradient verde escuro
echo    - Consistente com landing page
echo.
echo ✅ SECOES:
echo    - Educadora: background cinza claro
echo    - Sobre: background f8f9fa
echo    - Produtos: background f8f9fa
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.
echo Site agora com as mesmas cores da landing page!
echo.

pause

