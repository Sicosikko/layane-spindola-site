@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Correcoes Mobile Layout
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
git commit -m "fix: correcoes layout mobile - Hero mobile: imagem abaixo do botao (flex-direction column, order 1/2) - Tracinho dourado: bottom -15px (antes era 0) para afastamento adequado - Educadora: texto centralizado (text-align center) - Sobre: texto centralizado (text-align center) - Section-title: margin-bottom 3rem para espacamento"
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
echo CORRECOES APLICADAS!
echo ========================================
echo.
echo ✅ HERO MOBILE:
echo    - Imagem posicionada ABAIXO do botao
echo    - flex-direction: column
echo    - hero-text: order 1
echo    - hero-image: order 2
echo.
echo ✅ TRACINHO DOURADO:
echo    - Afastamento: bottom -15px (antes 0)
echo    - Espacamento adequado do titulo
echo    - Todas as section-title afetadas
echo.
echo ✅ EDUCADORA (Segunda Sessao):
echo    - Titulo: centralizado + margin-bottom 3rem
echo    - Texto: text-align center
echo    - Desktop e mobile centralizados
echo.
echo ✅ SOBRE (Terceira Sessao):
echo    - Titulo: centralizado + margin-bottom 3rem
echo    - Texto: text-align center
echo    - Desktop e mobile centralizados
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste no mobile: https://layane-spindola-site.netlify.app
echo.

pause

