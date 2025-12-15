@echo off
title Commit - Atualizar copy portal principal

echo.
echo ====== COMMIT COPY PORTAL PRINCIPAL ======
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
set MSG=copy: atualizar portal principal - hero - cursos - quem sou eu - remover depoimentos e ebook
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
    echo [ERRO] Falha ao enviar as alterações para o repositório remoto.
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
echo - Confira no navegador se o portal principal esta exibindo a nova copy (hero, quem sou eu, cursos).
echo - Verifique se as secoes de depoimentos e ebook foram removidas corretamente.
echo.
pause
exit /b 0


