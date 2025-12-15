@echo off
chcp 65001 >nul
echo ========================================
echo REVERTER: Voltar para commit mobile hero landing
echo ========================================
echo.

cd /d "%~dp0\.."

echo [1/4] Mostrando os ultimos 30 commits...
echo.
git log --oneline -30
echo.
echo ========================================
echo.

echo [2/4] Procurando commit "ajustar mobile hero landing"...
echo.

REM Procura por commits que contenham "mobile" e "hero" na mensagem
for /f "tokens=1" %%i in ('git log --oneline --all -30 ^| findstr /i "mobile hero"') do (
    set COMMIT_HASH=%%i
    echo Commit encontrado: %%i
    git log -1 --format="%%H - %%s" %%i
    echo.
    goto :confirm
)

:confirm
if not defined COMMIT_HASH (
    echo ERRO: Commit nao encontrado automaticamente!
    echo.
    echo Por favor, copie o HASH do commit desejado da lista acima e cole aqui:
    set /p COMMIT_HASH="Digite o hash do commit: "
)

echo.
echo ========================================
echo ATENCAO: Isso vai REVERTER o site para o commit:
echo %COMMIT_HASH%
echo.
echo Todas as alteracoes posteriores serao PERDIDAS!
echo ========================================
echo.
echo Pressione qualquer tecla para CONTINUAR ou CTRL+C para CANCELAR...
pause >nul

echo.
echo [3/4] Resetando para o commit %COMMIT_HASH%...
git reset --hard %COMMIT_HASH%
if %errorlevel% neq 0 (
    echo ERRO: Falha ao resetar para o commit!
    pause
    exit /b 1
)
echo Reset realizado com sucesso!
echo.

echo [4/4] Fazendo push FORCE para atualizar o repositorio remoto...
git push --force
if %errorlevel% neq 0 (
    echo ERRO: Falha ao fazer push force!
    echo Tente manualmente: git push --force
    pause
    exit /b 1
)
echo Push force realizado com sucesso!
echo.

echo ========================================
echo CONCLUIDO COM SUCESSO!
echo ========================================
echo.
echo Site revertido para o commit: %COMMIT_HASH%
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.

pause
