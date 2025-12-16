@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Ajustes CSS Guia de Cursos
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivos...
git add .
git add -A

echo.
echo Criando commit...
git commit -m "style: ajustes CSS guia de cursos e padronizacao fontes - header menu estilizado padrao site principal - botao hero centralizado - tracinho dourado centralizado nos titulos - fontes Poppins e Playfair Display padronizadas - landing page atualizada com mesmas fontes"

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
echo   SUCESSO! Ajustes aplicados!
echo ========================================
echo.
pause

