@echo off
echo ========================================
echo    CENTRALIZAR BOTAO DA SECAO CURSOS
echo ========================================
echo.

echo Verificando status...
git status

echo.
echo Adicionando arquivos...
git add .
git add -A

echo.
echo Fazendo commit...
git commit -m "design: Centralizar botao de acao da secao de cursos abaixo do quarto card"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Botao centralizado
    echo ✅ Deploy iniciado no Netlify
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Layout final:
    echo - 3 cursos em cima
    echo - 1 curso centralizado embaixo
    echo - Botao centralizado abaixo do curso 4
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
