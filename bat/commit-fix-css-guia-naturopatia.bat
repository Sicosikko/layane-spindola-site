@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Correcao CSS Guia Naturopatia
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "fix: corrigir referencia CSS guia pratico naturopatia - HTML atualizado para usar guia-naturopatia.css (1726 linhas completo) - removido curso-landing.css vazio que quebrava a pagina - removido styles.css inexistente - CSS completo inclui hero sobre certificacoes footer responsivo"

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
echo   SUCESSO! CSS corrigido e commitado!
echo ========================================
echo.
pause

