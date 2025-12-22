@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Padronizar Hero Sessions
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos corrigidos...
git add css/guia-naturopatia.css
git add css/terapeuta-alta-performance.css
git add css/protocolos-terapeuticos.css
git add css/programa-aceleracao-agape.css
git add css/vitalis-blend.css

echo.
echo Criando commit...
git commit -m "fix: padronizar hero sessions todas paginas - gradiente verde padronizado (variaveis) - overlay com 3 gradientes radiais animados - mesmo padrao visual do Guia de Cursos - variaveis de cor verde atualizadas"

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
echo   SUCESSO! Hero sessions padronizadas!
echo ========================================
echo.
pause


