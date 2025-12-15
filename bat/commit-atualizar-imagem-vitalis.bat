@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Atualizar Imagem Vitalis Blend
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
git commit -m "fix: atualizar imagem vitalis blend - Imagem anterior: 06.png (postimg YvSLCJbm) - Nova imagem: vitalis-site.jpg (postimg wv2ymxS8) - Melhor qualidade e apresentacao visual"
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
echo IMAGEM ATUALIZADA!
echo ========================================
echo.
echo ✅ VITALIS BLEND:
echo    - Nova imagem: vitalis-site.jpg
echo    - URL: https://i.postimg.cc/wv2ymxS8/vitalis-site.jpg
echo    - Melhor apresentacao visual
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.

pause

