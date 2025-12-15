@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Centralizar Cards de Baixo
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
git commit -m "fix: centralizar cards protocolos e vitalis blend na linha 2 - Card 4 (Protocolos): margin-left auto - Card 5 (Vitalis): margin-right auto - Efeito: 2 cards centralizados e proximos - Removido justify-items center do grid"
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
echo CARDS CENTRALIZADOS!
echo ========================================
echo.
echo ✅ LAYOUT GRID:
echo    - Linha 1: 3 cards (Terapeuta, Guia, Agape)
echo    - Linha 2: 2 cards CENTRALIZADOS
echo      * Protocolos: margin-left auto (puxa direita)
echo      * Vitalis: margin-right auto (puxa esquerda)
echo    - Resultado: cards proximos no centro
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo.

pause

