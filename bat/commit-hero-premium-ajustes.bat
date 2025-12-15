@echo off
title Commit - Ajustes premium da hero do portal

echo.
echo ====== COMMIT AJUSTES HERO PORTAL ======
echo.

cd /d "C:\Users\gleis\OneDrive\Documentos\Projetos freelas\Layane\Site Layane"

echo.
echo Verificando status do repositório...
git status

echo.
echo Adicionando todos os arquivos modificados...
git add .
git add -A
if errorlevel 1 (
    echo.
    echo [ERRO] Falha ao adicionar arquivos ao stage.
    git status
    pause
    exit /b 1
)

echo.
echo Realizando commit...
set MSG=layout: ajustar hero portal - cards de destaque - design premium limpo
git commit -m "%MSG%"
if errorlevel 1 (
    echo.
    echo [ERRO] Falha ao realizar o commit. Verifique as mensagens acima.
    git status
    pause
    exit /b 1
)

echo.
echo Enviando para o repositório remoto (git push)...
git push
if errorlevel 1 (
    echo.
    echo [ERRO] Falha ao enviar as alteracoes para o repositorio remoto.
    git status
    pause
    exit /b 1
)

echo.
echo ====== COMMIT E PUSH CONCLUIDOS COM SUCESSO ======
echo.
git status

echo.
echo Proximos passos:
echo - Atualize o site no navegador e confira a hero com os cards de destaque.
echo - Valide se o layout esta limpo tanto em desktop quanto em mobile.
echo.
pause
exit /b 0


