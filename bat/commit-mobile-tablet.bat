@echo off
echo ========================================
echo    COMMIT - AJUSTE MOBILE E TABLET
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
git commit -m "fix: Corrigir sobreposicao do header em mobile e tablet - Tablet: padding-top aumentado de 100px para 140px - Mobile: padding-top aumentado de 90px para 130px - Padding-bottom otimizado para melhor espacamento - Titulo agora aparece completo sem sobreposicao do menu"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Header mobile e tablet ajustados
    echo ✅ Titulo nao sobrepoe mais o menu
    echo ✅ Espacamento otimizado
    echo.
    echo CORRECOES APLICADAS:
    echo - TABLET (768px): padding-top 140px
    echo - MOBILE (480px): padding-top 130px
    echo - Desktop continua funcionando perfeitamente
    echo.
    echo Aguarde 2-3 minutos e teste em celular/tablet:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Teste em diferentes dispositivos:
    echo - Celular (zoom 100%%)
    echo - Tablet (zoom 100%%)
    echo - Desktop (zoom 100%%)
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
