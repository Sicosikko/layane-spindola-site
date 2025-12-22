@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Atualizar Certificados Guia Pratico
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo atualizado...
git add html/guia-pratico-naturopatia.html

echo.
echo Criando commit...
git commit -m "feat: atualizar certificados na hero e secao certificacoes - substituir cards de modulos e aulas por logos MEC e UNIFATEC - usar imagens de maior qualidade dos certificados - hero agora mostra ABRATH MEC UNIFATEC lado a lado"

if %errorlevel% neq 0 (
    echo.
    echo [ERRO] Falha no commit!
    pause
    exit /b 1
)

echo.
echo Enviando para o repositorio...
git push

if %errorlevel% neq 0 (
    echo.
    echo [ERRO] Falha no push!
    pause
    exit /b 1
)

echo.
echo ========================================
echo   SUCESSO! Certificados atualizados!
echo ========================================
echo.
pause

