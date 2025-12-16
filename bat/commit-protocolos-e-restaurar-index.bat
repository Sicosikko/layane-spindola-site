@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Protocolos + Restaurar Index
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "feat: pagina protocolos terapeuticos + restaurar index.html - nova pagina html/protocolos-terapeuticos.html - css dedicado protocolos-terapeuticos.css - hero stats beneficios faq footer - preco 997 ou 12x 103,11 - index.html restaurado do commit 8ebd97f"

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
echo   SUCESSO! Arquivos commitados!
echo ========================================
echo.
pause

