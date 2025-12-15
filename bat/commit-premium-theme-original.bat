@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Premium Theme Original Completo
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
git commit -m "feat: premium-theme.css completo com design original - Verde, Branco, Preto, Dourado - Hero com background verde (linear-gradient) - Reset CSS completo - Header fixo com nav, dropdown, sidebar mobile - Seções: sobre, educadora, produtos, footer - Responsividade mobile-first completa - Removido styles.css (nao existia) - HTML carrega apenas premium-theme.css"
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
echo Alteracoes commitadas e enviadas para o repositorio.
echo.
echo DESIGN APLICADO:
echo - Cores: Verde, Branco, Preto, Dourado
echo - Hero: Background verde com gradiente
echo - Responsividade: Mobile-first completa
echo - Header: Fixo com menu dropdown e sidebar mobile
echo - Secoes: Todas estilizadas e responsivas
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.

pause

