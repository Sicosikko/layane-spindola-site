@echo off
title Commit - Ajustes hero e secao educadora do portal

echo.
echo ====== COMMIT AJUSTES PORTAL (HERO + EDUCADORA) ======
echo.

cd /d "C:\Users\gleis\OneDrive\Documentos\Projetos freelas\Layane\Site Layane"

echo.
echo Verificando status do repositorio...
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
set MSG=layout: simplificar hero portal - mover secao educadora - ajustar premium-theme css
git commit -m "%MSG%"
if errorlevel 1 (
    echo.
    echo [ERRO] Falha ao realizar o commit. Verifique as mensagens acima.
    git status
    pause
    exit /b 1
)

echo.
echo Enviando para o repositorio remoto (git push)...
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
echo - Atualize o site no navegador e confira a nova hero simplificada.
echo - Confira se a secao \"Como educadora\" esta logo apos a hero, com todos os dados.
echo - Verifique se o tema premium (premium-theme.css) esta renderizando corretamente.
echo.
pause
exit /b 0


