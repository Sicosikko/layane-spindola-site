@echo off
chcp 65001 >nul
echo ========================================
echo   COMMIT: Atualizar Informações de Contato
echo ========================================
echo.

echo [1/4] Adicionando arquivos modificados...
git add .
git add -A
if %errorlevel% neq 0 (
    echo ERRO: Falha ao adicionar arquivos ao staging
    pause
    exit /b 1
)
echo OK: Arquivos adicionados
echo.

echo [2/4] Verificando status...
git status --short
echo.

echo [3/4] Criando commit...
git commit -m "feat: atualizar informações de contato - email contatospindolahealth@gmail.com - whatsapp 44 9 9990 3059 - todas as páginas atualizadas"
if %errorlevel% neq 0 (
    echo ERRO: Falha ao criar commit
    pause
    exit /b 1
)
echo OK: Commit criado com sucesso
echo.

echo [4/4] Enviando para o repositório remoto...
git push
if %errorlevel% neq 0 (
    echo ERRO: Falha ao enviar para o repositório remoto
    pause
    exit /b 1
)
echo OK: Alterações enviadas com sucesso
echo.

echo ========================================
echo   CONCLUÍDO COM SUCESSO!
echo ========================================
echo.
pause

