@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Footer Landing Padrao Site
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "style: footer landing page padrao site principal - adicionado estilos footer completo guia-naturopatia.css - grid responsivo 4 colunas desktop - background verde gradiente com borda dourada - hover effects links e icones sociais - responsivo tablet 2 colunas - responsivo mobile 1 coluna centralizado"

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
echo   SUCESSO! Footer atualizado!
echo ========================================
echo.
pause
