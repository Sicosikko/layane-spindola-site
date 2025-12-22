@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Atualizar Copyright para 2026
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos atualizados...
git add index.html
git add html/guia-pratico-naturopatia.html
git add html/vitalis-blend.html
git add html/terapeuta-alta-performance.html
git add html/protocolos-terapeuticos.html
git add html/programa-aceleracao-agape.html
git add html/guia-de-cursos.html

echo.
echo Criando commit...
git commit -m "feat: atualizar copyright para 2026 em todos os sites - footer atualizado em index e todas landing pages"

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
echo   SUCESSO! Copyright atualizado para 2026!
echo ========================================
echo.
pause

