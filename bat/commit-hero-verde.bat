@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Hero Verde
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
git commit -m "style: alterar hero background de marrom/preto para verde - Background anterior: rgba(26,26,26) e rgba(45,45,45) tons marrom/preto - Novo background: rgba(44,85,48) e rgba(30,61,34) tons verde escuro - Mantidos: tons dourados (d4af37) nos padroes SVG - Mantidas: todas animacoes e efeitos"
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
echo HERO VERDE APLICADO!
echo ========================================
echo.
echo ✅ COR ALTERADA:
echo    - Antes: Marrom/Preto escuro
echo    - Depois: Verde escuro
echo    - Verde 1: rgba(44, 85, 48, 0.95) - primary-green
echo    - Verde 2: rgba(30, 61, 34, 0.92) - green-dark
echo.
echo ✅ MANTIDOS:
echo    - Tons dourados (d4af37)
echo    - Padroes SVG dourados
echo    - Animacoes de pulso
echo    - Parallax effect
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.
echo Se nao gostar, posso voltar para o marrom/preto
echo ou ajustar para outro tom de verde.
echo.

pause

