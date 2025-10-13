@echo off
echo ========================================
echo    FAZER PUSH DAS MUDANCAS
echo ========================================
echo.

echo Verificando status...
git status

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    PUSH REALIZADO COM SUCESSO!
    echo ========================================
    echo.
    echo ✅ Mudancas enviadas para GitHub
    echo ✅ Deploy automatico iniciado
    echo.
    echo Proximos passos:
    echo 1. Aguardar deploy (2-3 minutos)
    echo 2. Testar: https://layane-spindola-site.netlify.app/
    echo 3. Verificar layout dos cursos
    echo 4. Confirmar botao visivel
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO AO FAZER PUSH!
    echo ========================================
    echo.
    echo Verifique sua conexao com internet
    echo ou credenciais do Git
    echo.
)

echo Pressione qualquer tecla para continuar...
pause >nul
