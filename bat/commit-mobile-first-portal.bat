@echo off
title Commit - Ajustes mobile first portal principal

echo.
echo ====== COMMIT AJUSTES MOBILE FIRST PORTAL ======
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
set MSG=layout: ajustes mobile first portal - paddings secoes - tipografia mobile - grids 1 coluna
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
echo - Teste o portal no celular (ou inspecionar modo mobile) e valide:
echo   * Hero sem altura excedente ou rolagem estranha.
echo   * Secoes \"Como educadora\", \"Quem sou eu\" e \"Cursos\" com menos altura e leitura confortavel.
echo   * Grids em 1 coluna no mobile, sem quebra lateral.
echo.
pause
exit /b 0


