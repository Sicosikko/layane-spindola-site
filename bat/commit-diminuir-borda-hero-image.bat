@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Diminuir Borda Imagem Hero
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
git commit -m "style: diminuir borda imagem hero para minimo - Border anterior: 4px solid dourado - Nova border: 1px solid dourado - Mantidas: sombras, efeitos hover, animacoes - Resultado: borda minima, mais elegante"
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
echo BORDA MINIMIZADA!
echo ========================================
echo.
echo ✅ BORDA ALTERADA:
echo    - Antes: 4px solid dourado
echo    - Depois: 1px solid dourado
echo    - Reducao: 75%% (minimo possivel)
echo.
echo ✅ MANTIDOS:
echo    - Border-radius: 20px
echo    - Box-shadow (multiplas camadas)
echo    - Efeitos hover
echo    - Cor dourada
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.

pause

