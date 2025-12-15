@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Corrigir premium-theme.css completo
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
git commit -m "fix: corrigir premium-theme.css completo - adicionar reset e estilos base - remover referencia styles.css do HTML - hero background verde"
if %errorlevel% neq 0 (
    echo ERRO: Falha ao fazer commit!
    pause
    exit /b 1
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
echo CONCLUIDO COM SUCESSO!
echo ========================================
echo.
echo Alteracoes commitadas e enviadas para o repositorio.
echo.
pause

