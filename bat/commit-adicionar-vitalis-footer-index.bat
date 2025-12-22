@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   COMMIT - Adicionar Vitalis Blend no Footer
echo ========================================
echo.

cd /d "%~dp0.."

echo Adicionando arquivo atualizado...
git add index.html

echo.
echo Criando commit...
git commit -m "feat: adicionar Vitalis Blend no footer do site principal - link adicionado na secao Produtos do footer - caminhos corrigidos para usar /html/ - Vitalis Blend como 5o produto listado"

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
echo   SUCESSO! Vitalis Blend adicionado no footer!
echo ========================================
echo.
pause

