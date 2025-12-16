@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Restaurar CSS Landing Page
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "fix: restaurar CSS completo landing page guia naturopatia - restaurado guia-naturopatia.css completo com 2000+ linhas - todas secoes hero sobre certificacoes sessoes doencas conteudo acesso cta faq - footer padrao site principal com footer-column - animacoes e responsividade mobile first preservadas"

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
echo   SUCESSO! CSS restaurado!
echo ========================================
echo.
pause

